<?php require_once __DIR__ . '/src/includes/auth_check.php'; require_auth(['admin']); ?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Dashboard | Best Outgoing Student</title>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Outfit:wght@300;400;500;600;700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <link rel="stylesheet" href="css/style.css">
    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
    <style>
        .nav-item {
            cursor: pointer;
            border: none;
            background: none;
            width: 100%;
            text-align: left;
            transition: all 0.3s;
        }

        .section-content {
            display: none;
        }

        .section-content.active {
            display: block;
        }

        .chart-container {
            background: #ffffff;
            border-radius: 12px;
            padding: 1.5rem;
            margin-top: 1rem;
            border: 1px solid var(--border-color);
            box-shadow: var(--shadow-sm);
            position: relative;
            min-height: 350px;
        }

        .charts-row {
            display: grid;
            grid-template-columns: 1fr 1fr;
            gap: 1.5rem;
            margin-top: 2rem;
        }

        @media (max-width: 992px) {
            .charts-row {
                grid-template-columns: 1fr;
            }
        }
    </style>
</head>

<body class="admin-body">
    <div class="dashboard-container">
        <!-- Sidebar -->
        <nav class="sidebar">
            <div class="sidebar-header">
                <div class="logo-icon">
                    <i class="fa-solid fa-graduation-cap"></i>
                </div>
                <h2>AdminPanel</h2>
            </div>

            <div class="nav-links">
                <a href="admin-dashboard.php" class="nav-item active">
                    <i class="fa-solid fa-chart-line"></i>
                    <span>Overview</span>
                </a>
                <a href="admin-students.php" class="nav-item">
                    <i class="fa-solid fa-users"></i>
                    <span>Students</span>
                </a>
                <a href="admin-performance.php" class="nav-item">
                    <i class="fa-solid fa-trophy"></i>
                    <span>Performance</span>
                </a>
            </div>

            <div class="sidebar-footer">
                <button id="logoutBtn" class="logout-btn">
                    <i class="fa-solid fa-right-from-bracket"></i>
                    <span>Logout</span>
                </button>
            </div>
        </nav>

        <!-- Main Content -->
        <main class="main-content">
            <header class="top-bar">
                <div class="welcome-text"></div>
            </header>

            <div class="content-wrapper">
                <!-- Overview Section -->
                <div id="overviewSection" class="section-content active">
                    <!-- Stats Row -->
                    <div class="stats-grid">
                        <div class="stat-card">
                            <div class="stat-icon purple"><i class="fa-solid fa-users"></i></div>
                            <div class="stat-info">
                                <h3>Total Students</h3>
                                <p class="stat-value" id="statTotal">--</p>
                            </div>
                        </div>
                        <div class="stat-card">
                            <div class="stat-icon blue"><i class="fa-solid fa-clipboard-check"></i></div>
                            <div class="stat-info">
                                <h3>Evaluated</h3>
                                <p class="stat-value" id="statEvaluated">--</p>
                            </div>
                        </div>
                        <div class="stat-card">
                            <div class="stat-icon orange"><i class="fa-solid fa-star"></i></div>
                            <div class="stat-info">
                                <h3>Top Score</h3>
                                <p class="stat-value" id="statTop">--</p>
                            </div>
                        </div>
                    </div>

                    <!-- Charts Row -->
                    <div class="charts-row">
                        <div class="chart-container">
                            <h3><i class="fa-solid fa-pie-chart"></i> Evaluation Progress</h3>
                            <div style="height: 300px; position: relative;">
                                <canvas id="progressChart"></canvas>
                            </div>
                        </div>
                        <div class="chart-container">
                            <h3><i class="fa-solid fa-chart-bar"></i> Score Distribution</h3>
                            <div style="height: 300px; position: relative;">
                                <canvas id="scoreChart"></canvas>
                            </div>
                        </div>
                    </div>
                    <!-- New Branch Chart -->
                    <div class="chart-container" style="margin-top: 2rem;">
                        <h3><i class="fa-solid fa-sitemap"></i> Registered Students per Branch</h3>
                        <div style="height: 350px; position: relative;">
                            <canvas id="branchChart"></canvas>
                        </div>
                    </div>
                </div>
            </div>
        </main>
    </div>

    <script type="module" src="js/admin.js?v=5"></script>
</body>

</html>