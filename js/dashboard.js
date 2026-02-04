document.addEventListener('DOMContentLoaded', () => {
    // Logout
    const logoutBtn = document.getElementById('logoutBtn');
    if (logoutBtn) {
        logoutBtn.addEventListener('click', async () => {
            await fetch('auth/logout', { method: 'POST' });
            window.location.href = 'index.php';
        });
    }

    // Sidebar Toggle (Mobile)
    const hamburgerBtn = document.getElementById('hamburgerBtn');
    const sidebar = document.querySelector('.sidebar');
    const mainContent = document.querySelector('.main-content');

    if (hamburgerBtn && sidebar) {
        hamburgerBtn.addEventListener('click', (e) => {
            e.stopPropagation(); // Prevent immediate closing
            sidebar.classList.toggle('active');
        });

        // Close sidebar when clicking outside
        document.addEventListener('click', (e) => {
            if (window.innerWidth <= 1024 &&
                sidebar.classList.contains('active') &&
                !sidebar.contains(e.target) &&
                e.target !== hamburgerBtn) {
                sidebar.classList.remove('active');
            }
        });
    }


    // Tabs - Sidebar Navigation
    const tabs = document.querySelectorAll('.tab-btn');
    const contents = document.querySelectorAll('.tab-content');

    tabs.forEach(tab => {
        tab.addEventListener('click', () => {
            tabs.forEach(t => t.classList.remove('active'));
            contents.forEach(c => c.classList.remove('active'));

            tab.classList.add('active');
            const target = document.getElementById(tab.dataset.tab);
            if (target) target.classList.add('active');
        });
    });

    // --- DATA LOADING ORCHESTRATION ---
    let isAppSubmitted = false;

    async function initDashboard() {
        await loadProfile();
        await Promise.all([loadAllData(), loadAcademic()]);

        if (isAppSubmitted) {
            disableEditing();
        }
    }

    // --- PROFILE HANDLING ---
    async function loadProfile() {
        try {
            const res = await fetch('student/profile');
            if (!res.ok) {
                const debugEl = document.getElementById('debug-info');
                if (debugEl) debugEl.innerText = 'Profile Fetch Failed';
                return;
            }
            const data = await res.json();

            // Check submission status
            if (data.is_submitted === 1) {
                isAppSubmitted = true;
                // Defer disableEditing to initDashboard to ensure all dynamic fields are loaded first
            }

            // DEBUG: Show who is logged in
            let debugMsg = `Logged in as: ${data.email || 'Unknown'}`;
            if (!data.name) debugMsg += ' (Name missing)';

            // Create debug element if not exists
            let debugEl = document.getElementById('debug-info');
            if (debugEl) {
                // debugEl.style = "background: #ffeeba; ..."; // Removed inline, kept simple text or add class if needed
                debugEl.className = 'alert alert-info'; // Assuming generic alert class or just text
                debugEl.innerText = debugMsg;
                debugEl.style.display = 'none'; // Hide debug info in production/redesign usually
            }

            // Populate Inline Inputs
            const setVal = (id, val) => {
                const el = document.getElementById(id);
                if (el) el.value = val || '';
            };
            setVal('pName', data.name);
            setVal('pDept', data.department);
            setVal('pRoll', data.roll_number);
            setVal('pContact', data.contact_number);
            setVal('pEmail', data.email);
            setVal('pBio', data.bio);

            // Set Photo
            const photoPrev = document.getElementById('pPhotoPreview');
            if (photoPrev && data.profile_photo) {
                photoPrev.src = 'files/' + data.profile_photo.replace('FILE:', '');
            }

            // Update char count on load
            const bioField = document.getElementById('pBio');
            const bioCount = document.getElementById('bioCharCount');
            if (bioField && bioCount) {
                bioCount.innerText = bioField.value.length;
                bioCount.innerText = bioField.value.length;
            }

            // Recommendation Letter
            if (data.recommendation_letter_path) {
                const recLinkDiv = document.getElementById('currentRecLetter');
                const recAnchor = document.getElementById('recFileLink');
                if (recLinkDiv && recAnchor) {
                    recLinkDiv.style.display = 'block';
                    recAnchor.href = 'files/' + data.recommendation_letter_path.replace('FILE:', '');
                }
            }

        } catch (e) {
            console.error('Error loading profile', e);
            let debugEl = document.getElementById('debug-info');
            if (debugEl) debugEl.innerText = `Error: ${e.message}`;
        }
    }

    function disableEditing() {
        // Disable all inputs, textareas, select
        // We use requestAnimationFrame to ensure DOM updates from other async functions are caught if called immediately
        requestAnimationFrame(() => {
            document.querySelectorAll('input, textarea, select').forEach(el => el.disabled = true);

            // Hide all "Add", "Save", "Submit" buttons
            const buttonsToHide = [
                'saveProfileBtn', 'finalSubmitBtn',
                'addCourseBtn', 'addExamBtn',
                'addPaperBtn', 'savePapersBtn',
                'addInterBtn', 'saveInterBtn',
                'addIntraDeptBtn', 'saveIntraDeptBtn',
                'addSeminarBtn', 'saveSeminarsBtn',
                'addRepBtn', 'saveRepBtn',
                'addMembershipBtn', 'saveMembershipBtn',
                'addMoocsBtn', 'saveMoocsBtn',
                'addInternshipBtn', 'saveInternshipBtn',
                'addAwardsBtn', 'saveAwardsBtn',
                'addUniTeamBtn', 'saveUniTeamBtn',
                'addOutsideBtn', 'saveOutsideBtn',
                'addWithinBtn', 'saveWithinBtn',
                'addTechBtn', 'saveTechBtn',
                'addOtherCoordBtn', 'saveOtherCoordBtn',
                'addCommitteeBtn', 'saveCommitteeBtn',
                'addNssBtn', 'saveNssBtn',
                'addExtAwardsBtn', 'saveExtAwardsBtn',
                'saveAcademicBtn'
            ];

            buttonsToHide.forEach(id => {
                const btn = document.getElementById(id);
                if (btn) btn.style.display = 'none';
            });

            // Show a message if not already shown
            const header = document.querySelector('.main-content h1') || document.querySelector('.main-content');
            if (header && !document.getElementById('submittedMsg')) {
                const msg = document.createElement('div');
                msg.id = 'submittedMsg';
                msg.className = 'alert alert-success';
                msg.style.marginBottom = '20px';
                msg.innerHTML = '<i class="fa-solid fa-check-circle"></i> Application Submitted. View Only Mode.';
                header.parentNode.insertBefore(msg, header.nextSibling);
            }

            // Disable final submit button if visible
            const fsBtn = document.getElementById('finalSubmitBtn');
            if (fsBtn) {
                fsBtn.style.display = 'none';
            }
        });
    }

    // Bio Char Counter
    const bioInput = document.getElementById('pBio');
    const bioCountSpan = document.getElementById('bioCharCount');
    if (bioInput && bioCountSpan) {
        bioInput.addEventListener('input', () => {
            bioCountSpan.innerText = bioInput.value.length;
        });
    }

    // --- SAVE PROFILE (Updated for FormData/Photo) ---
    const saveProfileBtn = document.getElementById('saveProfileBtn');
    if (saveProfileBtn) {
        saveProfileBtn.addEventListener('click', async () => {
            const fd = new FormData();
            fd.append('name', document.getElementById('pName').value);
            fd.append('department', document.getElementById('pDept').value);
            fd.append('roll_number', document.getElementById('pRoll').value);
            fd.append('contact_number', document.getElementById('pContact').value);
            // email is read only, usually not sent or ignored by backend update
            fd.append('bio', document.getElementById('pBio').value);

            const photoInput = document.getElementById('pPhoto');
            if (photoInput && photoInput.files[0]) {
                fd.append('profile_photo', photoInput.files[0]);
            }

            try {
                const res = await fetch('student/profile', {
                    method: 'POST',
                    body: fd // No Content-Type header when using FormData
                });
                if (res.ok) {
                    alert('Profile Updated Successfully!');
                    const data = await res.json();
                    if (data.profile_photo) {
                        const pp = document.getElementById('pPhotoPreview');
                        if (pp) pp.src = 'files/' + data.profile_photo.replace('FILE:', '');
                    }
                } else {
                    let errMsg = 'Unknown error';
                    try {
                        const text = await res.text();
                        try {
                            const errData = JSON.parse(text);
                            errMsg = errData.error || text; // Use JSON error or full text
                        } catch (jsonErr) {
                            // Valid JSON parse error, so it's HTML or plain text
                            console.error('Server returned non-JSON error:', text);
                            errMsg = `Server Error (${res.status}): ${text.substring(0, 100)}...`;
                        }
                    } catch (readErr) {
                        errMsg = `Could not read response: ${readErr.message}`;
                    }
                    alert('Error updating profile: ' + errMsg);
                }
            } catch (e) {
                console.error('Fetch error:', e);
                alert(`Network Error Details: ${e.message}\n${e.stack || ''}`);
            }
        });
    }

    // Photo Preview Listener
    const pPhoto = document.getElementById('pPhoto');
    if (pPhoto) {
        pPhoto.addEventListener('change', (e) => {
            const file = e.target.files[0];
            if (file) {
                const reader = new FileReader();
                reader.onload = (ev) => {
                    const img = document.getElementById('pPhotoPreview');
                    if (img) img.src = ev.target.result;
                }
                reader.readAsDataURL(file);
            }
        });
    }

    // --- HELPERS FOR BULK SAVE & PREFILL ---
    async function saveBulkActivities(url, activityType, items) {
        try {
            const fd = new FormData();
            fd.append('activity_type', activityType);

            // Separate files from data
            const cleanItems = items.map(item => {
                const { fileInput, ...rest } = item;
                // If we want to preserve existing path, we might need it in 'rest'
                // But for now, just send the text data
                return rest;
            });

            fd.append('items', JSON.stringify(cleanItems));

            // Append files
            items.forEach((item, index) => {
                if (item.fileInput && item.fileInput.files && item.fileInput.files[0]) {
                    fd.append(`file_${index}`, item.fileInput.files[0]);
                }
            });

            const res = await fetch(url, {
                method: 'POST',
                // No Content-Type header for FormData, browser sets it with boundary
                body: fd
            });

            if (res.ok) {
                alert(`${activityType} saved successfully!`);
            } else {
                let errMsg = 'Unknown error';
                const text = await res.text();
                try {
                    const err = JSON.parse(text);
                    errMsg = err.error || text;
                } catch (e) {
                    errMsg = `Server returned non-JSON: ${text.substring(0, 200)}`;
                    console.error('Server Raw Response:', text);
                }
                alert(`Error saving: ${errMsg}`);
            }
        } catch (error) {
            console.error(error);
            alert(`Network error saving data: ${error.message}`);
        }
    }

    function prefillSection(data, type, toggleYesId, toggleNoId, containerId, createRowFn) {
        const items = data.filter(d => d.activity_type === type);
        const yesRadio = document.getElementById(toggleYesId);
        const noRadio = document.getElementById(toggleNoId);
        const container = document.getElementById(containerId);

        if (!yesRadio || !container) return;

        if (items.length > 0) {
            yesRadio.checked = true;
            yesRadio.dispatchEvent(new Event('change'));
            container.innerHTML = ''; // Clear default
            items.forEach(item => {
                container.appendChild(createRowFn(item));
            });
        } else if (noRadio) {
            noRadio.checked = true;
            noRadio.dispatchEvent(new Event('change'));
        }
    }

    // Helper for certificate link
    const getCertHtml = (path) => {
        if (!path) return '';
        let url = '';
        if (path.startsWith('FILE:')) {
            const id = path.split(':')[1];
            url = `files/${id}`;
        } else {
            url = path.startsWith('/') ? path.substring(1) : 'uploads/' + path;
        }
        return `<small><a href="#" onclick="openCertModal('${url}'); return false;" style="color:var(--primary-color);">View Certificate</a></small>`;
    };

    // Make global so it can be called from onclick
    window.openCertModal = (url) => {
        const modal = document.getElementById('certModal');
        const iframe = document.getElementById('certIframe');
        if (modal && iframe) {
            iframe.src = url;
            modal.style.display = 'flex';
        }
    };

    async function loadAllData() {
        // Co-Curricular
        try {
            const coRes = await fetch('student/co-curricular');
            if (coRes.ok) {
                const coData = await coRes.json();

                // Papers
                prefillSection(coData, 'Paper Publications', 'papersYes', 'papersNo', 'paperListContainer', (item) => {
                    const div = document.createElement('div');
                    div.className = 'paper-entry dynamic-entry dynamic-entry-grid';
                    div.innerHTML = `
                        <div>
                            <label class="form-label">Name of the Journal/Conference</label>
                            <textarea class="paper-journal input-full" rows="2">${item.description || ''}</textarea>
                        </div>
                        <div>
                            <label class="form-label">Title of the paper and Authors</label>
                            <textarea class="paper-title input-full" rows="2">${item.title || item.name || ''}</textarea>
                        </div>
                        <div style="grid-column: 1 / -1;">
                             <input type="file" class="paper-file input-full mt-2" accept=".pdf,.doc,.docx,.jpg,.jpeg,.png">
                             <input type="hidden" class="existing-path" value="${item.certificate_path || ''}">
                             ${getCertHtml(item.certificate_path)}
                        </div>
                    `;
                    return div;
                });

                // Inter-College
                prefillSection(coData, 'Inter-College Activity', 'interYes', 'interNo', 'interListContainer', (item) => {
                    const div = document.createElement('div');
                    div.className = 'inter-entry dynamic-entry dynamic-entry-grid';
                    let desc = item.description || '';
                    div.innerHTML = `
                        <div>
                            <label class="form-label">College Name</label>
                            <input type="text" class="inter-college input-full" value="${item.title || ''}">
                        </div>
                        <div style="grid-column: 1 / -1;">
                            <label class="form-label">Description (Event, Prize, etc)</label>
                            <input type="text" class="inter-desc input-full" value="${desc}">
                             <input type="file" class="inter-file input-full mt-2" accept=".pdf,.doc,.docx,.jpg,.jpeg,.png">
                             <input type="hidden" class="existing-path" value="${item.certificate_path || ''}">
                             ${getCertHtml(item.certificate_path)}
                        </div>
                    `;
                    return div;
                });

                // Intra-Dept
                prefillSection(coData, 'Intra-Department Winner', 'intraDeptYes', 'intraDeptNo', 'intraDeptListContainer', (item) => {
                    const div = document.createElement('div');
                    div.className = 'intra-dept-entry dynamic-entry dynamic-entry-grid';
                    div.innerHTML = `
                       <div>
                            <label class="form-label">Event Name</label>
                            <input type="text" class="dept-event input-full" value="${item.title || ''}">
                        </div>
                        <div>
                             <label class="form-label">Description / Prize</label>
                            <input type="text" class="dept-desc input-full" value="${item.description || ''}">
                             <input type="file" class="dept-file input-full mt-2" accept=".pdf,.doc,.docx,.jpg,.jpeg,.png">
                             <input type="hidden" class="existing-path" value="${item.certificate_path || ''}">
                             ${getCertHtml(item.certificate_path)}
                        </div>
                    `;
                    return div;
                });

                // Seminars
                prefillSection(coData, 'Seminars Delivered', 'seminarsYes', 'seminarsNo', 'seminarListContainer', (item) => {
                    const div = document.createElement('div');
                    div.className = 'seminar-entry dynamic-entry';
                    div.innerHTML = `
                        <label class="form-label">Seminar Topic</label>
                        <input type="text" class="seminar-topic input-full" value="${item.title || item.name || ''}">
                        <input type="file" class="seminar-file input-full mt-2" accept=".pdf,.doc,.docx,.jpg,.jpeg,.png">
                        <input type="hidden" class="existing-path" value="${item.certificate_path || ''}">
                        ${getCertHtml(item.certificate_path)}
                    `;
                    return div;
                });

                // Class Rep
                prefillSection(coData, 'Class Representative', 'repYes', 'repNo', 'repListContainer', (item) => {
                    const div = document.createElement('div');
                    div.className = 'rep-entry dynamic-entry';
                    const sem = item.name.replace('Semester ', '').trim();
                    div.innerHTML = `
                        <label class="form-label">Semester (e.g. 3, 4)</label>
                        <input type="number" class="rep-semester input-full" value="${sem}" min="1" max="8">
                        <input type="file" class="rep-file input-full mt-2" accept=".pdf,.doc,.docx,.jpg,.jpeg,.png">
                        <input type="hidden" class="existing-path" value="${item.certificate_path || ''}">
                        ${getCertHtml(item.certificate_path)}
                    `;
                    return div;
                });

                // Professional Body Membership
                prefillSection(coData, 'Professional Body Membership', 'membershipYes', 'membershipNo', 'membershipListContainer', (item) => {
                    const div = document.createElement('div');
                    div.className = 'membership-entry dynamic-entry';
                    div.innerHTML = `
                        <label class="form-label">Professional Body Name</label>
                        <input type="text" class="membership-name input-full" value="${item.name || item.title || ''}">
                        <input type="file" class="membership-file input-full mt-2" accept=".pdf,.doc,.docx,.jpg,.jpeg,.png">
                        <input type="hidden" class="existing-path" value="${item.certificate_path || ''}">
                        ${getCertHtml(item.certificate_path)}
                    `;
                    return div;
                });

                // MOOCs Certification
                prefillSection(coData, 'MOOCs Certification', 'moocsYes', 'moocsNo', 'moocsListContainer', (item) => {
                    const div = document.createElement('div');
                    div.className = 'moocs-entry dynamic-entry';
                    div.innerHTML = `
                        <label class="form-label">Certification Name</label>
                        <input type="text" class="moocs-name input-full" value="${item.name || item.title || ''}">
                        <input type="file" class="moocs-file input-full mt-2" accept=".pdf,.doc,.docx,.jpg,.jpeg,.png">
                        <input type="hidden" class="existing-path" value="${item.certificate_path || ''}">
                        ${getCertHtml(item.certificate_path)}
                    `;
                    return div;
                });

                // Internship/Consultancy
                prefillSection(coData, 'Internship/Consultancy', 'internshipYes', 'internshipNo', 'internshipListContainer', (item) => {
                    const div = document.createElement('div');
                    div.className = 'internship-entry dynamic-entry';
                    let duration = '';
                    if (item.description && item.description.startsWith('Duration: ')) {
                        duration = item.description.replace('Duration: ', '');
                    }
                    div.innerHTML = `
                        <div style="display: grid; grid-template-columns: 2fr 1fr; gap: 10px;">
                            <div>
                                <label class="form-label">Internship/Consultancy</label>
                                <input type="text" class="internship-name input-full" value="${item.name || item.title || ''}">
                            </div>
                            <div>
                                <label class="form-label">Duration</label>
                                <input type="text" class="internship-duration input-full" value="${duration}">
                            </div>
                        </div>
                        <input type="file" class="internship-file input-full mt-2" accept=".pdf,.doc,.docx,.jpg,.jpeg,.png">
                        <input type="hidden" class="existing-path" value="${item.certificate_path || ''}">
                        ${getCertHtml(item.certificate_path)}
                    `;
                    return div;
                });

            }
        } catch (e) { console.error(e); }

        // Extracurricular
        try {
            const extRes = await fetch('student/extracurricular');
            if (extRes.ok) {
                const extData = await extRes.json();

                // University Team Selection
                prefillSection(extData, 'University Team Selection', 'uniTeamYes', 'uniTeamNo', 'uniTeamListContainer', (item) => {
                    const div = document.createElement('div');
                    div.className = 'uni-team-entry dynamic-entry dynamic-entry-grid';
                    let typeVal = 'individual';
                    if (item.description && item.description.includes('Group')) typeVal = 'group';

                    div.innerHTML = `
                        <div>
                            <label class="form-label">Activity/Sport Name</label>
                            <input type="text" class="uni-team-name input-full" value="${item.title || item.name || ''}">
                        </div>
                        <div>
                            <label class="form-label">Type</label>
                            <select class="uni-team-type input-full">
                                <option value="individual" ${typeVal === 'individual' ? 'selected' : ''}>Individual (3 Marks)</option>
                                <option value="group" ${typeVal === 'group' ? 'selected' : ''}>Group (2 Marks)</option>
                            </select>
                        </div>
                        <div style="grid-column: 1 / -1;">
                             <input type="file" class="uni-team-file input-full mt-2" accept=".pdf,.doc,.docx,.jpg,.jpeg,.png">
                             <input type="hidden" class="existing-path" value="${item.certificate_path || ''}">
                             ${getCertHtml(item.certificate_path)}
                        </div>
                    `;
                    return div;
                });

                // Outside College Activity
                prefillSection(extData, 'Outside College Activity', 'outsideYes', 'outsideNo', 'outsideListContainer', (item) => {
                    const div = document.createElement('div');
                    div.className = 'outside-entry dynamic-entry dynamic-entry-grid';
                    let typeVal = 'participation';
                    if (item.description && item.description.includes('prize')) typeVal = 'prize';

                    div.innerHTML = `
                        <div>
                            <label class="form-label">Event Name</label>
                            <input type="text" class="outside-name input-full" value="${item.title || item.name || ''}">
                        </div>
                        <div>
                            <label class="form-label">Achievement</label>
                            <select class="outside-type input-full">
                                <option value="participation" ${typeVal === 'participation' ? 'selected' : ''}>Participation (1 Mark)</option>
                                <option value="prize" ${typeVal === 'prize' ? 'selected' : ''}>I/II Prize Won (5 Marks)</option>
                            </select>
                        </div>
                        <div style="grid-column: 1 / -1;">
                             <input type="file" class="outside-file input-full mt-2" accept=".pdf,.doc,.docx,.jpg,.jpeg,.png">
                             <input type="hidden" class="existing-path" value="${item.certificate_path || ''}">
                             ${getCertHtml(item.certificate_path)}
                        </div>
                    `;
                    return div;
                });

                // Within College Activity
                prefillSection(extData, 'Within College Activity', 'withinYes', 'withinNo', 'withinListContainer', (item) => {
                    const div = document.createElement('div');
                    div.className = 'within-entry dynamic-entry dynamic-entry-grid';
                    let typeVal = 'participation';
                    if (item.description && item.description.includes('prize')) typeVal = 'prize';

                    div.innerHTML = `
                        <div>
                            <label class="form-label">Event Name</label>
                            <input type="text" class="within-name input-full" value="${item.title || item.name || ''}">
                        </div>
                        <div>
                            <label class="form-label">Achievement</label>
                            <select class="within-type input-full">
                                <option value="participation" ${typeVal === 'participation' ? 'selected' : ''}>Participation (1 Mark)</option>
                                <option value="prize" ${typeVal === 'prize' ? 'selected' : ''}>I/II Prize Won (2 Marks)</option>
                            </select>
                        </div>
                        <div style="grid-column: 1 / -1;">
                             <input type="file" class="within-file input-full mt-2" accept=".pdf,.doc,.docx,.jpg,.jpeg,.png">
                             <input type="hidden" class="existing-path" value="${item.certificate_path || ''}">
                             ${getCertHtml(item.certificate_path)}
                        </div>
                    `;
                    return div;
                });

                // Tech Fest Coordinator
                prefillSection(extData, 'Tech Fest Coordinator', 'techYes', 'techNo', 'techListContainer', (item) => {
                    const div = document.createElement('div');
                    div.className = 'tech-entry dynamic-entry dynamic-entry-grid';
                    let typeVal = 'dept';
                    if (item.description && item.description.includes('College')) typeVal = 'college';

                    div.innerHTML = `
                        <div>
                            <label class="form-label">Role/Event</label>
                            <input type="text" class="tech-name input-full" value="${item.title || item.name || ''}">
                        </div>
                        <div>
                            <label class="form-label">Level</label>
                            <select class="tech-type input-full">
                                <option value="dept" ${typeVal === 'dept' ? 'selected' : ''}>Dept. Level (1 Mark)</option>
                                <option value="college" ${typeVal === 'college' ? 'selected' : ''}>College Level (2 Marks)</option>
                            </select>
                        </div>
                        <div style="grid-column: 1 / -1;">
                             <input type="file" class="tech-file input-full mt-2" accept=".pdf,.doc,.docx,.jpg,.jpeg,.png">
                             <input type="hidden" class="existing-path" value="${item.certificate_path || ''}">
                             ${getCertHtml(item.certificate_path)}
                        </div>
                    `;
                    return div;
                });

                // Other Coordinator
                prefillSection(extData, 'Other Coordinator', 'otherCoordYes', 'otherCoordNo', 'otherCoordListContainer', (item) => {
                    const div = document.createElement('div');
                    div.className = 'other-coord-entry dynamic-entry dynamic-entry-grid';
                    let typeVal = 'dept';
                    if (item.description && item.description.includes('College')) typeVal = 'college';

                    div.innerHTML = `
                        <div>
                            <label class="form-label">Occasion/Role</label>
                            <input type="text" class="other-coord-name input-full" value="${item.title || item.name || ''}">
                        </div>
                        <div>
                            <label class="form-label">Level</label>
                            <select class="other-coord-type input-full">
                                <option value="dept" ${typeVal === 'dept' ? 'selected' : ''}>Dept. Level (1 Mark)</option>
                                <option value="college" ${typeVal === 'college' ? 'selected' : ''}>College Level (2 Marks)</option>
                            </select>
                        </div>
                        <div style="grid-column: 1 / -1;">
                             <input type="file" class="other-coord-file input-full mt-2" accept=".pdf,.doc,.docx,.jpg,.jpeg,.png">
                             <input type="hidden" class="existing-path" value="${item.certificate_path || ''}">
                             ${getCertHtml(item.certificate_path)}
                        </div>
                    `;
                    return div;
                });

                // Committee Member
                prefillSection(extData, 'Committee Member', 'committeeYes', 'committeeNo', 'committeeListContainer', (item) => {
                    const div = document.createElement('div');
                    div.className = 'committee-entry dynamic-entry';
                    div.innerHTML = `
                        <label class="form-label">Committee Name</label>
                        <input type="text" class="committee-name input-full" value="${item.title || item.name || ''}">
                        <input type="file" class="committee-file input-full mt-2" accept=".pdf,.doc,.docx,.jpg,.jpeg,.png">
                        <input type="hidden" class="existing-path" value="${item.certificate_path || ''}">
                        ${getCertHtml(item.certificate_path)}
                    `;
                    return div;
                });

                // Awards
                prefillSection(extData, 'Extracurricular Award', 'extAwardsYes', 'extAwardsNo', 'extAwardsListContainer', (item) => {
                    const div = document.createElement('div');
                    div.className = 'ext-awards-entry dynamic-entry';
                    div.innerHTML = `
                        <label class="form-label">Award/Contribution</label>
                        <input type="text" class="ext-awards-name input-full" value="${item.title || item.name || ''}">
                        <input type="file" class="ext-awards-file input-full mt-2" accept=".pdf,.doc,.docx,.jpg,.jpeg,.png">
                        <input type="hidden" class="existing-path" value="${item.certificate_path || ''}">
                        ${getCertHtml(item.certificate_path)}
                    `;
                    return div;
                });

                // NSS
                prefillSection(extData, 'NSS/Social Service', 'nssYes', 'nssNo', 'nssListContainer', (item) => {
                    const div = document.createElement('div');
                    div.className = 'nss-entry dynamic-entry';
                    div.innerHTML = `
                        <label class="form-label">About Activity</label>
                        <input type="text" class="nss-name input-full" value="${item.title || item.name || ''}">
                        <input type="file" class="nss-file input-full mt-2" accept=".pdf,.doc,.docx,.jpg,.jpeg,.png">
                        <input type="hidden" class="existing-path" value="${item.certificate_path || ''}">
                        ${getCertHtml(item.certificate_path)}
                    `;
                    return div;
                });
            }
        } catch (e) { console.error(e); }

        // --- ACADEMIC HANDLING ---
        // (Note: Academics are handled by loadAcademic() below)
    } // End of loadAllData

    // --- ACADEMIC HANDLING ---
    async function loadAcademic() {
        const academicForm = document.getElementById('academicForm');

        const safeSet = (id, val) => {
            const el = document.getElementById(id);
            if (el) el.value = (val !== undefined && val !== null) ? val : '';
        };
        const safeGet = (id) => {
            const el = document.getElementById(id);
            return el ? el.value : '';
        };

        try {
            const res = await fetch('student/academic');
            if (res.ok) {
                const data = await res.json();
                if (data) {
                    safeSet('cgpa', data.cgpa);
                    for (let i = 1; i <= 8; i++) safeSet(`sgpa${i}`, data[`sgpa_sem${i}`]);

                    // Honours/Minors Fetching
                    if (data.honours_minors && data.honours_minors !== 'No') {
                        const hYes = document.getElementById('honoursYes');
                        if (hYes) { hYes.checked = true; hYes.dispatchEvent(new Event('change')); }

                        try {
                            let parsed;
                            try { parsed = JSON.parse(data.honours_minors); } catch (e) { parsed = null; }

                            if (parsed && typeof parsed === 'object') {
                                // New JSON Format
                                const type = parsed.type || 'Degree';
                                const typeRadio = document.querySelector(`input[name="degreeType"][value="${type}"]`);
                                if (typeRadio) typeRadio.checked = true;

                                const courseContainer = document.getElementById('courseListContainer');
                                if (courseContainer && parsed.courses && Array.isArray(parsed.courses)) {
                                    courseContainer.innerHTML = '';
                                    parsed.courses.forEach(c => {
                                        const div = document.createElement('div');
                                        div.className = 'nptel-row dynamic-entry-grid';
                                        div.style.marginBottom = '0.5rem';
                                        const certLink = getCertHtml(c.certificate_path);
                                        div.innerHTML = `<input type="text" class="nptel-course input-full" value="${c.name || ''}" placeholder="Course Name">
                                                           <input type="file" class="nptel-file input-full mt-1" accept=".pdf,.doc,.docx,.jpg,.jpeg,.png">
                                                           <input type="hidden" class="nptel-existing-path" value="${c.certificate_path || ''}">
                                                           ${certLink}`;
                                        courseContainer.appendChild(div);
                                    });
                                }
                            } else {
                                // Fallback to Old String Format
                                const parts = data.honours_minors.split(':');
                                if (parts.length > 0) {
                                    const type = parts[0].trim();
                                    const typeRadio = document.querySelector(`input[name="degreeType"][value="${type}"]`);
                                    if (typeRadio) typeRadio.checked = true;
                                    if (parts[1]) {
                                        const courses = parts[1].split(',');
                                        const courseContainer = document.getElementById('courseListContainer');
                                        if (courseContainer) {
                                            courseContainer.innerHTML = '';
                                            courses.forEach(c => {
                                                const div = document.createElement('div');
                                                div.className = 'nptel-row dynamic-entry-grid';
                                                div.style.marginBottom = '0.5rem';
                                                div.innerHTML = `<input type="text" class="nptel-course input-full" value="${c.trim()}" placeholder="Course Name"><input type="file" class="nptel-file input-full mt-1">`;
                                                courseContainer.appendChild(div);
                                            });
                                        }
                                    }
                                }
                            }
                        } catch (e) {
                            console.error('Error parsing honours data', e);
                        }
                    } else {
                        const hNo = document.getElementById('honoursNo');
                        if (hNo) { hNo.checked = true; hNo.dispatchEvent(new Event('change')); }
                    }

                    // Competitive Exams
                    if (data.competitive_exams && data.competitive_exams !== 'No') {
                        const eYes = document.getElementById('examsYes');
                        if (eYes) { eYes.checked = true; eYes.dispatchEvent(new Event('change')); }
                        const examList = data.competitive_exams.split(',');
                        const examContainer = document.getElementById('examListContainer');
                        if (examContainer) {
                            examContainer.innerHTML = '';
                            examList.forEach(ex => {
                                const parts = ex.split(':');
                                const div = document.createElement('div');
                                div.className = 'exam-entry dynamic-entry-grid';
                                div.style.marginBottom = '0.5rem';
                                div.innerHTML = `<input type="text" class="exam-name input-full" value="${parts[0]?.trim() || ''}" placeholder="Exam Name"><input type="text" class="exam-score input-full" value="${parts[1]?.trim() || ''}" placeholder="Rank / Score">`;
                                examContainer.appendChild(div);
                            });
                        }
                    } else {
                        const eNo = document.getElementById('examsNo');
                        if (eNo) { eNo.checked = true; eNo.dispatchEvent(new Event('change')); }
                    }
                }
            }
        } catch (e) {
            console.error('Error loading academic', e);
        }

        if (academicForm) {
            academicForm.addEventListener('submit', async (e) => {
                e.preventDefault();
                const fd = new FormData();
                fd.append('cgpa', safeGet('cgpa'));
                for (let i = 1; i <= 8; i++) fd.append(`sgpa_sem${i}`, safeGet(`sgpa${i}`));

                // Honours
                const pursuingEl = document.querySelector('input[name="pursuingHonours"]:checked');
                if (pursuingEl && pursuingEl.value === 'yes') {
                    const typeEl = document.querySelector('input[name="degreeType"]:checked');
                    fd.append('honours_minors_type', typeEl ? typeEl.value : 'Degree');

                    const courses = [];
                    document.querySelectorAll('.nptel-row').forEach((row, idx) => {
                        const name = row.querySelector('.nptel-course')?.value.trim();
                        const file = row.querySelector('.nptel-file')?.files[0];
                        const existing = row.querySelector('.nptel-existing-path')?.value;
                        if (name) {
                            courses.push({ name, existing_path: existing || null });
                            if (file) fd.append(`nptel_file_${courses.length - 1}`, file);
                        }
                    });
                    fd.append('nptel_courses', JSON.stringify(courses));
                } else {
                    fd.append('honours_minors_type', 'No');
                }

                // Exams
                const examsEl = document.querySelector('input[name="examsTaken"]:checked');
                if (examsEl && examsEl.value === 'yes') {
                    const exams = [];
                    document.querySelectorAll('.exam-entry').forEach(div => {
                        const name = div.querySelector('.exam-name')?.value;
                        const score = div.querySelector('.exam-score')?.value;
                        if (name) exams.push(`${name}: ${score}`);
                    });
                    fd.append('competitive_exams', exams.join(', '));
                } else {
                    fd.append('competitive_exams', 'No');
                }

                try {
                    const res = await fetch('student/academic', { method: 'POST', body: fd });
                    if (res.ok) alert('Academic Details Saved');
                    else {
                        const d = await res.json();
                        alert('Error: ' + (d.error || 'Unknown'));
                    }
                } catch (err) { console.error(err); alert('Network Error'); }
            });
        }
    }

    // Call init at end
    initDashboard();

    // --- Honours/Minors UI Logic ---
    const honoursYes = document.getElementById('honoursYes');
    const honoursNo = document.getElementById('honoursNo');
    const honoursDetails = document.getElementById('honoursDetails');
    const addCourseBtn = document.getElementById('addCourseBtn');
    const courseContainer = document.getElementById('courseListContainer');

    const toggleHonours = () => {
        if (honoursYes.checked) {
            honoursDetails.classList.remove('hidden');
        } else {
            honoursDetails.classList.add('hidden');
        }
    };

    if (honoursYes && honoursNo) {
        honoursYes.addEventListener('change', toggleHonours);
        honoursNo.addEventListener('change', toggleHonours);
    }

    if (addCourseBtn) {
        addCourseBtn.addEventListener('click', () => {
            const div = document.createElement('div');
            div.className = 'nptel-row dynamic-entry-grid';
            div.style.marginBottom = '0.5rem';
            div.innerHTML = `
                    <input type="text" class="nptel-course input-full" placeholder="Course Name">
                    <input type="file" class="nptel-file input-full" accept=".pdf,.doc,.docx,.jpg,.jpeg,.png">
                `;
            courseContainer.appendChild(div);
        });
    }

    // --- Competitive Exams UI Logic ---
    const examsYes = document.getElementById('examsYes');
    const examsNo = document.getElementById('examsNo');
    const examDetails = document.getElementById('examDetails');
    const addExamBtn = document.getElementById('addExamBtn');
    const examContainer = document.getElementById('examListContainer');

    const toggleExams = () => {
        if (examsYes.checked) {
            examDetails.classList.remove('hidden');
        } else {
            examDetails.classList.add('hidden');
        }
    };

    if (examsYes && examsNo) {
        examsYes.addEventListener('change', toggleExams);
        examsNo.addEventListener('change', toggleExams);
    }

    if (addExamBtn) {
        addExamBtn.addEventListener('click', () => {
            const div = document.createElement('div');
            div.className = 'exam-entry dynamic-entry-grid';
            div.style.marginBottom = '0.5rem';
            div.innerHTML = `
                    <input type="text" class="exam-name input-full" placeholder="Exam Name (e.g. GATE)">
                    <input type="text" class="exam-score input-full" placeholder="Rank / Score">
                `;
            examContainer.appendChild(div);
            div.querySelector('input').focus();
        });
    }


    // --- PDF DOWNLOAD ---
    const downloadBtn = document.getElementById('downloadPdfBtn');
    if (downloadBtn) {
        downloadBtn.addEventListener('click', () => {
            window.open('downloads/generate', '_blank');
        });
    }

    // --- Co-Curricular & Extracurricular Add/Save Logic ---

    // Papers
    const papersYes = document.getElementById('papersYes');
    const papersNo = document.getElementById('papersNo');
    const paperDetails = document.getElementById('paperDetails');
    const addPaperBtn = document.getElementById('addPaperBtn');
    const paperContainer = document.getElementById('paperListContainer');
    const savePapersBtn = document.getElementById('savePapersBtn');

    if (papersYes) {
        const toggle = () => paperDetails.classList.toggle('hidden', !papersYes.checked);
        papersYes.addEventListener('change', toggle);
        papersNo.addEventListener('change', toggle);
    }

    if (addPaperBtn) {
        addPaperBtn.addEventListener('click', () => {
            const div = document.createElement('div');
            div.className = 'paper-entry dynamic-entry dynamic-entry-grid';
            div.innerHTML = `
                    <div>
                        <label class="form-label">Name of the Journal/Conference</label>
                        <textarea class="paper-journal input-full" rows="2" placeholder="Journal Name"></textarea>
                    </div>
                    <div>
                        <label class="form-label">Title of the paper and Authors</label>
                        <textarea class="paper-title input-full" rows="2" placeholder="Title & Authors"></textarea>
                    </div>
                     <div style="grid-column: 1 / -1;">
                        <input type="file" class="paper-file input-full" accept=".pdf,.doc,.docx,.jpg,.jpeg,.png">
                    </div>
                `;
            paperContainer.appendChild(div);
        });
    }

    if (savePapersBtn) {
        savePapersBtn.addEventListener('click', async (e) => {
            e.preventDefault();
            const entries = document.querySelectorAll('.paper-entry');
            const items = [];
            entries.forEach(div => {
                const journal = div.querySelector('.paper-journal').value.trim();
                const title = div.querySelector('.paper-title').value.trim();
                const fileInput = div.querySelector('.paper-file');
                const existingPath = div.querySelector('.existing-path')?.value || null;
                // Logic preserved
                if (journal || title) items.push({ name: title, description: journal, score: 3, fileInput: fileInput, existing_path: existingPath });
            });
            await saveBulkActivities('student/co-curricular/bulk', 'Paper Publications', items);
        });
    }

    // Inter-College
    const interYes = document.getElementById('interYes');
    const interNo = document.getElementById('interNo');
    const interDetails = document.getElementById('interDetails');
    const addInterBtn = document.getElementById('addInterBtn');
    const interContainer = document.getElementById('interListContainer');
    const saveInterBtn = document.getElementById('saveInterBtn');

    if (interYes) {
        const toggle = () => interDetails.classList.toggle('hidden', !interYes.checked);
        interYes.addEventListener('change', toggle);
        interNo.addEventListener('change', toggle);
    }

    if (addInterBtn) {
        addInterBtn.addEventListener('click', () => {
            const div = document.createElement('div');
            div.className = 'inter-entry dynamic-entry dynamic-entry-grid';
            div.innerHTML = `
                    <div>
                        <label class="form-label">College Name</label>
                        <input type="text" class="inter-college input-full" placeholder="College Name">
                    </div>
                    <div style="grid-column: 1 / -1;">
                        <label class="form-label">Description (Event, Prize, etc)</label>
                        <input type="text" class="inter-desc input-full" placeholder="Details">
                         <input type="file" class="inter-file input-full mt-2" accept=".pdf,.doc,.docx,.jpg,.jpeg,.png">
                    </div>
                `;
            interContainer.appendChild(div);
        });
    }

    if (saveInterBtn) {
        saveInterBtn.addEventListener('click', async (e) => {
            e.preventDefault();
            const entries = document.querySelectorAll('.inter-entry');
            const items = [];
            entries.forEach(div => {
                const college = div.querySelector('.inter-college').value.trim();
                const desc = div.querySelector('.inter-desc').value.trim();
                const fileInput = div.querySelector('.inter-file');
                const existingPath = div.querySelector('.existing-path')?.value || null;
                if (college || desc) items.push({ name: college, description: desc, score: 3, fileInput: fileInput, existing_path: existingPath });
            });
            await saveBulkActivities('student/co-curricular/bulk', 'Inter-College Activity', items);
        });
    }

    // Intra-Dept
    const intraDeptYes = document.getElementById('intraDeptYes');
    const intraDeptNo = document.getElementById('intraDeptNo');
    const intraDeptDetails = document.getElementById('intraDeptDetails');
    const addIntraDeptBtn = document.getElementById('addIntraDeptBtn');
    const intraDeptContainer = document.getElementById('intraDeptListContainer');
    const saveIntraDeptBtn = document.getElementById('saveIntraDeptBtn');

    if (intraDeptYes) {
        const toggle = () => intraDeptDetails.classList.toggle('hidden', !intraDeptYes.checked);
        intraDeptYes.addEventListener('change', toggle);
        intraDeptNo.addEventListener('change', toggle);
    }

    if (addIntraDeptBtn) {
        addIntraDeptBtn.addEventListener('click', () => {
            const div = document.createElement('div');
            div.className = 'intra-dept-entry dynamic-entry dynamic-entry-grid';
            div.innerHTML = `
                    <div>
                        <label class="form-label">Event Name</label>
                        <input type="text" class="dept-event input-full" placeholder="Event Name">
                    </div>
                    <div>
                        <label class="form-label">Description / Prize</label>
                        <input type="text" class="dept-desc input-full" placeholder="Description">
                         <input type="file" class="dept-file input-full mt-2" accept=".pdf,.doc,.docx,.jpg,.jpeg,.png">
                    </div>
                `;
            intraDeptContainer.appendChild(div);
        });
    }

    if (saveIntraDeptBtn) {
        saveIntraDeptBtn.addEventListener('click', async (e) => {
            e.preventDefault();
            const entries = document.querySelectorAll('.intra-dept-entry');
            const items = [];
            entries.forEach(div => {
                const event = div.querySelector('.dept-event').value.trim();
                const desc = div.querySelector('.dept-desc').value.trim();
                const fileInput = div.querySelector('.dept-file');
                const existingPath = div.querySelector('.existing-path')?.value || null;
                if (event || desc) items.push({ name: event, description: desc, score: 1, fileInput: fileInput, existing_path: existingPath });
            });
            await saveBulkActivities('student/co-curricular/bulk', 'Intra-Department Winner', items);
        });
    }

    // Seminars
    const seminarsYes = document.getElementById('seminarsYes');
    const seminarsNo = document.getElementById('seminarsNo');
    const seminarDetails = document.getElementById('seminarDetails');
    const addSeminarBtn = document.getElementById('addSeminarBtn');
    const seminarContainer = document.getElementById('seminarListContainer');
    const saveSeminarsBtn = document.getElementById('saveSeminarsBtn');

    if (seminarsYes) {
        const toggle = () => seminarDetails.classList.toggle('hidden', !seminarsYes.checked);
        seminarsYes.addEventListener('change', toggle);
        seminarsNo.addEventListener('change', toggle);
    }

    if (addSeminarBtn) {
        addSeminarBtn.addEventListener('click', () => {
            const div = document.createElement('div');
            div.className = 'seminar-entry dynamic-entry';
            div.innerHTML = `
                <label class="form-label">Seminar Topic</label>
                <input type="text" class="seminar-topic input-full" placeholder="Enter Seminar Topic">
                <input type="file" class="seminar-file input-full mt-2" accept=".pdf,.doc,.docx,.jpg,.jpeg,.png">
            `;
            seminarContainer.appendChild(div);
        });
    }

    if (saveSeminarsBtn) {
        saveSeminarsBtn.addEventListener('click', async (e) => {
            e.preventDefault();
            const entries = document.querySelectorAll('.seminar-entry');
            const items = [];
            entries.forEach(div => {
                const topic = div.querySelector('.seminar-topic').value.trim();
                const fileInput = div.querySelector('.seminar-file');
                const existingPath = div.querySelector('.existing-path')?.value || null;
                if (topic) items.push({ name: topic, description: 'Seminar', score: 2, fileInput: fileInput, existing_path: existingPath });
            });
            await saveBulkActivities('student/co-curricular/bulk', 'Seminars Delivered', items);
        });
    }

    // Class Rep
    const repYes = document.getElementById('repYes');
    const repNo = document.getElementById('repNo');
    const repDetails = document.getElementById('repDetails');
    const addRepBtn = document.getElementById('addRepBtn');
    const repContainer = document.getElementById('repListContainer');
    const saveRepBtn = document.getElementById('saveRepBtn');

    if (repYes) {
        const toggle = () => repDetails.classList.toggle('hidden', !repYes.checked);
        repYes.addEventListener('change', toggle);
        repNo.addEventListener('change', toggle);
    }

    if (addRepBtn) {
        addRepBtn.addEventListener('click', () => {
            const div = document.createElement('div');
            div.className = 'rep-entry dynamic-entry';
            div.innerHTML = `
                <label class="form-label">Semester (e.g. 3, 4)</label>
                <input type="number" class="rep-semester input-full" placeholder="Enter Semester" min="1" max="8">
                <input type="file" class="rep-file input-full mt-2" accept=".pdf,.doc,.docx,.jpg,.jpeg,.png">
            `;
            repContainer.appendChild(div);
        });
    }

    if (saveRepBtn) {
        saveRepBtn.addEventListener('click', async (e) => {
            e.preventDefault();
            const entries = document.querySelectorAll('.rep-entry');
            const items = [];
            entries.forEach(div => {
                const sem = div.querySelector('.rep-semester').value.trim();
                const fileInput = div.querySelector('.rep-file');
                const existingPath = div.querySelector('.existing-path')?.value || null;
                if (sem) items.push({ name: `Semester ${sem}`, description: 'Class Representative', score: 2, fileInput: fileInput, existing_path: existingPath });
            });
            await saveBulkActivities('student/co-curricular/bulk', 'Class Representative', items);
        });
    }

    // Membership
    const membershipYes = document.getElementById('membershipYes');
    const membershipNo = document.getElementById('membershipNo');
    const membershipDetails = document.getElementById('membershipDetails');
    const addMembershipBtn = document.getElementById('addMembershipBtn');
    const membershipContainer = document.getElementById('membershipListContainer');
    const saveMembershipBtn = document.getElementById('saveMembershipBtn');

    if (membershipYes) {
        const toggle = () => membershipDetails.classList.toggle('hidden', !membershipYes.checked);
        membershipYes.addEventListener('change', toggle);
        membershipNo.addEventListener('change', toggle);
    }

    if (addMembershipBtn) {
        addMembershipBtn.addEventListener('click', () => {
            const div = document.createElement('div');
            div.className = 'membership-entry dynamic-entry';
            div.innerHTML = `
                <label class="form-label">Professional Body Name</label>
                <input type="text" class="membership-name input-full" placeholder="Enter Body Name">
                <input type="file" class="membership-file input-full mt-2" accept=".pdf,.doc,.docx,.jpg,.jpeg,.png">
            `;
            membershipContainer.appendChild(div);
        });
    }

    if (saveMembershipBtn) {
        saveMembershipBtn.replaceWith(saveMembershipBtn.cloneNode(true));
        document.getElementById('saveMembershipBtn').addEventListener('click', async (e) => {
            e.preventDefault();
            const entries = document.querySelectorAll('.membership-entry');
            const items = [];
            entries.forEach(div => {
                const name = div.querySelector('.membership-name').value.trim();
                const fileInput = div.querySelector('.membership-file');
                const existingPath = div.querySelector('.existing-path')?.value || null;
                if (name) items.push({ name: name, description: 'Member of Professional Body', score: 1, fileInput: fileInput, existing_path: existingPath });
            });
            await saveBulkActivities('student/co-curricular/bulk', 'Professional Body Membership', items);
        });
    }

    // MOOCs
    const moocsYes = document.getElementById('moocsYes');
    const moocsNo = document.getElementById('moocsNo');
    const moocsDetails = document.getElementById('moocsDetails');
    const addMoocsBtn = document.getElementById('addMoocsBtn');
    const moocsContainer = document.getElementById('moocsListContainer');
    const saveMoocsBtn = document.getElementById('saveMoocsBtn');

    if (moocsYes) {
        const toggle = () => moocsDetails.classList.toggle('hidden', !moocsYes.checked);
        moocsYes.addEventListener('change', toggle);
        moocsNo.addEventListener('change', toggle);
    }

    if (addMoocsBtn) {
        addMoocsBtn.addEventListener('click', () => {
            const div = document.createElement('div');
            div.className = 'moocs-entry dynamic-entry';
            div.innerHTML = `
                <label class="form-label">Certification Name</label>
                <input type="text" class="moocs-name input-full" placeholder="Enter Certification Name">
                <input type="file" class="moocs-file input-full mt-2" accept=".pdf,.doc,.docx,.jpg,.jpeg,.png">
            `;
            moocsContainer.appendChild(div);
        });
    }

    if (saveMoocsBtn) {
        saveMoocsBtn.replaceWith(saveMoocsBtn.cloneNode(true));
        document.getElementById('saveMoocsBtn').addEventListener('click', async (e) => {
            e.preventDefault();
            const entries = document.querySelectorAll('.moocs-entry');
            const items = [];
            entries.forEach(div => {
                const name = div.querySelector('.moocs-name').value.trim();
                const fileInput = div.querySelector('.moocs-file');
                const existingPath = div.querySelector('.existing-path')?.value || null;
                if (name) items.push({ name: name, description: 'MOOCs Certification', score: 2, fileInput: fileInput, existing_path: existingPath });
            });
            await saveBulkActivities('student/co-curricular/bulk', 'MOOCs Certification', items);
        });
    }

    // Internship
    const internshipYes = document.getElementById('internshipYes');
    const internshipNo = document.getElementById('internshipNo');
    const internshipDetails = document.getElementById('internshipDetails');
    const addInternshipBtn = document.getElementById('addInternshipBtn');
    const internshipContainer = document.getElementById('internshipListContainer');
    const saveInternshipBtn = document.getElementById('saveInternshipBtn');

    if (internshipYes) {
        const toggle = () => internshipDetails.classList.toggle('hidden', !internshipYes.checked);
        internshipYes.addEventListener('change', toggle);
        internshipNo.addEventListener('change', toggle);
    }

    if (addInternshipBtn) {
        addInternshipBtn.addEventListener('click', () => {
            const div = document.createElement('div');
            div.className = 'internship-entry dynamic-entry';
            div.innerHTML = `
                <div style="display: grid; grid-template-columns: 2fr 1fr; gap: 10px;">
                    <div>
                        <label class="form-label">Internship/Consultancy</label>
                        <input type="text" class="internship-name input-full" placeholder="Enter Description">
                    </div>
                    <div>
                        <label class="form-label">Duration</label>
                        <input type="text" class="internship-duration input-full" placeholder="e.g. 2 months">
                    </div>
                </div>
                <input type="file" class="internship-file input-full mt-2" accept=".pdf,.doc,.docx,.jpg,.jpeg,.png">
            `;
            internshipContainer.appendChild(div);
        });
    }

    if (saveInternshipBtn) {
        saveInternshipBtn.replaceWith(saveInternshipBtn.cloneNode(true));
        document.getElementById('saveInternshipBtn').addEventListener('click', async (e) => {
            e.preventDefault();
            const entries = document.querySelectorAll('.internship-entry');
            const items = [];
            entries.forEach(div => {
                const name = div.querySelector('.internship-name').value.trim();
                const duration = div.querySelector('.internship-duration').value.trim();
                const fileInput = div.querySelector('.internship-file');
                const existingPath = div.querySelector('.existing-path')?.value || null;
                if (name) items.push({ name: name, description: `Duration: ${duration}`, score: 2, fileInput: fileInput, existing_path: existingPath });
            });
            await saveBulkActivities('student/co-curricular/bulk', 'Internship/Consultancy', items);
        });
    }

    // Awards
    const awardsYes = document.getElementById('awardsYes');
    const awardsNo = document.getElementById('awardsNo');
    const awardsDetails = document.getElementById('awardsDetails');
    const addAwardsBtn = document.getElementById('addAwardsBtn');
    const awardsContainer = document.getElementById('awardsListContainer');
    const saveAwardsBtn = document.getElementById('saveAwardsBtn');

    if (awardsYes) {
        const toggle = () => awardsDetails.classList.toggle('hidden', !awardsYes.checked);
        awardsYes.addEventListener('change', toggle);
        awardsNo.addEventListener('change', toggle);
    }

    if (addAwardsBtn) {
        addAwardsBtn.addEventListener('click', () => {
            const div = document.createElement('div');
            div.className = 'awards-entry dynamic-entry';
            div.innerHTML = `
                <label class="form-label">Award / Contribution</label>
                <input type="text" class="awards-name input-full" placeholder="Enter Details">
                <input type="file" class="awards-file input-full mt-2" accept=".pdf,.doc,.docx,.jpg,.jpeg,.png">
            `;
            awardsContainer.appendChild(div);
        });
    }

    if (saveAwardsBtn) {
        saveAwardsBtn.replaceWith(saveAwardsBtn.cloneNode(true));
        document.getElementById('saveAwardsBtn').addEventListener('click', async (e) => {
            e.preventDefault();
            const entries = document.querySelectorAll('.awards-entry');
            const items = [];
            entries.forEach(div => {
                const name = div.querySelector('.awards-name').value.trim();
                const fileInput = div.querySelector('.awards-file');
                const existingPath = div.querySelector('.existing-path')?.value || null;
                if (name) items.push({ name: name, description: 'Significant Contribution', score: 2, fileInput: fileInput, existing_path: existingPath });
            });
            await saveBulkActivities('student/co-curricular/bulk', 'Award/Contribution', items);
        });
    }

    // --- Extracurricular UI Logic ---
    // University Team
    const uniTeamYes = document.getElementById('uniTeamYes');
    const uniTeamNo = document.getElementById('uniTeamNo');
    const uniTeamDetails = document.getElementById('uniTeamDetails');
    const addUniTeamBtn = document.getElementById('addUniTeamBtn');
    const uniTeamContainer = document.getElementById('uniTeamListContainer');
    const saveUniTeamBtn = document.getElementById('saveUniTeamBtn');

    if (uniTeamYes) {
        const toggle = () => uniTeamDetails.classList.toggle('hidden', !uniTeamYes.checked);
        uniTeamYes.addEventListener('change', toggle);
        uniTeamNo.addEventListener('change', toggle);
    }

    if (addUniTeamBtn) {
        addUniTeamBtn.addEventListener('click', () => {
            const div = document.createElement('div');
            div.className = 'uni-team-entry dynamic-entry dynamic-entry-grid';
            div.innerHTML = `
                <div>
                    <label class="form-label">Activity/Sport Name</label>
                    <input type="text" class="uni-team-name input-full" placeholder="Enter Activity Name">
                </div>
                <div>
                    <label class="form-label">Type</label>
                    <select class="uni-team-type input-full">
                        <option value="individual">Individual (3 Marks)</option>
                        <option value="group">Group (2 Marks)</option>
                    </select>
                </div>
                 <div style="grid-column: 1 / -1;">
                    <input type="file" class="uni-team-file input-full mt-2" accept=".pdf,.doc,.docx,.jpg,.jpeg,.png">
                </div>
            `;
            uniTeamContainer.appendChild(div);
        });
    }

    if (saveUniTeamBtn) {
        saveUniTeamBtn.addEventListener('click', async (e) => {
            e.preventDefault();
            const entries = document.querySelectorAll('.uni-team-entry');
            const items = [];
            entries.forEach(div => {
                const name = div.querySelector('.uni-team-name').value.trim();
                const type = div.querySelector('.uni-team-type').value;
                const fileInput = div.querySelector('.uni-team-file');
                const existingPath = div.querySelector('.existing-path')?.value || null;
                if (name) {
                    items.push({
                        name: name,
                        description: `Selection Type: ${type}`,
                        level: type === 'individual' ? 'Individual' : 'Group',
                        score: type === 'individual' ? 3 : 2,
                        fileInput: fileInput,
                        existing_path: existingPath
                    });
                }
            });
            await saveBulkActivities('student/extracurricular/bulk', 'University Team Selection', items);
        });
    }

    // Outside College
    const outsideYes = document.getElementById('outsideYes');
    const outsideNo = document.getElementById('outsideNo');
    const outsideDetails = document.getElementById('outsideDetails');
    const addOutsideBtn = document.getElementById('addOutsideBtn');
    const outsideContainer = document.getElementById('outsideListContainer');
    const saveOutsideBtn = document.getElementById('saveOutsideBtn');

    if (outsideYes) {
        const toggle = () => outsideDetails.classList.toggle('hidden', !outsideYes.checked);
        outsideYes.addEventListener('change', toggle);
        outsideNo.addEventListener('change', toggle);
    }

    if (addOutsideBtn) {
        addOutsideBtn.addEventListener('click', () => {
            const div = document.createElement('div');
            div.className = 'outside-entry dynamic-entry dynamic-entry-grid';
            div.innerHTML = `
                <div>
                    <label class="form-label">Event Name</label>
                    <input type="text" class="outside-name input-full" placeholder="Enter Event Name">
                </div>
                <div>
                    <label class="form-label">Achievement</label>
                    <select class="outside-type input-full">
                        <option value="participation">Participation (1 Mark)</option>
                        <option value="prize">I/II Prize Won (5 Marks)</option>
                    </select>
                </div>
                 <div style="grid-column: 1 / -1;">
                    <input type="file" class="outside-file input-full mt-2" accept=".pdf,.doc,.docx,.jpg,.jpeg,.png">
                </div>
            `;
            outsideContainer.appendChild(div);
        });
    }

    if (saveOutsideBtn) {
        saveOutsideBtn.replaceWith(saveOutsideBtn.cloneNode(true));
        document.getElementById('saveOutsideBtn').addEventListener('click', async (e) => {
            e.preventDefault();
            const entries = document.querySelectorAll('.outside-entry');
            const items = [];
            entries.forEach(div => {
                const name = div.querySelector('.outside-name').value.trim();
                const type = div.querySelector('.outside-type').value;
                const fileInput = div.querySelector('.outside-file');
                const existingPath = div.querySelector('.existing-path')?.value || null;
                if (name) items.push({
                    name,
                    description: `Achievement: ${type}`,
                    level: type === 'prize' ? 'Winner' : 'Participant',
                    score: type === 'prize' ? 5 : 1,
                    fileInput: fileInput,
                    existing_path: existingPath
                });
            });
            await saveBulkActivities('student/extracurricular/bulk', 'Outside College Activity', items);
        });
    }

    // Within College
    const withinYes = document.getElementById('withinYes');
    const withinNo = document.getElementById('withinNo');
    const withinDetails = document.getElementById('withinDetails');
    const addWithinBtn = document.getElementById('addWithinBtn');
    const withinContainer = document.getElementById('withinListContainer');
    const saveWithinBtn = document.getElementById('saveWithinBtn');

    if (withinYes) {
        const toggle = () => withinDetails.classList.toggle('hidden', !withinYes.checked);
        withinYes.addEventListener('change', toggle);
        withinNo.addEventListener('change', toggle);
    }

    if (addWithinBtn) {
        addWithinBtn.addEventListener('click', () => {
            const div = document.createElement('div');
            div.className = 'within-entry dynamic-entry dynamic-entry-grid';
            div.innerHTML = `
                <div>
                    <label class="form-label">Event Name</label>
                    <input type="text" class="within-name input-full" placeholder="Enter Event Name">
                </div>
                <div>
                    <label class="form-label">Achievement</label>
                    <select class="within-type input-full">
                        <option value="participation">Participation (1 Mark)</option>
                        <option value="prize">I/II Prize Won (2 Marks)</option>
                    </select>
                </div>
                 <div style="grid-column: 1 / -1;">
                    <input type="file" class="within-file input-full mt-2" accept=".pdf,.doc,.docx,.jpg,.jpeg,.png">
                </div>
            `;
            withinContainer.appendChild(div);
        });
    }

    if (saveWithinBtn) {
        saveWithinBtn.replaceWith(saveWithinBtn.cloneNode(true));
        document.getElementById('saveWithinBtn').addEventListener('click', async (e) => {
            e.preventDefault();
            const entries = document.querySelectorAll('.within-entry');
            const items = [];
            entries.forEach(div => {
                const name = div.querySelector('.within-name').value.trim();
                const type = div.querySelector('.within-type').value;
                const fileInput = div.querySelector('.within-file');
                const existingPath = div.querySelector('.existing-path')?.value || null;
                if (name) items.push({
                    name,
                    description: `Achievement: ${type}`,
                    level: type === 'prize' ? 'Winner' : 'Participant',
                    score: type === 'prize' ? 2 : 1,
                    fileInput: fileInput,
                    existing_path: existingPath
                });
            });
            await saveBulkActivities('student/extracurricular/bulk', 'Within College Activity', items);
        });
    }

    // Tech Fest 
    const techYes = document.getElementById('techYes');
    const techNo = document.getElementById('techNo');
    const techDetails = document.getElementById('techDetails');
    const addTechBtn = document.getElementById('addTechBtn');
    const techContainer = document.getElementById('techListContainer');
    const saveTechBtn = document.getElementById('saveTechBtn');

    if (techYes) {
        const toggle = () => techDetails.classList.toggle('hidden', !techYes.checked);
        techYes.addEventListener('change', toggle);
        techNo.addEventListener('change', toggle);
    }

    if (addTechBtn) {
        addTechBtn.addEventListener('click', () => {
            const div = document.createElement('div');
            div.className = 'tech-entry dynamic-entry dynamic-entry-grid';
            div.innerHTML = `
                <div>
                    <label class="form-label">Role/Event</label>
                    <input type="text" class="tech-name input-full" placeholder="Enter Details">
                </div>
                <div>
                    <label class="form-label">Level</label>
                    <select class="tech-type input-full">
                        <option value="dept">Dept. Level (1 Mark)</option>
                        <option value="college">College Level (2 Marks)</option>
                    </select>
                </div>
                 <div style="grid-column: 1 / -1;">
                    <input type="file" class="tech-file input-full mt-2" accept=".pdf,.doc,.docx,.jpg,.jpeg,.png">
                </div>
            `;
            techContainer.appendChild(div);
        });
    }

    if (saveTechBtn) {
        saveTechBtn.addEventListener('click', async (e) => {
            e.preventDefault();
            const entries = document.querySelectorAll('.tech-entry');
            const items = [];
            entries.forEach(div => {
                const name = div.querySelector('.tech-name').value.trim();
                const type = div.querySelector('.tech-type').value;
                const fileInput = div.querySelector('.tech-file');
                const existingPath = div.querySelector('.existing-path')?.value || null;
                if (name) {
                    items.push({
                        name: name,
                        description: `Level: ${type}`,
                        level: type === 'college' ? 'College' : 'Department',
                        score: type === 'college' ? 2 : 1,
                        fileInput: fileInput,
                        existing_path: existingPath
                    });
                }
            });
            await saveBulkActivities('student/extracurricular/bulk', 'Tech Fest Coordinator', items);
        });
    }

    // Other Coordinator
    const otherCoordYes = document.getElementById('otherCoordYes');
    const otherCoordNo = document.getElementById('otherCoordNo');
    const otherCoordDetails = document.getElementById('otherCoordDetails');
    const addOtherCoordBtn = document.getElementById('addOtherCoordBtn');
    const otherCoordContainer = document.getElementById('otherCoordListContainer');
    const saveOtherCoordBtn = document.getElementById('saveOtherCoordBtn');

    if (otherCoordYes) {
        const toggle = () => otherCoordDetails.classList.toggle('hidden', !otherCoordYes.checked);
        otherCoordYes.addEventListener('change', toggle);
        otherCoordNo.addEventListener('change', toggle);
    }

    if (addOtherCoordBtn) {
        addOtherCoordBtn.addEventListener('click', () => {
            const div = document.createElement('div');
            div.className = 'other-coord-entry dynamic-entry dynamic-entry-grid';
            div.innerHTML = `
                <div>
                    <label class="form-label">Occasion/Role</label>
                    <input type="text" class="other-coord-name input-full" placeholder="Enter Occasion">
                </div>
                <div>
                    <label class="form-label">Level</label>
                    <select class="other-coord-type input-full">
                        <option value="dept">Dept. Level (1 Mark)</option>
                        <option value="college">College Level (2 Marks)</option>
                    </select>
                </div>
                 <div style="grid-column: 1 / -1;">
                    <input type="file" class="other-coord-file input-full mt-2" accept=".pdf,.doc,.docx,.jpg,.jpeg,.png">
                </div>
            `;
            otherCoordContainer.appendChild(div);
        });
    }

    if (saveOtherCoordBtn) {
        saveOtherCoordBtn.addEventListener('click', async (e) => {
            e.preventDefault();
            const entries = document.querySelectorAll('.other-coord-entry');
            const items = [];
            entries.forEach(div => {
                const name = div.querySelector('.other-coord-name').value.trim();
                const type = div.querySelector('.other-coord-type').value;
                const fileInput = div.querySelector('.other-coord-file');
                const existingPath = div.querySelector('.existing-path')?.value || null;
                if (name) {
                    items.push({
                        name: name,
                        description: `Level: ${type}`,
                        level: type === 'college' ? 'College' : 'Department',
                        score: type === 'college' ? 2 : 1,
                        fileInput: fileInput,
                        existing_path: existingPath
                    });
                }
            });
            await saveBulkActivities('student/extracurricular/bulk', 'Other Coordinator', items);
        });
    }

    // Committee
    const committeeYes = document.getElementById('committeeYes');
    const committeeNo = document.getElementById('committeeNo');
    const committeeDetails = document.getElementById('committeeDetails');
    const addCommitteeBtn = document.getElementById('addCommitteeBtn');
    const committeeContainer = document.getElementById('committeeListContainer');
    const saveCommitteeBtn = document.getElementById('saveCommitteeBtn');

    if (committeeYes) {
        const toggle = () => committeeDetails.classList.toggle('hidden', !committeeYes.checked);
        committeeYes.addEventListener('change', toggle);
        committeeNo.addEventListener('change', toggle);
    }

    if (addCommitteeBtn) {
        addCommitteeBtn.addEventListener('click', () => {
            const div = document.createElement('div');
            div.className = 'committee-entry dynamic-entry';
            div.innerHTML = `
                <label class="form-label">Committee Name</label>
                <input type="text" class="committee-name input-full" placeholder="Enter Committee Name">
                <input type="file" class="committee-file input-full mt-2" accept=".pdf,.doc,.docx,.jpg,.jpeg,.png">
            `;
            committeeContainer.appendChild(div);
        });
    }

    if (saveCommitteeBtn) {
        saveCommitteeBtn.addEventListener('click', async (e) => {
            e.preventDefault();
            const entries = document.querySelectorAll('.committee-entry');
            const items = [];
            entries.forEach(div => {
                const name = div.querySelector('.committee-name').value.trim();
                const fileInput = div.querySelector('.committee-file');
                const existingPath = div.querySelector('.existing-path')?.value || null;
                if (name) {
                    items.push({
                        name: name,
                        description: 'Committee Member',
                        level: 'Member',
                        score: 1,
                        fileInput: fileInput,
                        existing_path: existingPath
                    });
                }
            });
            await saveBulkActivities('student/extracurricular/bulk', 'Committee Member', items);
        });
    }

    // NSS
    const nssYes = document.getElementById('nssYes');
    const nssNo = document.getElementById('nssNo');
    const nssDetails = document.getElementById('nssDetails');
    const addNssBtn = document.getElementById('addNssBtn');
    const nssContainer = document.getElementById('nssListContainer');
    const saveNssBtn = document.getElementById('saveNssBtn');

    if (nssYes) {
        const toggle = () => nssDetails.classList.toggle('hidden', !nssYes.checked);
        nssYes.addEventListener('change', toggle);
        nssNo.addEventListener('change', toggle);
    }

    if (addNssBtn) {
        addNssBtn.addEventListener('click', () => {
            const div = document.createElement('div');
            div.className = 'nss-entry dynamic-entry';
            div.innerHTML = `
                <label class="form-label">About Activity</label>
                <input type="text" class="nss-name input-full" placeholder="Enter Activity Description">
                <input type="file" class="nss-file input-full mt-2" accept=".pdf,.doc,.docx,.jpg,.jpeg,.png">
            `;
            nssContainer.appendChild(div);
        });
    }

    if (saveNssBtn) {
        saveNssBtn.addEventListener('click', async (e) => {
            e.preventDefault();
            const entries = document.querySelectorAll('.nss-entry');
            const items = [];
            entries.forEach(div => {
                const name = div.querySelector('.nss-name').value.trim();
                const fileInput = div.querySelector('.nss-file');
                const existingPath = div.querySelector('.existing-path')?.value || null;
                if (name) items.push({ name: name, description: 'Social Service Activity', level: 'Participant', score: 1, fileInput: fileInput, existing_path: existingPath });
            });
            await saveBulkActivities('student/extracurricular/bulk', 'NSS/Social Service', items);
        });
    }

    // Ext Awards
    const extAwardsYes = document.getElementById('extAwardsYes');
    const extAwardsNo = document.getElementById('extAwardsNo');
    const extAwardsDetails = document.getElementById('extAwardsDetails');
    const addExtAwardsBtn = document.getElementById('addExtAwardsBtn');
    const extAwardsContainer = document.getElementById('extAwardsListContainer');
    const saveExtAwardsBtn = document.getElementById('saveExtAwardsBtn');

    if (extAwardsYes) {
        const toggle = () => extAwardsDetails.classList.toggle('hidden', !extAwardsYes.checked);
        extAwardsYes.addEventListener('change', toggle);
        extAwardsNo.addEventListener('change', toggle);
    }

    if (addExtAwardsBtn) {
        addExtAwardsBtn.addEventListener('click', () => {
            const div = document.createElement('div');
            div.className = 'ext-awards-entry dynamic-entry';
            div.innerHTML = `
                <label class="form-label">Award/Contribution</label>
                <input type="text" class="ext-awards-name input-full" placeholder="Enter Details">
                <input type="file" class="ext-awards-file input-full mt-2" accept=".pdf,.doc,.docx,.jpg,.jpeg,.png">
            `;
            extAwardsContainer.appendChild(div);
        });
    }

    if (saveExtAwardsBtn) {
        saveExtAwardsBtn.addEventListener('click', async (e) => {
            e.preventDefault();
            const entries = document.querySelectorAll('.ext-awards-entry');
            const items = [];
            entries.forEach(div => {
                const name = div.querySelector('.ext-awards-name').value.trim();
                const fileInput = div.querySelector('.ext-awards-file');
                const existingPath = div.querySelector('.existing-path')?.value || null;
                if (name) items.push({ name: name, description: 'Contribution', level: 'Recipient', score: 2, fileInput: fileInput, existing_path: existingPath });
            });
            await saveBulkActivities('student/extracurricular/bulk', 'Extracurricular Award', items);
        });
    }

    // Final Submit
    // --- DECLARATION LOGIC ---
    // Signature Preview
    const declSigInput = document.getElementById('declSignature');
    if (declSigInput) {
        declSigInput.addEventListener('change', (e) => {
            const file = e.target.files[0];
            const preview = document.getElementById('signaturePreview');
            const img = preview.querySelector('img');

            if (file) {
                const reader = new FileReader();
                reader.onload = (ev) => {
                    img.src = ev.target.result;
                    preview.style.display = 'block';
                }
                reader.readAsDataURL(file);
            } else {
                preview.style.display = 'none';
            }
        });
    }

    // --- RECOMMENDATION LETTER LOGIC ---
    // File Preview
    const recFile = document.getElementById('recLetterFile');
    if (recFile) {
        recFile.addEventListener('change', (e) => {
            const fileName = e.target.files[0]?.name;
            const preview = document.getElementById('recLetterPreview');
            if (fileName) {
                document.getElementById('recFileName').innerText = fileName;
                preview.style.display = 'block';
            } else {
                preview.style.display = 'none';
            }
        });
    }

    // Save Recommendation
    const saveRecBtn = document.getElementById('saveRecBtn');
    if (saveRecBtn) {
        saveRecBtn.addEventListener('click', async (e) => {
            e.preventDefault();
            const fileInput = document.getElementById('recLetterFile');
            if (!fileInput.files[0]) {
                alert('Please select a file to upload.');
                return;
            }

            const fd = new FormData();
            fd.append('recommendation_letter', fileInput.files[0]);

            try {
                const res = await fetch('student/recommendation', {
                    method: 'POST',
                    body: fd
                });
                if (res.ok) {
                    alert('Recommendation Letter uploaded successfully!');
                    // Refresh view logic or reload
                    window.location.reload();
                } else {
                    const err = await res.json();
                    alert('Error: ' + (err.error || 'Upload failed'));
                }
            } catch (error) {
                console.error(error);
                alert('Network error.');
            }
        });
    }

    // Final Submit
    const finalSubmitBtn = document.getElementById('finalSubmitBtn');
    if (finalSubmitBtn) {
        finalSubmitBtn.addEventListener('click', async () => {
            // 1. Validation
            const place = document.getElementById('declPlace').value.trim();
            const date = document.getElementById('declDate').value.trim();
            const sigFile = document.getElementById('declSignature').files[0];
            const isChecked = document.getElementById('declCheck').checked;

            if (!isChecked) {
                alert('Please accept the declaration to proceed.');
                return;
            }
            if (!place) {
                alert('Please enter the Place in the declaration section.');
                return;
            }
            if (!sigFile) {
                // If it's already submitted (edit mode check? no, final submit implies first time)
                // We'll enforce signature upload for now. 
                // TODO: If we allowed re-submission, we'd check if one exists.
                alert('Please upload your signature.');
                return;
            }

            if (!confirm('Are you sure you want to submit your application? Once submitted, you cannot make changes.')) return;

            // 2. Prepare Data
            const fd = new FormData();
            fd.append('declaration_place', place);
            fd.append('declaration_date', date);
            fd.append('signature', sigFile);

            try {
                const res = await fetch('student/submit', {
                    method: 'POST',
                    body: fd
                });
                const data = await res.json();
                if (res.ok) {
                    alert(data.message);
                    window.location.reload();
                } else {
                    alert('Error: ' + data.error);
                }
            } catch (err) {
                console.error(err);
                alert('Network error during submission.');
            }
        });
    }


    // Initialize
    initDashboard();

});
