<?php
require_once 'src/includes/db.php';

try {
    $tables = ['academic_records', 'co_curricular', 'extracurricular'];
    foreach ($tables as $table) {
        $stmt = $pdo->query("SHOW CREATE TABLE $table");
        $row = $stmt->fetch(PDO::FETCH_ASSOC);
        echo "Table: $table\n";
        echo $row['Create Table'] . "\n\n";
    }
} catch (Exception $e) {
    echo "Error: " . $e->getMessage();
}
?>
