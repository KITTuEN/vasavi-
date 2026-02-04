<?php
require_once 'src/includes/db.php';

try {
    echo "Current Database: " . DB_NAME . "<br>";
    $stmt = $pdo->query("SHOW COLUMNS FROM users");
    $cols = $stmt->fetchAll(PDO::FETCH_ASSOC);
    $found = false;
    foreach ($cols as $col) {
        if ($col['Field'] === 'signature_path') {
            $found = true;
            echo "Column 'signature_path' FOUND.<br>";
        }
    }
    if (!$found) {
        echo "Column 'signature_path' NOT FOUND.<br>";
        
        // Attempt to add it again right here
        $pdo->exec("ALTER TABLE users ADD COLUMN signature_path VARCHAR(255) DEFAULT NULL");
        echo "Attempted to add 'signature_path'.<br>";
    }

} catch (PDOException $e) {
    echo "Error: " . $e->getMessage();
}
?>
