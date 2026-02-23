<?php
require_once 'src/includes/db.php';
$roll = '21CST001';
$user = db_get("SELECT id FROM users WHERE roll_number = ?", [$roll]);
$userId = $user['id'];
$academic = db_get("SELECT * FROM academic_records WHERE user_id = ?", [$userId]);
echo "CGPA: " . $academic['cgpa'] . "\n";
echo "CGPA TYPE: " . gettype($academic['cgpa']) . "\n";
print_r($academic);
?>
