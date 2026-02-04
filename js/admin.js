document.addEventListener('DOMContentLoaded', () => {
    // Global Chart.js Defaults
    if (window.Chart) {
        Chart.defaults.color = '#1e293b';
        Chart.defaults.font.family = "'Outfit', sans-serif";
        Chart.defaults.responsive = true;
        Chart.defaults.maintainAspectRatio = false;
    }

    // Determine current page
    const overviewContainer = document.getElementById('overviewSection');
    const studentsContainer = document.getElementById('studentList');
    const performanceContainer = document.getElementById('leaderboardBody');

    // Logout
    const logoutBtn = document.getElementById('logoutBtn');
    if (logoutBtn) {
        logoutBtn.addEventListener('click', async () => {
            await fetch('auth/logout', { method: 'POST' });
            window.location.href = 'index.php';
        });
    }

    // Chart instances
    let progressChart, scoreChart, branchChart;

    // Data Loaders
    async function refreshDashboard() {
        try {
            const [statsRes, leaderboardRes] = await Promise.all([
                fetch('admin/stats'),
                fetch('admin/leaderboard')
            ]);

            const stats = await statsRes.json();
            const leaderboard = await leaderboardRes.json();

            // Update Stat Cards
            const statTotal = document.getElementById('statTotal');
            const statEvaluated = document.getElementById('statEvaluated');
            const statTop = document.getElementById('statTop');

            if (statTotal) statTotal.innerText = stats.totalStudents ?? 0;
            if (statEvaluated) statEvaluated.innerText = stats.evaluated ?? 0;
            if (statTop) statTop.innerText = stats.topScore ?? 0;

            // Update Charts
            updateCharts(stats, leaderboard);
        } catch (err) {
            console.error('Error refreshing dashboard:', err);
        }
    }

    function updateCharts(stats, leaderboard) {
        const progressCanvas = document.getElementById('progressChart');
        const scoreCanvas = document.getElementById('scoreChart');
        const branchCanvas = document.getElementById('branchChart');

        // 1. Evaluation Progress (Doughnut)
        if (progressCanvas) {
            if (progressChart) progressChart.destroy();
            progressChart = new Chart(progressCanvas.getContext('2d'), {
                type: 'doughnut',
                data: {
                    labels: ['Evaluated', 'Pending'],
                    datasets: [{
                        data: [stats.evaluated || 0, (stats.totalStudents || 0) - (stats.evaluated || 0)],
                        backgroundColor: ['#6366f1', '#e2e8f0'],
                        borderWidth: 0
                    }]
                },
                options: { cutout: '70%', plugins: { legend: { position: 'bottom' } } }
            });
        }

        // 2. Score Distribution (Line/Scatter)
        if (scoreCanvas) {
            if (scoreChart) scoreChart.destroy();
            const top10 = leaderboard.slice(0, 10);
            scoreChart = new Chart(scoreCanvas.getContext('2d'), {
                type: 'line',
                data: {
                    labels: top10.map((_, i) => `S${i + 1}`),
                    datasets: [{
                        label: 'Top Scores',
                        data: top10.map(s => s.total_score),
                        backgroundColor: '#6366f1',
                        borderColor: '#6366f1',
                        pointRadius: 6,
                        showLine: false
                    }]
                },
                options: {
                    scales: { y: { beginAtZero: true, max: 100 }, x: { grid: { display: false } } },
                    plugins: { legend: { display: false } }
                }
            });
        }

        // 3. Branch Distribution (Bar)
        if (branchCanvas) {
            if (branchChart) branchChart.destroy();
            const branchData = (stats.branches && stats.branches.length > 0) ? stats.branches : [{ department: 'No Data', count: 0 }];
            branchChart = new Chart(branchCanvas.getContext('2d'), {
                type: 'bar',
                data: {
                    labels: branchData.map(b => b.department),
                    datasets: [{
                        label: 'Students',
                        data: branchData.map(b => b.count),
                        backgroundColor: '#8b5cf6',
                        borderRadius: 6
                    }]
                },
                options: {
                    indexAxis: 'y',
                    scales: { x: { beginAtZero: true, ticks: { stepSize: 1 } }, y: { grid: { display: false } } },
                    plugins: { legend: { display: false } }
                }
            });
        }

        // Force layout check
        window.dispatchEvent(new Event('resize'));
    }

    // Initialization
    if (overviewContainer) {
        refreshDashboard();
    } else if (studentsContainer) {
        loadStudents();
    } else if (performanceContainer) {
        loadLeaderboardTable();
    }

    // Students Page Logic
    let allStudents = [];
    async function loadStudents() {
        const res = await fetch('admin/students');
        allStudents = await res.json();
        renderStudentList(allStudents);
    }

    function renderStudentList(students) {
        const list = document.getElementById('studentList');
        if (!list) return;
        if (students.length === 0) {
            list.innerHTML = '<p style="padding:1rem; color:var(--text-muted); text-align:center;">No students found.</p>';
            return;
        }
        list.innerHTML = students.map(s => `
            <div class="student-item" onclick="viewStudent(${s.id})">
                <div style="display: flex; align-items: center; gap: 0.75rem;">
                    <span>${s.name} (${s.roll_number})</span>
                    ${s.is_evaluated ? '<span style="background: #10b981; color: white; font-size: 0.7rem; padding: 2px 8px; border-radius: 20px; font-weight: 600;">Evaluated</span>' : ''}
                </div>
                <small>${s.department}</small>
            </div>
        `).join('');
    }

    // Performance Page Logic
    async function loadLeaderboardTable() {
        const res = await fetch('admin/leaderboard');
        const data = await res.json();
        const tbody = document.getElementById('leaderboardBody');
        if (tbody) {
            tbody.innerHTML = data.map((s, i) => `
                <tr>
                    <td>${i + 1}</td>
                    <td>${s.name}</td>
                    <td>${s.department}</td>
                    <td>${s.roll_number}</td>
                    <td><strong>${s.total_score}</strong></td>
                </tr>
            `).join('');
        }
    }

    // Global helpers
    window.viewStudent = (id) => { window.location.href = `evaluate-student.php?id=${id}`; };

    // Search
    const searchInput = document.getElementById('studentSearch');
    if (searchInput) {
        searchInput.addEventListener('input', (e) => {
            const term = e.target.value.toLowerCase();
            const filtered = allStudents.filter(s =>
                s.name.toLowerCase().includes(term) ||
                s.roll_number.toLowerCase().includes(term) ||
                s.department.toLowerCase().includes(term)
            );
            renderStudentList(filtered);
        });
    }
});
