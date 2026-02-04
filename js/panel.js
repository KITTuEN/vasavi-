
let studentsData = [];

document.addEventListener('DOMContentLoaded', () => {
    loadTop20Students();
    setupSearch();
});

async function loadTop20Students() {
    const tableBody = document.getElementById('panelTableBody');
    try {
        const res = await fetch('panel/students/top20');
        if (!res.ok) throw new Error('Failed to fetch students');

        studentsData = await res.json();
        renderTable(studentsData);
    } catch (err) {
        console.error(err);
        tableBody.innerHTML = `<tr><td colspan="9" style="text-align:center; color:red; padding:2rem;">Failed to load data</td></tr>`;
    }
}

function renderTable(data) {
    const tableBody = document.getElementById('panelTableBody');
    if (data.length === 0) {
        tableBody.innerHTML = `<tr><td colspan="9" style="text-align:center; padding:2rem; color:var(--text-muted);">No qualified students found yet.</td></tr>`;
        return;
    }

    tableBody.innerHTML = data.map(s => `
        <tr>
            <td><span style="font-family:monospace; background:#f1f5f9; padding:0.2rem 0.5rem; border-radius:4px;">${s.roll_number}</span></td>
            <td>
                <div style="display:flex; align-items:center; gap:0.8rem;">
                    <div style="width:32px; height:32px; border-radius:50%; background:#e2e8f0; overflow:hidden; display:flex; align-items:center; justify-content:center; font-weight:bold; color:#64748b; font-size:0.8rem;">
                        ${s.profile_photo ? `<img src="files/${s.profile_photo.replace('FILE:', '')}" style="width:100%; height:100%; object-fit:cover;">` : s.name.charAt(0)}
                    </div>
                    <strong>${s.name}</strong>
                </div>
            </td>
            <td>${s.department}</td>
            <td>${parseFloat(s.academic_score || 0).toFixed(1)}</td>
            <td>${parseFloat(s.co_curricular_score || 0).toFixed(1)}</td>
            <td>${parseFloat(s.extracurricular_score || 0).toFixed(1)}</td>
            <td><span style="font-weight:bold; color:var(--primary-color);">${parseFloat(s.interview_score || 0).toFixed(1)}</span></td>
            <td><span class="badge" style="background:#e0f2fe; color:#0369a1; padding:0.3rem 0.6rem; border-radius:20px; font-weight:600;">${parseFloat(s.total_score || 0).toFixed(1)}</span></td>
            <td>
                <button onclick="window.openEvaluation(${s.id})" class="btn-action">
                    <i class="fa-solid fa-pen-to-square"></i> Evaluate
                </button>
            </td>
        </tr>
    `).join('');
}

function setupSearch() {
    const input = document.getElementById('panelSearch');
    input.addEventListener('input', (e) => {
        const term = e.target.value.toLowerCase();
        const filtered = studentsData.filter(s =>
            s.name.toLowerCase().includes(term) ||
            s.roll_number.toLowerCase().includes(term) ||
            s.department.toLowerCase().includes(term)
        );
        renderTable(filtered);
    });
}

// Modal & Evaluation Logic
window.closeModal = () => {
    // Legacy Modal support mostly removed
};

window.openEvaluation = (id) => {
    // Redirect to separate evaluation page
    window.location.href = `panel-evaluate?id=${id}`;
};

function renderEvaluationView(data, container, userId) {
    const u = data.user;
    const ac = data.academic || {};
    const co = data.coCurricular || [];
    const ex = data.extracurricular || [];

    // Check existing interview score from the summary list
    const currentStudent = studentsData.find(s => s.id == userId);
    const existingScore = currentStudent ? (currentStudent.interview_score || 0) : 0;

    const fileLink = (path, label) => path ? `<a href="files/${path.replace('FILE:', '')}" target="_blank" class="file-link"><i class="fa-solid fa-file-pdf"></i> ${label}</a>` : '<span style="color:#aaa; font-size:0.9rem;">Not uploaded</span>';

    container.innerHTML = `
        <!-- Evaluation Section -->
        <div class="evaluation-box">
            <h3 style="margin-top:0; color:var(--primary-color); border-bottom:1px solid #e2e8f0; padding-bottom:0.5rem;">Interview Assessment</h3>
            
            <div class="score-slider-container">
                <span style="font-weight:600; color:var(--text-muted);">Score (0 - 5):</span>
                <input type="range" min="0" max="5" step="0.5" value="${existingScore}" class="score-slider" id="evalSlider">
                <div class="score-display" id="evalDisplay">${existingScore}</div>
            </div>
            
            <div style="display:flex; justify-content:flex-end;">
                <button id="saveScoreBtn" class="btn-action" style="padding:0.8rem 2rem; font-size:1rem;">
                    <i class="fa-solid fa-save"></i> Save Interview Score
                </button>
            </div>
        </div>

        <!-- Student Details Below -->
        <h4 class="section-title"><i class="fa-solid fa-book"></i> Academic Performance</h4>
        <div class="info-grid">
             <div class="info-card"><label>CGPA</label><div class="value">${ac.cgpa || 'N/A'}</div></div>
             <div class="info-card"><label>SGPA (Sem 1)</label><div class="value">${ac.sgpa_sem1 || '-'}</div></div>
             <div class="info-card"><label>SGPA (Sem 2)</label><div class="value">${ac.sgpa_sem2 || '-'}</div></div>
             <div class="info-card"><label>SGPA (Sem 3)</label><div class="value">${ac.sgpa_sem3 || '-'}</div></div>
             <div class="info-card"><label>SGPA (Sem 4)</label><div class="value">${ac.sgpa_sem4 || '-'}</div></div>
        </div>
        
        <div style="margin-top:1rem;">
             ${fileLink(u.recommendation_letter_path, "Recommendation Letter")}
        </div>

        <h4 class="section-title"><i class="fa-solid fa-medal"></i> Co-Curricular Activities</h4>
        ${co.length ? `
        <table class="custom-table" style="border:1px solid var(--border-color);">
            <thead><tr><th>Title</th><th>Type</th><th>Total Score</th><th>Proof</th></tr></thead>
            <tbody>
                ${co.map(c => `<tr>
                    <td>${c.title}</td>
                    <td>${c.activity_type}</td>
                    <td>${c.score}</td>
                    <td>${fileLink(c.certificate_path, "View")}</td>
                </tr>`).join('')}
            </tbody>
        </table>` : '<p style="color:var(--text-muted); font-style:italic;">No activities recorded.</p>'}

        <h4 class="section-title"><i class="fa-solid fa-futbol"></i> Extracurricular Activities</h4>
        ${ex.length ? `
        <table class="custom-table" style="border:1px solid var(--border-color);">
            <thead><tr><th>Title</th><th>Type</th><th>Total Score</th><th>Proof</th></tr></thead>
            <tbody>
                ${ex.map(e => `<tr>
                    <td>${e.title}</td>
                    <td>${e.activity_type}</td>
                    <td>${e.score}</td>
                    <td>${fileLink(e.certificate_path, "View")}</td>
                </tr>`).join('')}
            </tbody>
        </table>` : '<p style="color:var(--text-muted); font-style:italic;">No activities recorded.</p>'}
    `;

    // Bind Sidebar Logic
    const slider = document.getElementById('evalSlider');
    const display = document.getElementById('evalDisplay');
    slider.addEventListener('input', () => display.innerText = slider.value);

    document.getElementById('saveScoreBtn').addEventListener('click', async () => {
        const btn = document.getElementById('saveScoreBtn');
        const originalText = btn.innerHTML;
        btn.innerHTML = `<i class="fa-solid fa-spinner fa-spin"></i> Saving...`;
        btn.disabled = true;

        try {
            const res = await fetch('panel/evaluate/interview', {
                method: 'POST',
                headers: { 'Content-Type': 'application/json' },
                body: JSON.stringify({ user_id: userId, interview_score: slider.value })
            });

            if (res.ok) {
                const respData = await res.json();

                // Update local data
                const stIndex = studentsData.findIndex(s => s.id == userId);
                if (stIndex !== -1) {
                    studentsData[stIndex].interview_score = slider.value;
                    studentsData[stIndex].total_score = respData.total_score;
                    renderTable(studentsData); // Re-render table background
                }

                btn.innerHTML = `<i class="fa-solid fa-check"></i> Saved!`;
                btn.style.background = '#10b981';
                setTimeout(() => {
                    closeModal(); // Close modal nicely
                }, 1000);
            } else {
                throw new Error("Save failed");
            }
        } catch (err) {
            alert("Error saving score");
            btn.innerHTML = originalText;
            btn.disabled = false;
        }
    });
}
