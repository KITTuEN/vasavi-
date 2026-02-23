<?php require_once __DIR__ . '/src/includes/auth_check.php'; require_guest(); ?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Best Outgoing Student System</title>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;500;600;700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="css/style.css">
    <script>
        window.APP_BASE_URL = "<?php echo get_base_url(); ?>";
    </script>
</head>

<body class="landing-page">
    <div id="canvas-container"></div>
    <div class="container" style="padding-bottom: 0;">
        <header class="top-bar" style="margin-bottom: 0; min-height: 120px;">
        </header>
    </div>

    <div class="container auth-container">
        <div class="login-wrapper-modern">
            <!-- Student Login Card -->
            <div class="modern-login-card">
                <div class="card-header-logo">
                    <div class="logo-icon-large">🎓</div>
                    <h2>Student Login</h2>
                    <p class="subtitle">Access your student dashboard</p>
                </div>
                <div class="card-body">
                    <form id="studentLoginForm">
                        <div id="studentLoginAlert" class="hidden"></div>
                        <div class="input-group">
                            <label for="studentEmail">Username / Email</label>
                            <input type="email" id="studentEmail" placeholder="Enter your email" required>
                        </div>
                        <div class="input-group">
                            <label for="studentPassword">Password</label>
                            <input type="password" id="studentPassword" placeholder="Enter your password" required>
                        </div>
                        <div class="form-actions">
                            <button type="submit" class="btn-login-modern">Sign In as Student</button>
                        </div>
                    </form>
                    <div class="register-link">
                        Don't have an account? <a href="register.php">Register here</a>
                    </div>
                </div>
            </div>

            <!-- Employee / Panel Login Card -->
            <div class="modern-login-card">
                <div class="card-header-logo">
                    <div class="logo-icon-large">👨‍💼</div>
                    <h2>Staff Login</h2>
                    <p class="subtitle">Admin & Panel Access</p>
                </div>
                <div class="card-body">
                    <form id="adminLoginForm">
                        <div id="adminLoginAlert" class="hidden"></div>
                        <div class="input-group">
                            <label for="adminEmail">Employee ID / Email</label>
                            <input type="email" id="adminEmail" placeholder="Enter your ID or Email" required>
                        </div>
                        <div class="input-group">
                            <label for="adminPassword">Password</label>
                            <input type="password" id="adminPassword" placeholder="Enter your password" required>
                        </div>
                        <div class="form-actions">
                            <button type="submit" class="btn-login-modern">Sign In</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>

    <script src="https://cdnjs.cloudflare.com/ajax/libs/three.js/r128/three.min.js"></script>
    <script src="js/background-3d.js"></script>
    <script src="js/main.js?v=3"></script>
</body>

</html>