<?php
require_once __DIR__ . '/src/includes/db.php';

header('Content-Type: text/plain');

try {
    $pdo = new PDO("mysql:host=localhost;dbname=best_outgoing;charset=utf8", "root", "");
    echo "Columns in academic_records:\n";
    $columns = db_all("SHOW COLUMNS FROM academic_records");
    foreach ($columns as $col) {
        echo "- " . $col['Field'] . " (" . $col['Type'] . ")\n";
    }
} catch (Exception $e) {
    echo "Error: " . $e->getMessage();
}
