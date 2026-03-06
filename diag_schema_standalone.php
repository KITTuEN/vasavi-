<?php
header('Content-Type: text/plain');
try {
    $pdo = new PDO("mysql:host=localhost;dbname=best_outgoing;charset=utf8", "root", "");
    $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    
    echo "Columns in academic_records:\n";
    $stmt = $pdo->query("SHOW COLUMNS FROM academic_records");
    while ($col = $stmt->fetch(PDO::FETCH_ASSOC)) {
        echo "- " . $col['Field'] . " (" . $col['Type'] . ")\n";
    }
} catch (Exception $e) {
    echo "Error: " . $e->getMessage();
}
