<?php
require_once 'src/includes/db.php';

try {
    echo "<h2>Users Table Columns:</h2>";
    $stmt = $pdo->query("SHOW COLUMNS FROM users");
    $cols = $stmt->fetchAll(PDO::FETCH_ASSOC);
    foreach ($cols as $col) {
        echo $col['Field'] . " (" . $col['Type'] . ")<br>";
    }
} catch (PDOException $e) {
    echo "Error: " . $e->getMessage();
}
?>
