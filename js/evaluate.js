document.addEventListener('DOMContentLoaded', () => {
    // URL Params
    const urlParams = new URLSearchParams(window.location.search);
    const userId = urlParams.get('id');

    if (!userId) {
        alert('No student selected');
        window.location.href = 'admin-dashboard.php';
        return;
    }

    // Load Student Data
    loadStudentDetails(userId);

    async function loadStudentDetails(id) {
        try {
            // Use header loading indicator
            const headerLoader = document.getElementById('studentName');
            if (headerLoader) headerLoader.innerText = "Fetching data...";

            const res = await fetch(`admin/students/${id}`);
            if (!res.ok) {
                throw new Error(`API Error: ${res.status} ${res.statusText}`);
            }
            const data = await res.json();

            if (!data || !data.user) {
                throw new Error('Invalid data: User record missing');
            }

            // Populate Header
            document.getElementById('studentName').innerText = data.user.name || 'Unknown';
            document.getElementById('studentMeta').innerText = `${data.user.roll_number || '-'} | ${data.user.department || '-'}`;
            document.getElementById('evalUserId').value = data.user.id;

            // Set Avatar
            const avatarEl = document.getElementById('studentAvatar');
            if (avatarEl) {
                if (data.user.profile_photo) {
                    const photoUrl = data.user.profile_photo.startsWith('FILE:')
                        ? `files/${data.user.profile_photo.replace('FILE:', '')}`
                        : (data.user.profile_photo.startsWith('http') ? data.user.profile_photo : `files/${data.user.profile_photo}`);
                    avatarEl.innerHTML = `<img src="${photoUrl}" alt="Profile" style="width:100%; height:100%; object-fit:cover;" onerror="this.onerror=null;this.src='https://cdn-icons-png.flaticon.com/512/1077/1077114.png';">`;
                } else {
                    const initials = (data.user.name || 'S').split(' ').map(n => n[0]).join('').substring(0, 2).toUpperCase();
                    avatarEl.innerHTML = `<div style="font-weight:bold; color:var(--primary-color);">${initials}</div>`;
                }
            }

            // Render Submissions (Left Column)
            try {
                renderSubmissions(data);
            } catch (renderErr) {
                console.error(renderErr);
                document.getElementById('submissionDetails').innerHTML = `<div class="alert alert-danger">Error rendering details: ${renderErr.message}</div>`;
            }

            // Pre-fill Scores (Right Column)
            try {
                prefillScores(data);
            } catch (scoreErr) {
                console.error(scoreErr);
            }

            // Recalculate totals
            updateCategoryTotals();

        } catch (error) {
            console.error("Load Error:", error);
            // Show error in the main container so user sees it
            const errorHtml = `<div style="text-align:center; padding:2rem; color:#dc2626;">
                <i class="fa-solid fa-triangle-exclamation fa-2x"></i>
                <h3>Failed to load student</h3>
                <p>${error.message}</p>
                <button onclick="window.location.reload()" class="btn-secondary" style="margin-top:1rem;">Retry</button>
            </div>`;

            const detailsEl = document.getElementById('submissionDetails');
            if (detailsEl) detailsEl.innerHTML = errorHtml;

            // Also update header
            document.getElementById('studentName').innerText = "Error";
            document.getElementById('studentMeta').innerText = "Failed to load";
        }
    }

    function renderSubmissions(data) {
        // Defensive checks
        const academic = data.academic || {};
        const getSGPA = (i) => academic[`sgpa_sem${i}`] || '-';
        const safeArr = (arr) => Array.isArray(arr) ? arr : [];

        let content = `<h4>Academic Performance</h4>
            <div style="display:grid; grid-template-columns: repeat(4, 1fr); gap: 10px; margin-bottom: 20px;">
                ${[1, 2, 3, 4, 5, 6, 7, 8].map(i => `
                    <div class="list-item-card">
                        <small>Sem ${i}</small>
                        <p style="margin:0; font-weight:bold;">${getSGPA(i)}</p>
                    </div>
                `).join('')}
            </div>`;

        content += `<div class="list-item-card mb-4">
            <p><strong>Overall CGPA:</strong> ${academic.cgpa || 'N/A'}</p>
            <p><strong>Projects:</strong> ${academic.projects || 'N/A'}</p>
             <div>
                <strong>Honours/Minors:</strong> 
                ${(() => {
                const raw = academic.honours_minors;
                if (!raw || raw === 'No') return 'N/A';
                try {
                    if (raw.trim().startsWith('{')) {
                        const parsed = JSON.parse(raw);
                        if (parsed.courses && Array.isArray(parsed.courses)) {
                            return `<strong>${parsed.type || 'Honours'}:</strong><br>` + parsed.courses.map(c => {
                                let link = '';
                                if (c.certificate_path) {
                                    const path = c.certificate_path.startsWith('FILE:') ? `files/${c.certificate_path.split(':')[1]}` : (c.certificate_path.startsWith('/') ? c.certificate_path.substring(1) : `uploads/${c.certificate_path}`);
                                    link = `<a href="#" onclick="window.openDocModal('${path}'); return false;" class="text-primary"><i class="fa-solid fa-eye"></i></a>`;
                                }
                                return `- ${c.name || 'Course'} ${link}`;
                            }).join('<br>');
                        }
                    }
                } catch (e) { return raw; }
                return raw;
            })()}
            </div>
            <p><strong>Competitive Exams:</strong> ${academic.competitive_exams || 'N/A'}</p>
        </div>`;

        // Co-Curricular
        const coItems = safeArr(data.coCurricular);
        content += `<h4 class="mt-4">Co-Curricular Activities (${coItems.length})</h4>`;
        if (coItems.length > 0) {
            coItems.forEach(c => {
                const certLink = c.certificate_path
                    ? (c.certificate_path.startsWith('FILE:') ? `files/${c.certificate_path.split(':')[1]}` : `files/${c.certificate_path}`)
                    : null;
                content += `<div class="list-item-card" style="display: flex; justify-content: space-between; align-items: center;">
                    <div>
                        <p style="margin:0; font-weight:bold;">${c.title || 'Untitled'} <span class="text-muted" style="font-weight:normal;">(${c.activity_type || 'Activity'})</span></p>
                        ${certLink ? `<a href="#" onclick="window.openDocModal('${certLink}'); return false;" class="text-primary" style="font-size:0.85rem;"><i class="fa-solid fa-eye"></i> View Certificate</a>` : '<span class="text-muted" style="font-size:0.85rem;">No Certificate</span>'}
                    </div>
                    <div style="display: flex; align-items: center; gap: 10px;">
                        <label style="font-size: 0.8rem;">Marks:</label>
                        <input type="number" step="0.1" class="item-score co-score" data-id="${c.id}" value="${c.score || 0}" style="width: 70px; padding: 5px; border-radius:5px; border:1px solid #ddd;">
                    </div>
                </div>`;
            });
        } else {
            content += `<p class="text-muted">No co-curricular records.</p>`;
        }

        // Extracurricular
        const extraItems = safeArr(data.extracurricular);
        content += `<h4 class="mt-4">Extracurricular Activities (${extraItems.length})</h4>`;
        if (extraItems.length > 0) {
            extraItems.forEach(c => {
                const certLink = c.certificate_path
                    ? (c.certificate_path.startsWith('FILE:') ? `files/${c.certificate_path.split(':')[1]}` : `files/${c.certificate_path}`)
                    : null;
                content += `<div class="list-item-card" style="display: flex; justify-content: space-between; align-items: center;">
                    <div>
                        <p style="margin:0; font-weight:bold;">${c.title || 'Untitled'} <span class="text-muted" style="font-weight:normal;">(${c.level || 'Level'})</span></p>
                         ${certLink ? `<a href="#" onclick="window.openDocModal('${certLink}'); return false;" class="text-primary" style="font-size:0.85rem;"><i class="fa-solid fa-eye"></i> View Certificate</a>` : '<span class="text-muted" style="font-size:0.85rem;">No Certificate</span>'}
                    </div>
                    <div style="display: flex; align-items: center; gap: 10px;">
                        <label style="font-size: 0.8rem;">Marks:</label>
                        <input type="number" step="0.1" class="item-score extra-score" data-id="${c.id}" value="${c.score || 0}" style="width: 70px; padding: 5px; border-radius:5px; border:1px solid #ddd;">
                    </div>
                </div>`;
            });
        } else {
            content += `<p class="text-muted">No extracurricular records.</p>`;
        }

        // Recommendation
        if (data.user.recommendation_letter_path) {
            const recPath = `files/${data.user.recommendation_letter_path.replace('FILE:', '')}`;
            content += `<h4 class="mt-4">Recommendation Letter</h4>
             <div class="list-item-card">
                 <p style="margin-bottom:0.5rem;">Uploaded Document:</p>
                 <a href="#" onclick="window.openDocModal('${recPath}'); return false;" class="text-primary btn-outline" style="text-decoration:none; display:inline-flex; align-items:center; gap:0.5rem; padding: 5px 10px; border:1px solid var(--primary-color); border-radius:5px;">
                    <i class="fa-solid fa-file-alt"></i> View Recommendation Letter
                 </a>
             </div>`;
        }

        // Declaration
        if (data.user.declaration_place) {
            content += `<h4 class="mt-4">Declaration</h4>
             <div class="list-item-card">
                <p><strong>Place:</strong> ${data.user.declaration_place}</p>
                <p><strong>Date:</strong> ${data.user.declaration_date}</p>
                <div style="margin-top:10px;">
                    <strong>Signature:</strong><br>
                    ${data.user.signature_path ?
                    `<img src="files/${data.user.signature_path.replace('FILE:', '')}" alt="Signature" style="max-height:80px; border:1px solid #ddd; padding:5px; margin-top:5px;">`
                    : '<span class="text-muted">No signature uploaded</span>'}
                </div>
             </div>`;
        }

        // Inject Content
        const detailsEl = document.getElementById('submissionDetails');
        if (detailsEl) {
            detailsEl.innerHTML = content;
        }

        // Attach Listeners
        document.querySelectorAll('.item-score').forEach(input => {
            input.addEventListener('input', updateCategoryTotals);
        });
    }

    function updateCategoryTotals() {
        let coTotal = 0;
        document.querySelectorAll('.co-score').forEach(i => coTotal += parseFloat(i.value) || 0);

        // Show sum of individual items
        document.getElementById('valCoSum').innerText = coTotal.toFixed(1);

        // Cap total at 15
        const cappedCoTotal = Math.min(coTotal, 15);
        document.getElementById('scCo').value = cappedCoTotal;
        document.getElementById('valCo').innerText = cappedCoTotal.toFixed(1);


        let extraTotal = 0;
        document.querySelectorAll('.extra-score').forEach(i => extraTotal += parseFloat(i.value) || 0);

        // Show sum of individual items
        document.getElementById('valExtraSum').innerText = extraTotal.toFixed(1);

        // Cap total at 15
        const cappedExtraTotal = Math.min(extraTotal, 15);
        document.getElementById('scExtra').value = cappedExtraTotal;
        document.getElementById('valExtra').innerText = cappedExtraTotal.toFixed(1);
    }

    function prefillScores(data) {
        const setScore = (id, valId, value) => {
            const val = value || 0;
            const el = document.getElementById(id);
            if (el) el.value = val;
            const valEl = document.getElementById(valId);
            if (valEl) valEl.innerText = val;
        };

        const scores = data.finalScore || {};
        const acad = data.academic || {};

        // Use academic table scores if available, else derive from final_scores, else 0
        setScore('scAcademicCGPA', 'valAcademicCGPA', acad.cgpa_score || 0);
        setScore('scAcademicHonours', 'valAcademicHonours', acad.honours_score || 0);
        setScore('scAcademicExams', 'valAcademicExams', acad.exams_score || 0);
        setScore('scCo', 'valCo', scores.co_curricular_score || 0);
        setScore('scExtra', 'valExtra', scores.extracurricular_score || 0);
    }

    // Submit Scores Handler
    document.getElementById('scoreForm').addEventListener('submit', async (e) => {
        e.preventDefault();
        const submitBtn = e.target.querySelector('button[type="submit"]');
        const originalText = submitBtn.innerHTML;
        submitBtn.disabled = true;
        submitBtn.innerHTML = '<i class="fa-solid fa-spinner fa-spin"></i> Saving...';

        try {
            const coScores = [];
            document.querySelectorAll('.co-score').forEach(i => coScores.push({ id: i.dataset.id, score: parseFloat(i.value) || 0 }));

            const extraScores = [];
            document.querySelectorAll('.extra-score').forEach(i => extraScores.push({ id: i.dataset.id, score: parseFloat(i.value) || 0 }));

            const data = {
                user_id: document.getElementById('evalUserId').value,
                academic_cgpa_score: document.getElementById('scAcademicCGPA').value,
                academic_honours_score: document.getElementById('scAcademicHonours').value,
                academic_exams_score: document.getElementById('scAcademicExams').value,
                co_curricular_score: document.getElementById('scCo').value,
                extracurricular_score: document.getElementById('scExtra').value,
                co_scores: coScores,
                extra_scores: extraScores
            };

            const res = await fetch('admin/evaluate', {
                method: 'POST',
                headers: { 'Content-Type': 'application/json' },
                body: JSON.stringify(data)
            });

            if (res.ok) {
                alert('Evaluation Saved Successfully!');
                window.location.href = 'admin-dashboard.php';
            } else {
                const err = await res.json();
                alert('Error: ' + (err.error || 'Unknown error'));
            }
        } catch (err) {
            console.error(err);
            alert('Failed to save scores: ' + err.message);
        } finally {
            submitBtn.disabled = false;
            submitBtn.innerHTML = originalText;
        }
    });

});

// Global Modal Logic need to be outside
window.openDocModal = (url) => {
    const modal = document.getElementById('docPreviewModal');
    const frame = document.getElementById('docFrame');
    if (modal && frame) {
        frame.src = url;
        modal.style.display = 'flex';
    } else {
        console.error("Modal elements not found");
        window.open(url, '_blank'); // Fallback
    }
};

window.closeDocModal = () => {
    const modal = document.getElementById('docPreviewModal');
    const frame = document.getElementById('docFrame');
    if (modal) modal.style.display = 'none';
    if (frame) frame.src = '';
};
