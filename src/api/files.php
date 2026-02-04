<?php
// src/api/files.php
require_once __DIR__ . '/../includes/db.php';
require_once __DIR__ . '/../includes/crypto.php';

// Prevent warnings from corrupting image data
error_reporting(0);
ini_set('display_errors', 0);

$action = str_replace('files/', '', $path);
$fileId = str_replace('FILE:', '', $action);

if (!isset($_SESSION['user'])) {
    http_response_code(401);
    die('Unauthorized');
}

$file = db_get("SELECT * FROM file_uploads WHERE id = ?", [$fileId]);

if (!$file) {
    http_response_code(404);
    die('File not found');
}

// Optional: ownership check
// if ($_SESSION['user']['role'] === 'student' && $file['user_id'] != $_SESSION['user']['id']) {
//     http_response_code(403); die('Forbidden');
// }

$decrypted = decrypt_data($file['data'], $file['iv']);

header("Content-Type: " . $file['mime_type']);
header("Content-Disposition: inline; filename=\"" . $file['filename'] . "\"");
echo $decrypted;
exit;
