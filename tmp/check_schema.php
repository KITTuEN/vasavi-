<?php
// /tmp/check_schema.php
require_once __DIR__ . '/../src/includes/db.php';

try {
    echo "Checking schema for 'users' table...\n";
    $columns = db_all("DESCRIBE users");
    foreach ($columns as $col) {
        echo $col['Field'] . " - " . $col['Type'] . " - " . ($col['Default'] ?? 'NULL') . "\n";
    }
    
    echo "\nChecking counts:\n";
    $total = db_get("SELECT COUNT(*) as c FROM users WHERE role = 'student'")['c'];
    $submitted = db_get("SELECT COUNT(*) as c FROM users WHERE role = 'student' AND is_submitted = 1")['c'];
    $sent = db_get("SELECT COUNT(*) as c FROM users WHERE role = 'student' AND is_sent_to_panel = 1")['c'];
    
    echo "Total Students: $total\n";
    echo "Submitted: $submitted\n";
    echo "Sent to Panel: $sent\n";

} catch (Exception $e) {
    echo "Error: " . $e->getMessage() . "\n";
}
