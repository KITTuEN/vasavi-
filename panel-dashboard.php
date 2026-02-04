<?php require_once __DIR__ . '/src/includes/auth_check.php'; require_auth(['panel']); ?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Panel Dashboard | Best Outgoing Student</title>
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
        .welcome-text h1 { font-size: 1.75rem; font-weight: 700; color: var(--text-dark); margin: 0; }
        .welcome-text p { color: var(--text-muted); margin-top: 0.25rem; }
        
        .content-card { background: #fff; border-radius: 12px; border: 1px solid var(--border-color); overflow: hidden; }
        .card-header { padding: 1.5rem; border-bottom: 1px solid var(--border-color); display: flex; justify-content: space-between; align-items: center; }
        .card-header h3 { margin: 0; font-size: 1.1rem; font-weight: 600; }

        .table-container { width: 100%; overflow-x: auto; }
        .custom-table { width: 100%; border-collapse: collapse; }
        .custom-table th, .custom-table td { padding: 1rem 1.5rem; text-align: left; border-bottom: 1px solid var(--border-color); }
        .custom-table th { background: #f8fafc; font-weight: 600; color: var(--text-muted); font-size: 0.85rem; text-transform: uppercase; letter-spacing: 0.5px; }
        .custom-table tr:last-child td { border-bottom: none; }
        .btn-action { background: var(--primary-color); color: #fff; border: none; padding: 0.5rem 1rem; border-radius: 6px; cursor: pointer; font-size: 0.9rem; transition: background 0.2s; }
        .btn-action:hover { background: var(--primary-hover); }

        /* Modal Styles (Moved to global css/style.css) */
        
        .section-title { font-size: 1.1rem; font-weight: 700; margin: 1.5rem 0 1rem; color: var(--text-dark); display: flex; align-items: center; gap: 0.5rem; }
        .info-grid { display: grid; grid-template-columns: repeat(auto-fit, minmax(150px, 1fr)); gap: 1rem; }
        .info-card { background: #fff; padding: 1rem; border-radius: 8px; border: 1px solid var(--border-color); }
        .info-card label { display: block; font-size: 0.8rem; color: var(--text-muted); margin-bottom: 0.25rem; }
        .info-card .value { font-size: 1.1rem; font-weight: 600; color: var(--text-dark); }
        
        .evaluation-box { background: #fff; border: 1px solid #e2e8f0; border-radius: 12px; padding: 1.5rem; margin-top: 1.5rem; box-shadow: 0 4px 6px -1px rgba(0,0,0,0.1); }
        .score-slider-container { display: flex; align-items: center; gap: 1rem; margin: 1.5rem 0; }
        .score-slider { flex: 1; height: 8px; background: #e2e8f0; border-radius: 4px; -webkit-appearance: none; }
        .score-slider::-webkit-slider-thumb { -webkit-appearance: none; width: 24px; height: 24px; background: var(--primary-color); border-radius: 50%; cursor: pointer; border: 2px solid #fff; box-shadow: 0 2px 4px rgba(0,0,0,0.1); }
        .score-display { width: 50px; height: 50px; background: var(--primary-color); color: #fff; border-radius: 12px; display: flex; align-items: center; justify-content: center; font-size: 1.5rem; font-weight: 700; }

        .file-link { color: var(--primary-color); text-decoration: none; font-weight: 500; display: inline-flex; align-items: center; gap: 0.4rem; padding: 0.4rem 0.8rem; background: #eff6ff; border-radius: 6px; transition: background 0.2s; }
        .file-link:hover { background: #dbeafe; }
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
                <a href="#" class="nav-item active"><i class="fa-solid fa-list-check"></i> Top 20 Students</a>
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
                <div class="welcome-text">
                    <h1> </h1>
                    <p> </p>
                </div>
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

            <div class="content-card">
                <div class="card-header">
                    <h3>Top 20 Students (Merit List)</h3>
                    <div style="position: relative; width: 300px;">
                        <i class="fa-solid fa-search" style="position: absolute; left: 1rem; top: 50%; transform: translateY(-50%); color: var(--text-muted);"></i>
                        <input type="text" id="panelSearch" placeholder="Search students..." 
                               style="width: 100%; padding: 0.6rem 1rem 0.6rem 2.5rem; border: 1px solid var(--border-color); border-radius: 8px; outline: none;">
                    </div>
                </div>
                <div class="table-container">
                    <table class="custom-table" id="panelTable">
                        <thead>
                            <tr>
                                <th>Roll No</th>
                                <th>Student Name</th>
                                <th>Department</th>
                                <th>Academic</th>
                                <th>Co-Curr</th>
                                <th>Extracurr</th>
                                <th>Interview</th>
                                <th>Total</th>
                                <th>Action</th>
                            </tr>
                        </thead>
                        <tbody id="panelTableBody">
                            <tr><td colspan="9" style="text-align:center; padding: 3rem;">Loading...</td></tr>
                        </tbody>
                    </table>
                </div>
            </div>
        </main>
    </div>

    <!-- Evaluation Modal -->
   

    <script src="js/responsive.js"></script>
    <script type="module" src="js/panel.js?v=4"></script>
</body>
</html>
