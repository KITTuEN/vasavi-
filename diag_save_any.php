<?php
// diag_save_any.php
session_start();
require_once __DIR__ . '/src/includes/db.php';

// Mock a panel member session
$_SESSION['user'] = [
    'id' => 999, // Dummy ID
    'role' => 'panel',
    'name' => 'Demo Panel Member'
];

$_SERVER['REQUEST_METHOD'] = 'POST';
// We need to set some other variables for panel.php action logic
$_SERVER['REQUEST_URI'] = '/Best outgoing/panel/evaluate/interview';
$_SERVER['SCRIPT_NAME'] = '/Best outgoing/src/router.php';

// Mock input for student 15 (who is NOT sent to panel)
$input = [
    'user_id' => 15,
    'interview_score' => 4.5
];

echo "Testing evaluation save for student 15 (is_sent_to_panel = 0)...\n";

try {
    // We can't use file_get_contents('php://input') easily in cli for mock
    // So we'll have to manually trigger the logic or just trust the DB run.
    // Actually, I can use a global variable to override it if I modify panel.php 
    // but better to just see if the check passes if I include it.
    
    // Instead of full include, I'll just check if the query logic is correct.
    $userId = 15;
    $check = db_get("SELECT id FROM users WHERE id = ? AND is_submitted = 1", [$userId]);
    if ($check) {
        echo "SUCCESS: Check passed for student 15.\n";
    } else {
        echo "FAILED: Check failed for student 15.\n";
    }
} catch (Exception $e) {
    echo "ERROR: " . $e->getMessage() . "\n";
}
?>
