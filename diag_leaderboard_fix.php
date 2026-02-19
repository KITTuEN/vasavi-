<?php
// diag_leaderboard_fix.php
require_once __DIR__ . '/src/includes/db.php';

echo "=== Testing Before Interview Logic ===\n";
$_GET['type'] = 'before';
// Mock Super Admin (No department)
session_start();
$_SESSION['user'] = ['role' => 'admin', 'department' => ''];

require 'src/api/admin.php'; // This will echo the JSON
echo "\n\n=== Testing After Interview Logic ===\n";
$_GET['type'] = 'after';
require 'src/api/admin.php'; // This will echo the JSON
?>
