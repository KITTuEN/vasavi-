<?php
require 'src/includes/db.php';
$studentId = 20;

$academic = db_get("SELECT * FROM academic_records WHERE user_id = ?", [$studentId]);
$coCurricular = db_all("SELECT * FROM co_curricular WHERE user_id = ?", [$studentId]);
$extracurricular = db_all("SELECT * FROM extracurricular WHERE user_id = ?", [$studentId]);

echo json_encode([
    'academic' => $academic,
    'coCurricular' => $coCurricular,
    'extracurricular' => $extracurricular
], JSON_PRETTY_PRINT);
