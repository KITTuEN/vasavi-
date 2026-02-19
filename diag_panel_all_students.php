<?php
// diag_panel_all_students.php
session_start();
require_once __DIR__ . '/src/includes/db.php';

// Mock a panel member session
$_SESSION['user'] = [
    'id' => 999, // Dummy ID
    'role' => 'panel',
    'name' => 'Demo Panel Member'
];
$_SERVER['REQUEST_METHOD'] = 'GET';
$_SERVER['REQUEST_URI'] = '/Best outgoing/panel/students/details?id=1';
$_SERVER['SCRIPT_NAME'] = '/Best outgoing/src/router.php';

echo "Testing admin/students access for Panel Member...\n";

// We need to define $path as the router does
$path = 'admin/students';
try {
    // Manually include the API to test it in the current session
    ob_start();
    include __DIR__ . '/src/api/admin.php';
    $response = ob_get_clean();
    
    $data = json_decode($response, true);
    if (is_array($data)) {
        echo "SUCCESS: Received " . count($data) . " students.\n";
        if (count($data) > 0) {
            echo "First student: " . $data[0]['name'] . " (" . $data[0]['roll_number'] . ")\n";
        }
    } else {
        echo "FAILED: Response was not valid JSON or error occurred.\n";
        echo "Response: $response\n";
    }
} catch (Exception $e) {
    echo "ERROR: " . $e->getMessage() . "\n";
}

echo "\nTesting panel/students/details access (relax check)...\n";
// Find a real student ID to test details
$student = db_get("SELECT id FROM users WHERE role = 'student' AND is_submitted = 1 LIMIT 1");
if ($student) {
    $id = $student['id'];
    $_GET['id'] = $id;
    $path = "panel/students/details"; // Not used directly in panel.php action logic but good for docs
    
    ob_start();
    include __DIR__ . '/src/api/panel.php';
    $resDetails = ob_get_clean();
    
    $details = json_decode($resDetails, true);
    if (isset($details['user'])) {
        echo "SUCCESS: Fetched details for student ID $id.\n";
    } else {
        echo "FAILED: Could not fetch details.\n";
        echo "Response: $resDetails\n";
    }
} else {
    echo "SKIP: No submitted students found to test details.\n";
}
?>
