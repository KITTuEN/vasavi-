<?php
require_once 'src/includes/db.php';

try {
    echo "<h2>Tables in DB:</h2>";
    $stmt = $pdo->query("SHOW TABLES");
    $tables = $stmt->fetchAll(PDO::FETCH_COLUMN);
    foreach ($tables as $table) {
        echo $table . "<br>";
    }

    if (in_array('co_curricular', $tables)) {
        echo "<h2>Co-Curricular Columns:</h2>";
        $stmt = $pdo->query("SHOW COLUMNS FROM co_curricular");
        $cols = $stmt->fetchAll(PDO::FETCH_ASSOC);
        foreach ($cols as $col) {
            echo $col['Field'] . " (" . $col['Type'] . ")<br>";
        }
    } else {
        echo "<h2>Co-Curricular table MISSING!</h2>";
    }

     if (in_array('extracurricular', $tables)) {
        echo "<h2>Extracurricular Columns:</h2>";
        $stmt = $pdo->query("SHOW COLUMNS FROM extracurricular");
        $cols = $stmt->fetchAll(PDO::FETCH_ASSOC);
        foreach ($cols as $col) {
            echo $col['Field'] . " (" . $col['Type'] . ")<br>";
        }
    } else {
        echo "<h2>Extracurricular table MISSING!</h2>";
    }

} catch (PDOException $e) {
    echo "Error: " . $e->getMessage();
}
?>
