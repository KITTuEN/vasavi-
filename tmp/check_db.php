<?php
require_once __DIR__ . '/../src/includes/db.php';
$rows = db_all("SELECT * FROM academic_records");
echo "<h1>Academic Records</h1>";
echo "<pre>" . print_r($rows, true) . "</pre>";
?>
