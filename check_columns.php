<?php
require_once 'src/includes/db.php';

try {
    $stmt = $pdo->query("SHOW CREATE TABLE co_curricular");
    $row = $stmt->fetch(PDO::FETCH_ASSOC);
    echo "<pre>";
    print_r($row);
    echo "</pre>";

    $stmt2 = $pdo->query("SHOW CREATE TABLE extracurricular");
    $row2 = $stmt2->fetch(PDO::FETCH_ASSOC);
    echo "<pre>";
    print_r($row2);
    echo "</pre>";

} catch (Exception $e) {
    echo "Error: " . $e->getMessage();
}
?>
