
document.addEventListener('DOMContentLoaded', () => {
    // Logout
    const logoutBtn = document.getElementById('logoutBtn');
    if (logoutBtn) {
        logoutBtn.addEventListener('click', async () => {
            await fetch('auth/logout', { method: 'POST' });
            window.location.href = 'index.php';
        });
    }

    loadStudents();
});

async function loadStudents() {
    const list = document.getElementById('studentList');
    const loading = document.getElementById('loading');

    try {
        const res = await fetch('panel/students');
        const students = await res.json();

        loading.style.display = 'none';

        if (!students || students.length === 0) {
            list.innerHTML = `
                <div class="empty-state">
                    <i class="fa-solid fa-clipboard-check"></i>
                    <h3>No students assigned yet</h3>
                    <p>When the Super Admin assigns students to your panel, they will appear here.</p>
                </div>
            `;
            return;
        }

        list.innerHTML = students.map(s => {
            const isEvaluated = s.is_evaluated > 0;
            const badge = isEvaluated
                ? '<span style="background: #10b981; color: white; font-size: 0.75rem; padding: 4px 10px; border-radius: 20px; font-weight: 600;">Evaluated</span>'
                : '<span style="background: #f59e0b; color: white; font-size: 0.75rem; padding: 4px 10px; border-radius: 20px; font-weight: 600;">Pending</span>';

            return `
                <div class="student-item" onclick="window.location.href='panel-evaluate.php?id=${s.id}'">
                    <div style="display: flex; align-items: center; gap: 1rem;">
                        <div style="width: 40px; height: 40px; background: #e2e8f0; border-radius: 50%; display: flex; align-items: center; justify-content: center; font-weight: 700; color: #64748b;">
                            ${s.name.charAt(0)}
                        </div>
                        <div>
                            <div style="font-weight: 600; font-size: 1.05rem; color: var(--text-dark);">${s.name}</div>
                            <div style="font-size: 0.9rem; color: var(--text-muted);">${s.roll_number} • ${s.department}</div>
                        </div>
                    </div>
                    ${badge}
                </div>
            `;
        }).join('');

    } catch (err) {
        console.error(err);
        loading.style.display = 'none';
        list.innerHTML = '<p style="color:red; text-align:center;">Failed to load students.</p>';
    }
}
