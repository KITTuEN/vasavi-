<?php require_once __DIR__ . '/src/includes/auth_check.php'; require_auth(['panel']); ?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Evaluate Student | Panel</title>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Outfit:wght@300;400;500;600;700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <link rel="stylesheet" href="css/style.css">
    <style>
        .admin-body { background: #f8fafc; font-family: 'Outfit', sans-serif; }
        .dashboard-container { display: flex; min-height: 100vh; }
        .sidebar { width: 260px; background: #fff; border-right: 1px solid var(--border-color); display: flex; flex-direction: column; position: fixed; height: 100vh; z-index: 100; }
        .sidebar-header { padding: 1.5rem; display: flex; align-items: center; gap: 0.75rem; border-bottom: 1px solid var(--border-color); }
        .sidebar-header h2 { font-size: 1.25rem; font-weight: 700; color: var(--text-dark); margin: 0; }
        .logo-icon { width: 40px; height: 40px; background: var(--primary-color); color: #fff; border-radius: 8px; display: flex; align-items: center; justify-content: center; font-size: 1.25rem; }
        .nav-links { padding: 1.5rem 1rem; flex: 1; display: flex; flex-direction: column; gap: 0.5rem; }
        .nav-item { display: flex; align-items: center; gap: 0.75rem; padding: 0.8rem 1rem; border-radius: 8px; color: var(--text-muted); text-decoration: none; font-weight: 500; transition: all 0.2s; }
        .nav-item:hover, .nav-item.active { background: #f1f5f9; color: var(--primary-color); }
        .sidebar-footer { padding: 1.5rem; border-top: 1px solid var(--border-color); }
        .logout-btn { display: flex; align-items: center; gap: 0.75rem; width: 100%; border: none; background: #fee2e2; color: #ef4444; padding: 0.8rem 1rem; border-radius: 8px; cursor: pointer; font-weight: 500; }
        
        .main-content { flex: 1; margin-left: 260px; padding: 2rem; }
        .top-bar { display: flex; justify-content: space-between; align-items: center; margin-bottom: 2rem; }
        .top-bar .back-link { color: var(--text-muted); text-decoration: none; font-weight: 500; display: flex; align-items: center; gap: 0.5rem; transition: color 0.2s; }
        .top-bar .back-link:hover { color: var(--primary-color); }

        .content-card { background: #fff; border-radius: 12px; border: 1px solid var(--border-color); overflow: hidden; padding: 2rem; }
        
        /* Reusing Detail Styles */
        .section-title { font-size: 1.1rem; font-weight: 700; margin: 2rem 0 1rem; color: var(--text-dark); display: flex; align-items: center; gap: 0.5rem; padding-bottom: 0.5rem; border-bottom: 2px solid #f1f5f9; }
        .info-grid { display: grid; grid-template-columns: repeat(auto-fit, minmax(150px, 1fr)); gap: 1rem; }
        .info-card { background: #f8fafc; padding: 1rem; border-radius: 8px; border: 1px solid var(--border-color); }
        .info-card label { display: block; font-size: 0.8rem; color: var(--text-muted); margin-bottom: 0.25rem; }
        .info-card .value { font-size: 1.1rem; font-weight: 600; color: var(--text-dark); }
        
        .custom-table { width: 100%; border-collapse: collapse; margin-top: 1rem; }
        .custom-table th, .custom-table td { padding: 1rem; text-align: left; border-bottom: 1px solid var(--border-color); }
        .custom-table th { background: #f8fafc; font-weight: 600; color: var(--text-muted); }
        
        .evaluation-box { background: #fff; border: 2px solid #e2e8f0; border-radius: 12px; padding: 2rem; margin-bottom: 2rem; box-shadow: 0 10px 15px -3px rgba(0,0,0,0.1); }
        .score-slider-container { display: flex; align-items: center; gap: 2rem; margin: 2rem 0; }
        .score-slider { flex: 1; height: 10px; background: #e2e8f0; border-radius: 5px; -webkit-appearance: none; }
        .score-slider::-webkit-slider-thumb { -webkit-appearance: none; width: 32px; height: 32px; background: var(--primary-color); border-radius: 50%; cursor: pointer; border: 4px solid #fff; box-shadow: 0 4px 6px rgba(0,0,0,0.1); }
        .score-display { width: 64px; height: 64px; background: var(--primary-color); color: #fff; border-radius: 16px; display: flex; align-items: center; justify-content: center; font-size: 1.75rem; font-weight: 700; }
        
        .file-link { color: var(--primary-color); text-decoration: none; font-weight: 500; display: inline-flex; align-items: center; gap: 0.4rem; padding: 0.4rem 0.8rem; background: #eff6ff; border-radius: 6px; transition: background 0.2s; }
        .file-link:hover { background: #dbeafe; }
        
        .header-profile { display: flex; gap: 1.5rem; align-items: center; margin-bottom: 2rem; }
        .profile-avatar { width: 80px; height: 80px; border-radius: 50%; background: #e2e8f0; overflow: hidden; display: flex; align-items: center; justify-content: center; font-size: 2rem; font-weight: 700; color: #64748b; }
    </style>
</head>
<body class="admin-body">
    <div class="dashboard-container">
        <!-- Sidebar -->
        <nav class="sidebar">
            <div class="sidebar-header">
                <div class="logo-icon">📋</div>
                <h2>Panel View</h2>
            </div>
            <div class="nav-links">
                <a href="panel-dashboard" class="nav-item"><i class="fa-solid fa-list-check"></i> Top 20 Students</a>
                <a href="#" class="nav-item active"><i class="fa-solid fa-user-pen"></i> Evaluation</a>
            </div>
            <div class="sidebar-footer">
                <button onclick="window.location.href='auth/logout'" class="logout-btn">
                    <i class="fa-solid fa-right-from-bracket"></i> Logout
                </button>
            </div>
        </nav>

        <!-- Main Content -->
        <main class="main-content">
            <header class="top-bar">
                <button class="hamburger-menu" id="sidebarToggle">
                    <i class="fa-solid fa-bars"></i>
                </button>
                <a href="panel-dashboard" class="back-link"><i class="fa-solid fa-arrow-left"></i>  </a>
                <div class="welcome-text"></div>
            </header>

            <script>
                document.addEventListener('DOMContentLoaded', () => {
                   const toggle = document.getElementById('sidebarToggle');
                   const sidebar = document.querySelector('.sidebar');
                   if(toggle && sidebar) {
                       toggle.addEventListener('click', () => {
                           sidebar.classList.toggle('active');
                       });
                   }
                });
            </script>

            <div id="loadingState" style="text-align:center; padding: 5rem;">
                <i class="fa-solid fa-spinner fa-spin" style="font-size: 3rem; color: var(--primary-color);"></i>
                <p style="margin-top: 1rem; color: var(--text-muted);">Loading student documents...</p>
            </div>

            <div id="errorState" style="display:none; text-align:center; padding: 5rem; color: #ef4444;">
                <i class="fa-solid fa-circle-exclamation" style="font-size: 3rem;"></i>
                <p style="margin-top: 1rem; font-size: 1.2rem;" id="errorMessage">Failed to load data</p>
                <a href="panel-dashboard" class="btn-action" style="display:inline-block; margin-top:1rem; text-decoration:none;">Go Back</a>
            </div>

            <div id="contentArea" style="display:none;">
                <!-- Profile Header -->
                <div class="header-profile">
                    <div class="profile-avatar" id="stAvatar"></div>
                    <div>
                        <h1 style="margin:0; font-size:2rem; color:var(--text-dark);" id="stName">Student Name</h1>
                        <p style="margin:0.5rem 0 0; color:var(--text-muted); font-size:1.1rem;" id="stRoll">Roll No | Dept</p>
                    </div>
                </div>

                <!-- Evaluation Section (First for focus) -->
                <div class="evaluation-box">
                    <h3 style="margin-top:0; color:var(--primary-color); border-bottom:1px solid #e2e8f0; padding-bottom:1rem; display:flex; justify-content:space-between;">
                        <span><i class="fa-solid fa-user-pen"></i> Interview Assessment</span>
                        <span style="font-size:0.9rem; font-weight:normal; color:var(--text-muted);">Score Limit: 5.0</span>
                    </h3>
                    
                    <div class="score-slider-container">
                        <span style="font-weight:600; color:var(--text-muted);">Score:</span>
                        <input type="range" min="0" max="5" step="0.5" value="0" class="score-slider" id="evalSlider">
                        <div class="score-display" id="evalDisplay">0</div>
                    </div>
                    
                    <div style="display:flex; justify-content:flex-end;">
                        <button id="saveScoreBtn" class="btn-action" style="padding: 1rem 2rem; font-size:1.1rem; border-radius:8px;">
                            <i class="fa-solid fa-save"></i> Save Interview Score
                        </button>
                    </div>
                </div>

                <div class="content-card">
                    <h4 class="section-title"><i class="fa-solid fa-book"></i> Academic Performance</h4>
                    <div class="info-grid">
                        <div class="info-card"><label>CGPA</label><div class="value" id="acCgpa">--</div></div>
                        <div class="info-card"><label>SGPA (Sem 1)</label><div class="value" id="acS1">--</div></div>
                        <div class="info-card"><label>SGPA (Sem 2)</label><div class="value" id="acS2">--</div></div>
                        <div class="info-card"><label>SGPA (Sem 3)</label><div class="value" id="acS3">--</div></div>
                        <div class="info-card"><label>SGPA (Sem 4)</label><div class="value" id="acS4">--</div></div>
                        <div class="info-card"><label>SGPA (Sem 5)</label><div class="value" id="acS5">--</div></div>
                        <div class="info-card"><label>SGPA (Sem 6)</label><div class="value" id="acS6">--</div></div>
                        <div class="info-card"><label>SGPA (Sem 7)</label><div class="value" id="acS7">--</div></div>
                        <div class="info-card"><label>SGPA (Sem 8)</label><div class="value" id="acS8">--</div></div>
                    </div>
                    
                    <div style="margin-top: 1.5rem; display: grid; gap: 1rem;">
                        <div class="info-card" style="background: #fff; border: 1px solid var(--border-color);">
                            <label style="font-weight: 600; color: var(--primary-color); margin-bottom: 0.5rem; display: block;">HONOURS / MINORS</label>
                            <div id="acHonours" style="font-size: 0.95rem; line-height: 1.5;">--</div>
                        </div>
                        <div class="info-grid" style="grid-template-columns: 1fr 1fr;">
                            <div class="info-card">
                                <label>COMPETITIVE EXAMS</label>
                                <div class="value" id="acExams" style="font-weight: 500;">--</div>
                            </div>
                            <div class="info-card">
                                <label>PROJECTS</label>
                                <div class="value" id="acProjects" style="font-weight: 500;">--</div>
                            </div>
                        </div>
                    </div>
                    
                    <div style="margin-top:1.5rem;" id="recLetterContainer"></div>

                    <h4 class="section-title"><i class="fa-solid fa-medal"></i> Co-Curricular Activities</h4>
                    <div id="coContainer"></div>

                    <h4 class="section-title"><i class="fa-solid fa-futbol"></i> Extracurricular Activities</h4>
                    <div id="extraContainer"></div>
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

    <script src="js/responsive.js"></script>
    <script type="module" src="js/panel-evaluate.js"></script>
</body>
</html>
