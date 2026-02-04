<?php require_once __DIR__ . '/src/includes/auth_check.php'; require_auth(['admin']); ?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Evaluate Student | Best Outgoing Student</title>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Outfit:wght@300;400;500;600;700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <link rel="stylesheet" href="css/style.css">
    <style>
        .evaluate-page-container {
            height: 100vh;
            display: flex;
            flex-direction: column;
            background: #fff;
        }

        .evaluate-header {
            padding: 1rem 2rem;
            border-bottom: 1px solid var(--border-color);
            display: flex;
            justify-content: space-between;
            align-items: center;
            background: #fff;
            box-shadow: var(--shadow-sm);
            z-index: 10;
        }

        .evaluate-body-split {
            display: grid;
            grid-template-columns: 1fr 1fr;
            flex: 1;
            overflow: hidden;
        }

        @media (max-width: 992px) {
            .evaluate-body-split {
                grid-template-columns: 1fr;
                overflow-y: auto;
            }
        }

        .details-col {
            padding: 2rem;
            border-right: 1px solid var(--border-color);
            overflow-y: auto;
            background: #f8fafc;
        }

        .scoring-col {
            padding: 2rem;
            overflow-y: auto;
            background: #fff;
        }

        .back-btn {
            display: flex;
            align-items: center;
            gap: 0.5rem;
            color: var(--text-muted);
            font-weight: 600;
            transition: color 0.2s;
            cursor: pointer;
        }

        .back-btn:hover {
            color: var(--primary-color);
        }

        .profile-header-mini {
            display: flex;
            align-items: center;
            gap: 1rem;
        }

        .avatar-mini {
            width: 40px;
            height: 40px;
            border-radius: 50%;
            background: var(--primary-light);
            display: flex;
            align-items: center;
            justify-content: center;
            overflow: hidden;
        }
    </style>
</head>

<body class="admin-body">
    <div class="evaluate-page-container">
        <header class="evaluate-header">
            <div class="profile-header-mini">
                <div class="back-btn" onclick="window.location.href='admin-dashboard.php'">
                    <i class="fa-solid fa-arrow-left"></i>
                </div>
                <div class="avatar-mini" id="studentAvatar"></div>
                <div>
                    <h2 id="studentName" style="margin:0; font-size:1.2rem;">Loading...</h2>
                    <p id="studentMeta" style="margin:0; font-size:0.8rem; color:var(--text-muted);">Roll Number | Dept
                    </p>
                </div>
            </div>
            <div class="header-actions">
                <button onclick="window.location.href='admin-dashboard.php'" class="btn-secondary"
                    style="padding: 0.5rem 1rem;">
                    Back to Dashboard
                </button>
            </div>
        </header>

        <main class="evaluate-body-split">
            <!-- Left: Submissions Details -->
            <div class="details-col">
                <div class="tabs">
                    <button class="tab-btn active">Student Submissions</button>
                </div>
                <div id="submissionDetails" class="submission-scroll">
                    <!-- Populated by JS -->
                    <div style="text-align:center; padding: 2rem;">
                        <i class="fa-solid fa-circle-notch fa-spin fa-2x" style="color:var(--primary-color);"></i>
                        <p>Loading details...</p>
                    </div>
                </div>
            </div>

            <!-- Right: Scoring Form -->
            <div class="scoring-col">
                <div class="tabs">
                    <button class="tab-btn active">Evaluation & Scoring</button>
                </div>
                <div id="evaluationTab" class="tab-content active" style="margin-top:1.5rem;">
                    <form id="scoreForm">
                        <input type="hidden" id="evalUserId">

                        <!-- Academic Granular -->
                        <div class="slider-group">
                            <label>Academic: CGPA Score (Max 55) <span class="score-display"
                                    id="valAcademicCGPA">0</span></label>
                            <input type="range" id="scAcademicCGPA" min="0" max="55" step="0.1" value="0"
                                oninput="document.getElementById('valAcademicCGPA').innerText = this.value">
                        </div>
                        <div class="slider-group">
                            <label>Academic: Honours/Minors (Max 5) <span class="score-display"
                                    id="valAcademicHonours">0</span></label>
                            <input type="range" id="scAcademicHonours" min="0" max="5" step="0.1" value="0"
                                oninput="document.getElementById('valAcademicHonours').innerText = this.value">
                        </div>
                        <div class="slider-group">
                            <label>Academic: Competitive Exams (Max 5) <span class="score-display"
                                    id="valAcademicExams">0</span></label>
                            <input type="range" id="scAcademicExams" min="0" max="5" step="0.1" value="0"
                                oninput="document.getElementById('valAcademicExams').innerText = this.value">
                        </div>

                        <div class="slider-group">
                            <label>Co-Curricular (Max 15) <span class="score-display" id="valCo">0</span></label>
                            <input type="range" id="scCo" min="0" max="15" step="0.1" value="0"
                                oninput="document.getElementById('valCo').innerText = this.value">
                            <small style="color:var(--text-muted);">Sum of individual items: <span
                                    id="valCoSum">0</span></small>
                        </div>

                        <div class="slider-group">
                            <label>Extracurricular (Max 15) <span class="score-display" id="valExtra">0</span></label>
                            <input type="range" id="scExtra" min="0" max="15" step="0.1" value="0"
                                oninput="document.getElementById('valExtra').innerText = this.value">
                            <small style="color:var(--text-muted);">Sum of individual items: <span
                                    id="valExtraSum">0</span></small>
                        </div>

                        <button type="submit" class="btn-primary full-width" style="margin-top:1rem;">
                            <i class="fa-solid fa-save"></i> Save Final Evaluation
                        </button>
                    </form>
                </div>
            </div>
        </main>
    </div>

    <!-- Document Preview Modal -->
    <div id="docPreviewModal" class="modal-overlay" style="display:none; z-index:2000;">
        <div class="modal-content" style="width:80%; height:90vh; max-width:1000px;">
            <div class="modal-header">
                <h3 style="margin:0;">Document Preview</h3>
                <button class="close-modal-btn" onclick="closeDocModal()"><i class="fa-solid fa-times"></i></button>
            </div>
            <div class="modal-body" style="padding:0; height:100%;">
                <iframe id="docFrame" style="width:100%; height:100%; border:none;" src=""></iframe>
            </div>
        </div>
    </div>

    <!-- Scripts -->
    <script src="js/responsive.js"></script>
    <script src="js/evaluate.js?v=6"></script>
</body>

</html>