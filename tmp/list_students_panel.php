<?php
// /tmp/list_students_panel.php
require_once __DIR__ . '/../src/includes/db.php';

try {
    $students = db_all("SELECT id, name, roll_number, is_submitted, is_sent_to_panel, role FROM users WHERE role = 'student'");
    echo "ID | Name | Submitted | Sent to Panel\n";
    echo "-------------------------------------\n";
    foreach ($students as $s) {
        echo $s['id'] . " | " . $s['name'] . " | " . $s['is_submitted'] . " | " . $s['is_sent_to_panel'] . "\n";
    }
} catch (Exception $e) {
    echo "Error: " . $e->getMessage() . "\n";
}
