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
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <link rel="stylesheet" href="css/style.css">
    <style>
        .admin-body { background: #f8fafc; font-family: 'Outfit', sans-serif; }
        .dashboard-container { display: flex; min-height: 100vh; overflow-x: hidden; position: relative; }
        
        .sidebar { 
            width: 260px; 
            background: #fff; 
            border-right: 1px solid var(--border-color); 
            display: flex; 
            flex-direction: column; 
            position: fixed; 
            height: 100vh; 
            z-index: 1050; 
            transition: transform 0.3s ease;
        }

        .main-content { 
            flex: 1; 
            margin-left: 260px; 
            padding: 2rem; 
            transition: margin 0.3s ease;
            width: 100%;
        }

        .sidebar-overlay {
            display: none;
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background: rgba(0,0,0,0.5);
            z-index: 1040;
        }

        .sidebar-header { padding: 1.5rem; display: flex; align-items: center; gap: 0.75rem; border-bottom: 1px solid var(--border-color); }
        .sidebar-header h2 { font-size: 1.25rem; font-weight: 700; color: var(--text-dark); margin: 0; }
        .logo-icon { width: 40px; height: 40px; background: var(--primary-color); color: #fff; border-radius: 8px; display: flex; align-items: center; justify-content: center; font-size: 1.25rem; }
        .nav-links { padding: 1.5rem 1rem; flex: 1; display: flex; flex-direction: column; gap: 0.5rem; }
        .nav-item { display: flex; align-items: center; gap: 0.75rem; padding: 0.8rem 1rem; border-radius: 8px; color: var(--text-muted); text-decoration: none; font-weight: 500; transition: all 0.2s; }
        .nav-item:hover, .nav-item.active { background: #f1f5f9; color: var(--primary-color); }
        .sidebar-footer { padding: 1.5rem; border-top: 1px solid var(--border-color); }
        .logout-btn { display: flex; align-items: center; gap: 0.75rem; width: 100%; border: none; background: #fee2e2; color: #ef4444; padding: 0.8rem 1rem; border-radius: 8px; cursor: pointer; font-weight: 500; }
        
        .top-bar { display: flex; justify-content: space-between; align-items: center; margin-bottom: 2rem; }
        
        .student-list-container { display: grid; gap: 1rem; }
        .student-item { background: #fff; padding: 1.25rem; border-radius: 12px; border: 1px solid var(--border-color); display: flex; justify-content: space-between; align-items: center; transition: all 0.2s; cursor: pointer; }
        .student-item:hover { transform: translateY(-2px); box-shadow: var(--shadow-sm); border-color: var(--primary-color); }
        
        .empty-state { text-align: center; padding: 4rem 2rem; color: var(--text-muted); }
        .empty-state i { font-size: 3rem; margin-bottom: 1rem; opacity: 0.5; }

        @media (max-width: 991.98px) {
            .sidebar { transform: translateX(-100%); }
            .sidebar.show { transform: translateX(0); }
            .sidebar-overlay.show { display: block; }
            .main-content { margin-left: 0; padding: 1.5rem; }
        }
    </style>
</head>
<body class="admin-body">
    <div class="sidebar-overlay" id="sidebarOverlay"></div>

    <div class="dashboard-container">
        <!-- Sidebar -->
        <nav class="sidebar" id="sidebar">
            <div class="sidebar-header">
                <div class="logo-icon">📋</div>
                <h2>Panel View</h2>
                <button class="btn btn-sm d-lg-none ms-auto" id="closeSidebar"><i class="fa-solid fa-times"></i></button>
            </div>
            <div class="nav-links">
                <a href="panel-dashboard" class="nav-item active"><i class="fa-solid fa-list-check"></i> Assigned Students</a>
                <a href="admin-students.php" class="nav-item"><i class="fa-solid fa-users"></i> All Students</a>
            </div>
            <div class="sidebar-footer">
                <button id="logoutBtn" class="logout-btn">
                    <i class="fa-solid fa-right-from-bracket"></i> Logout
                </button>
            </div>
        </nav>

        <!-- Main Content -->
        <main class="main-content">
            <header class="top-bar">
                <div class="d-flex align-items-center gap-3">
                    <button class="btn btn-outline-secondary d-lg-none" id="sidebarToggle">
                        <i class="fa-solid fa-bars"></i>
                    </button>
                    <h1 style="font-size: 1.5rem; font-weight: 700; color: var(--text-dark); margin:0;" class="d-none d-sm-block">Assigned Students</h1>
                    <h1 style="font-size: 1.2rem; font-weight: 700; color: var(--text-dark); margin:0;" class="d-block d-sm-none">Assigned</h1>
                </div>
                <div class="welcome-text" id="welcomeText"></div>
            </header>

            <div id="loading" style="text-align:center; padding: 3rem;">
                <i class="fa-solid fa-spinner fa-spin" style="font-size: 2rem; color: var(--primary-color);"></i>
            </div>

            <div id="studentList" class="student-list-container"></div>
        </main>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
    <script type="module" src="js/panel-dashboard.js"></script>
    <script>
        document.addEventListener('DOMContentLoaded', () => {
            const sidebar = document.getElementById('sidebar');
            const overlay = document.getElementById('sidebarOverlay');
            const toggle = document.getElementById('sidebarToggle');
            const close = document.getElementById('closeSidebar');

            function toggleSidebar() {
                sidebar.classList.toggle('show');
                overlay.classList.toggle('show');
            }

            if(toggle) toggle.addEventListener('click', toggleSidebar);
            if(close) close.addEventListener('click', toggleSidebar);
            if(overlay) overlay.addEventListener('click', toggleSidebar);
        });
    </script>
</body>
</html>
