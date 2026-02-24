<?php
// check_schema.php - Verify database tables and columns
require_once __DIR__ . '/src/includes/db.php';

header('Content-Type: text/plain');

$required_columns = [
    'users' => ['id', 'name', 'email', 'role', 'department', 'roll_number', 'is_submitted', 'is_sent_to_panel'],
    'academic_records' => ['user_id', 'cgpa', 'cgpa_score', 'honours_score', 'exams_score', 'is_hod_submitted', 'academic_comments'],
    'co_curricular' => ['user_id', 'activity_type', 'score', 'hod_comments'],
    'extracurricular' => ['user_id', 'activity_type', 'score', 'hod_comments'],
    'final_scores' => ['user_id', 'academic_score', 'co_curricular_score', 'extracurricular_score', 'interview_score', 'total_score'],
    'department_toppers' => ['department', 'topper_cgpa']
];

$all_ok = true;

echo "Database Schema Check\n";
echo "=====================\n\n";

foreach ($required_columns as $table => $columns) {
    try {
        $stmt = $pdo->query("SHOW COLUMNS FROM `$table` ");
        $existing_columns = $stmt->fetchAll(PDO::FETCH_COLUMN);
        
        echo "Table: $table ... ";
        $missing = array_diff($columns, $existing_columns);
        
        if (empty($missing)) {
            echo "OK\n";
        } else {
            echo "MISSING COLUMNS: " . implode(', ', $missing) . "\n";
            $all_ok = false;
        }
    } catch (PDOException $e) {
        echo "Table: $table ... MISSING TABLE or ERROR: " . $e->getMessage() . "\n";
        $all_ok = false;
    }
}

if ($all_ok) {
    echo "\nSummary: All basic schema requirements are met.\n";
} else {
    echo "\nSummary: SCHEMA ERRORS DETECTED. Please fix migrations.\n";
}
?>
