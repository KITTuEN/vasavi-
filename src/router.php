<?php
// src/router.php
require_once __DIR__ . '/config.php';
require_once __DIR__ . '/includes/db.php';
require_once __DIR__ . '/includes/crypto.php';

if (session_status() === PHP_SESSION_NONE) {
    session_start();
}

$request_uri = $_SERVER['REQUEST_URI'];
$script_name = $_SERVER['SCRIPT_NAME'];
$base_path = dirname(dirname($script_name)); // Level up from src/router.php

// Normalize base_path: ensure it uses forward slashes and doesn't end with a slash unless it's just /
$base_path = str_replace('\\', '/', $base_path);
if ($base_path === '/') $base_path = '';

// Simple routing logic - decode URL spaces and strip base path prefix only
$full_path = rawurldecode(parse_url($request_uri, PHP_URL_PATH));
$path = $full_path;

if (!empty($base_path) && strpos($full_path, $base_path) === 0) {
    $path = substr($full_path, strlen($base_path));
}
$path = trim($path, '/');

// Debug logging disabled
// file_put_contents('c:/xampp/htdocs/Best outgoing/debug_router.log', 
//     date('Y-m-d H:i:s') . " - Router Hit\n" .
//     "URI: $request_uri\n" .
//     "Base: $base_path\n" .
//     "Computed Path: $path\n----------------\n", 
//     FILE_APPEND
// );

// Set JSON header by default for API routes
if (strpos($path, 'auth') === 0 || strpos($path, 'student') === 0 || strpos($path, 'admin') === 0 || strpos($path, 'panel') === 0) {
    header('Content-Type: application/json');
    ini_set('display_errors', 0);
    error_reporting(E_ALL); // Log errors, don't display them
}

// Route to specific handlers
if (strpos($path, 'auth/') === 0) {
    require_once __DIR__ . '/api/auth.php';
} elseif (strpos($path, 'student/') === 0) {
    require_once __DIR__ . '/api/student.php';
} elseif (strpos($path, 'admin/') === 0) {
    require_once __DIR__ . '/api/admin.php';
} elseif (strpos($path, 'panel/') === 0) {
    require_once __DIR__ . '/api/panel.php';
} elseif (strpos($path, 'files/') === 0) {
    require_once __DIR__ . '/api/files.php';
} elseif (strpos($path, 'downloads/') === 0) {
    require_once __DIR__ . '/api/pdf.php';
} elseif ($path === 'panel-dashboard') {
    require_once __DIR__ . '/../panel-dashboard.php';
} else {
    // Fallback or static file serving handle (though .htaccess normally handles this)
    http_response_code(404);
    echo json_encode(['error' => 'Route not found: ' . $path]);
}
