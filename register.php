<?php require_once __DIR__ . '/src/includes/auth_check.php'; require_guest(); ?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Register - Best Outgoing Student System</title>
    <!-- Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Outfit:wght@300;400;500;600;700&display=swap" rel="stylesheet">
    <!-- Bootstrap 5 CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Custom CSS -->
    <link rel="stylesheet" href="css/style.css">
    <script>
        window.APP_BASE_URL = "<?php echo get_base_url(); ?>";
    </script>
    <style>
        .login-body {
            min-height: 100vh;
        }
        .logo-icon-large {
            font-size: 3.5rem;
            margin-bottom: 1rem;
        }
    </style>
</head>

<body class="login-body">
    <div id="canvas-container"></div>
    
    <div class="container d-flex flex-column justify-content-center min-vh-100 py-5">
        <div class="row justify-content-center w-100">
            <div class="col-12 col-md-8 col-lg-6 col-xl-5">
                <div class="card login-card border-0">
                    <div class="card-body p-4 p-lg-5">
                        <div class="text-center mb-4">
                            <div class="logo-icon-large">📝</div>
                            <h2 class="h3 fw-bold mb-1">Create an Account</h2>
                            <p class="text-muted">Join the Best Outgoing Student System</p>
                        </div>

                        <div id="registerAlert" class="alert alert-danger d-none my-3" role="alert"></div>

                        <form id="registerForm">
                            <div class="form-floating mb-3">
                                <input type="text" class="form-control" id="regName" placeholder="Full Name" required>
                                <label for="regName">Full Name</label>
                            </div>
                            
                            <div class="form-floating mb-3">
                                <input type="email" class="form-control" id="regEmail" placeholder="name@example.com" required>
                                <label for="regEmail">Email Address</label>
                            </div>

                            <div class="form-floating mb-3">
                                <input type="password" class="form-control" id="regPassword" placeholder="Password" required>
                                <label for="regPassword">Password</label>
                            </div>

                            <div class="form-floating mb-3">
                                <select class="form-select" id="regRole" required>
                                    <option value="student">Student</option>
                                    <option value="admin">Employee / Admin</option>
                                    <option value="panel">Panel Member</option>
                                </select>
                                <label for="regRole">I am a...</label>
                            </div>

                            <div id="studentFields">
                                <div class="form-floating mb-3">
                                    <input type="text" class="form-control" id="regDept" placeholder="Department">
                                    <label for="regDept">Department (e.g., CSE)</label>
                                </div>
                                <div class="form-floating mb-3">
                                    <input type="text" class="form-control" id="regRoll" placeholder="Roll Number">
                                    <label for="regRoll">Roll Number</label>
                                </div>
                                <div class="form-floating mb-3">
                                    <input type="tel" class="form-control" id="regContact" placeholder="Contact Number">
                                    <label for="regContact">Contact Number</label>
                                </div>
                            </div>

                            <button type="submit" class="btn btn-primary w-100 py-3 fw-bold rounded-3 mt-2">
                                Create Account
                            </button>
                        </form>

                        <div class="text-center mt-4 text-muted">
                            Already have an account? <a href="index.php" class="text-primary text-decoration-none fw-semibold">Sign In</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Bootstrap Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/three.js/r128/three.min.js"></script>
    <script src="js/background-3d.js"></script>
    <script src="js/main.js?v=3"></script>
    <script>
        // Toggle student fields based on role
        const roleSelect = document.getElementById('regRole');
        const studentFields = document.getElementById('studentFields');
        
        // Initial check
        if(roleSelect.value !== 'student') {
            studentFields.classList.add('d-none');
        }

        roleSelect.addEventListener('change', function () {
            if (this.value === 'student') {
                studentFields.classList.remove('d-none');
                studentFields.classList.add('d-block');
                // Animation could be added here
            } else {
                studentFields.classList.add('d-none');
                studentFields.classList.remove('d-block');
                
                // Clear values when hiding
                document.getElementById('regDept').value = '';
                document.getElementById('regRoll').value = '';
                document.getElementById('regContact').value = '';
            }
        });
        
        // Ensure adapter for showAlert is consistent if main.js uses d-none (which I updated it to do)
    </script>
</body>
</html>