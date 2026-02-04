
document.addEventListener('DOMContentLoaded', () => {
    const params = new URLSearchParams(window.location.search);
    const userId = params.get('id');

    if (!userId) {
        showError("Invalid access. No student specified.");
        return;
    }

    loadStudentDetails(userId);
});

async function loadStudentDetails(id) {
    try {
        const res = await fetch(`panel/students/details?id=${id}`);
        if (!res.ok) throw new Error("Failed to load student data");
        const data = await res.json();

        renderProfile(data, id);
    } catch (err) {
        console.error(err);
        showError(err.message);
    }
}

function showError(msg) {
    document.getElementById('loadingState').style.display = 'none';
    document.getElementById('errorState').style.display = 'block';
    document.getElementById('errorMessage').innerText = msg;
}

function renderProfile(data, userId) {
    const u = data.user;
    const ac = data.academic || {};
    const co = data.coCurricular || [];
    const ex = data.extracurricular || [];

    // Hide loader, show content
    document.getElementById('loadingState').style.display = 'none';
    document.getElementById('contentArea').style.display = 'block';

    // 1. Header
    document.getElementById('stName').innerText = u.name;
    document.getElementById('stRoll').innerText = `${u.roll_number} | ${u.department}`;
    const avatarEl = document.getElementById('stAvatar');
    if (u.profile_photo) {
        const photoUrl = u.profile_photo.startsWith('FILE:')
            ? `files/${u.profile_photo.replace('FILE:', '')}`
            : (u.profile_photo.startsWith('http') ? u.profile_photo : `files/${u.profile_photo}`);
        avatarEl.innerHTML = `<img src="${photoUrl}" alt="Profile" style="width:100%; height:100%; object-fit:cover;">`;
    } else {
        avatarEl.innerHTML = u.name.charAt(0).toUpperCase();
    }

    // 2. Evaluation Slider Logic
    // Only available score we have is from Top 20 list which is global...
    // Wait, the 'details' endpoint DOES NOT return the Final/Interview score currently.
    // We should ideally fetch the current interview score.
    // However, the Top 20 endpoint has it. 
    // Let's assume 0 for now or try to fetch it if we modify the backend.
    // *Self-Correction*: The user is in 'Top 20' list so they exist in final_scores.
    // We can assume fetch default 0 or we might need to update backend to send 'interview_score' in the details.

    setupEvaluationForm(userId);

    // 3. Academic
    document.getElementById('acCgpa').innerText = ac.cgpa || 'N/A';
    document.getElementById('acS1').innerText = ac.sgpa_sem1 || '-';
    document.getElementById('acS2').innerText = ac.sgpa_sem2 || '-';
    document.getElementById('acS3').innerText = ac.sgpa_sem3 || '-';
    document.getElementById('acS4').innerText = ac.sgpa_sem4 || '-';
    document.getElementById('acS5').innerText = ac.sgpa_sem5 || '-';
    document.getElementById('acS6').innerText = ac.sgpa_sem6 || '-';
    document.getElementById('acS7').innerText = ac.sgpa_sem7 || '-';
    document.getElementById('acS8').innerText = ac.sgpa_sem8 || '-';

    // 3.1 Honours/Minors Parsing
    const renderHonours = () => {
        const raw = ac.honours_minors;
        if (!raw || raw === 'No') return 'Not Pursuing';
        try {
            if (raw.trim().startsWith('{')) {
                const parsed = JSON.parse(raw);
                if (parsed.courses && Array.isArray(parsed.courses)) {
                    const list = parsed.courses.map(c => {
                        let link = '';
                        if (c.certificate_path) {
                            const path = c.certificate_path.startsWith('FILE:')
                                ? `files/${c.certificate_path.split(':')[1]}`
                                : `files/${c.certificate_path}`;
                            // Use window.openDocModal for consistency
                            link = ` <a href="#" onclick="window.openDocModal('${path}'); return false;" class="text-primary" style="margin-left:5px;"><i class="fa-solid fa-eye"></i></a>`;
                        }
                        return `<li><strong>${c.name}</strong>${link}</li>`;
                    }).join('');
                    return `<div style="margin-bottom:0.5rem;"><strong>${parsed.type}:</strong></div><ul style="padding-left:1.5rem; margin:0;">${list}</ul>`;
                }
            }
        } catch (e) { return raw; }
        return raw;
    };
    document.getElementById('acHonours').innerHTML = renderHonours();

    document.getElementById('acExams').innerText = ac.competitive_exams || 'None';
    document.getElementById('acProjects').innerText = ac.projects || 'None';

    const fileLink = (path, label) => {
        if (!path) return '<span style="color:#aaa; font-style:italic;">Not uploaded</span>';
        const url = `files/${path.replace('FILE:', '')}`;
        return `<a href="#" onclick="window.openDocModal('${url}'); return false;" class="file-link"><i class="fa-solid fa-eye"></i> ${label}</a>`;
    };

    document.getElementById('recLetterContainer').innerHTML = fileLink(u.recommendation_letter_path, "View Recommendation Letter");

    // 4. Co-Curricular
    const coContainer = document.getElementById('coContainer');
    if (co.length) {
        coContainer.innerHTML = `
        <table class="custom-table">
            <thead><tr><th>Title</th><th>Type</th><th>Score</th><th>Proof</th></tr></thead>
            <tbody>
                ${co.map(c => `<tr>
                    <td>${c.title}</td>
                    <td>${c.activity_type}</td>
                    <td>${c.score}</td>
                    <td>${fileLink(c.certificate_path, "View Certificate")}</td>
                </tr>`).join('')}
            </tbody>
        </table>`;
    } else {
        coContainer.innerHTML = `<p style="color:var(--text-muted); padding:1rem;">No co-curricular activities.</p>`;
    }

    // 5. Extracurricular
    const extraContainer = document.getElementById('extraContainer');
    if (ex.length) {
        extraContainer.innerHTML = `
        <table class="custom-table">
            <thead><tr><th>Title</th><th>Type</th><th>Score</th><th>Proof</th></tr></thead>
            <tbody>
                ${ex.map(e => `<tr>
                    <td>${e.title}</td>
                    <td>${e.activity_type}</td>
                    <td>${e.score}</td>
                    <td>${fileLink(e.certificate_path, "View Certificate")}</td>
                </tr>`).join('')}
            </tbody>
        </table>`;
    } else {
        extraContainer.innerHTML = `<p style="color:var(--text-muted); padding:1rem;">No extracurricular activities.</p>`;
    }
}

function setupEvaluationForm(userId) {
    const slider = document.getElementById('evalSlider');
    const display = document.getElementById('evalDisplay');
    const btn = document.getElementById('saveScoreBtn');

    slider.addEventListener('input', () => display.innerText = slider.value);

    btn.addEventListener('click', async () => {
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
                btn.innerHTML = `<i class="fa-solid fa-check"></i> Saved Successfully!`;
                btn.style.background = '#10b981';

                // Redirect back to dashboard after short delay
                setTimeout(() => {
                    window.location.href = 'panel-dashboard';
                }, 1000);
            } else {
                throw new Error("Save failed");
            }
        } catch (err) {
            alert("Error saving score: " + err.message);
            btn.innerHTML = originalText;
            btn.disabled = false;
        }
    });
}

// Global Modal Logic
window.openDocModal = (url) => {
    const modal = document.getElementById('docPreviewModal');
    const frame = document.getElementById('docFrame');
    frame.src = url;
    modal.style.display = 'flex';
};

window.closeDocModal = () => {
    document.getElementById('docPreviewModal').style.display = 'none';
    document.getElementById('docFrame').src = '';
};
