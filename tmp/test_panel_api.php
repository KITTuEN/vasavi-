<?php
// /tmp/test_panel_api.php
require_once __DIR__ . '/../src/includes/db.php';

// Mock session
session_start();
// Find a panel user
$panelUser = db_get("SELECT * FROM users WHERE role = 'panel' LIMIT 1");

if (!$panelUser) {
    echo "No panel user found in DB.\n";
    exit;
}

$_SESSION['user'] = $panelUser;

// Mock variables that router.php would set
$path = 'panel/students';
$action = str_replace('panel/', '', $path);

echo "Testing /panel/students for user: " . $panelUser['name'] . " (ID: " . $panelUser['id'] . ")\n";

try {
    // Fetch students assigned to panel (is_sent_to_panel = 1)
    $query = "
        SELECT u.id, u.name, u.department, u.roll_number, u.is_submitted,
               (SELECT COUNT(*) FROM interview_marks WHERE user_id = u.id AND panel_id = ?) as is_evaluated
        FROM users u
        WHERE u.role = 'student' 
          AND u.is_submitted = 1 
          AND u.is_sent_to_panel = 1
    ";
    
    $results = db_all($query, [$panelUser['id']]);
    echo "Query successful. Found " . count($results) . " students.\n";
    echo json_encode($results, JSON_PRETTY_PRINT) . "\n";
} catch (Exception $e) {
    echo "Query FAILED: " . $e->getMessage() . "\n";
}
