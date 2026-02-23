<?php
// src/api/auth.php
require_once __DIR__ . '/../includes/db.php';

$method = $_SERVER['REQUEST_METHOD'];
$action = str_replace('auth/', '', $path);

if ($action === 'logout') {
    require_once __DIR__ . '/../includes/auth_check.php';
    session_destroy();
    header("Location: " . get_base_url() . "/");
    exit;
}

if ($method === 'POST') {
    $input = json_decode(file_get_contents('php://input'), true);

    if ($action === 'register') {
        $name = $input['name'] ?? null;
        $email = $input['email'] ?? null;
        $password = $input['password'] ?? null;
        $role = $input['role'] ?? null;
        $department = $input['department'] ?? null;
        $roll_number = $input['roll_number'] ?? null;
        $contact_number = $input['contact_number'] ?? null;

        if (!$name || !$email || !$password || !$role) {
            http_response_code(400);
            echo json_encode(['error' => 'Please fill in all required fields']);
            exit;
        }

        $hashedPassword = password_hash($password, PASSWORD_BCRYPT);

        try {
            $sql = "INSERT INTO users (name, email, password, role, department, roll_number, contact_number) VALUES (?, ?, ?, ?, ?, ?, ?)";
            db_run($sql, [$name, $email, $hashedPassword, $role, $department, $roll_number, $contact_number]);
            echo json_encode(['message' => 'User registered successfully', 'userId' => db_last_id()]);
        } catch (PDOException $e) {
            if ($e->getCode() == 23000) { // Integrity constraint violation (unique)
                http_response_code(400);
                echo json_encode(['error' => 'Email already exists']);
            } else {
                http_response_code(500);
                echo json_encode(['error' => $e->getMessage()]);
            }
        }
    } elseif ($action === 'login') {
        $email = $input['email'] ?? null;
        $password = $input['password'] ?? null;
        $role = $input['role'] ?? null;

        if (!$email || !$password) {
            http_response_code(400);
            echo json_encode(['error' => 'Please provide email and password']);
            exit;
        }

        $user = db_get("SELECT * FROM users WHERE email = ?", [$email]);

        if (!$user || !password_verify($password, $user['password'])) {
            http_response_code(400);
            echo json_encode(['error' => 'Invalid email or password']);
            exit;
        }

        if ($role) {
            if ($role === 'staff') {
                if (!in_array($user['role'], ['admin', 'panel'])) {
                    http_response_code(403);
                    echo json_encode(['error' => 'Access denied: Only Admin or Panel members can login here.']);
                    exit;
                }
            } elseif ($user['role'] !== $role) {
                http_response_code(403);
                echo json_encode(['error' => 'Access denied: You are not authorized to login here.']);
                exit;
            }
        }

        $_SESSION['user'] = [
            'id' => $user['id'],
            'name' => $user['name'],
            'role' => $user['role'],
            'department' => $user['department']
        ];
        
        session_write_close();

        if (!isset($authenticated_user_role)) { // Just a dummy check to ensure get_base_url is available or include it
             require_once __DIR__ . '/../includes/auth_check.php';
        }

        echo json_encode([
            'message' => 'Login successful',
            'role' => $user['role'],
            'redirect' => get_base_url() . ($user['role'] === 'admin' ? '/admin-dashboard' : ($user['role'] === 'panel' ? '/panel-dashboard' : '/dashboard'))
        ]);
    }
}
