<?php
// diag_scores.php
require_once __DIR__ . '/src/includes/db.php';

echo "=== Student 15 (AIML 2) Scores ===\n";
$s15 = db_get("SELECT * FROM final_scores WHERE user_id = 15");
print_r($s15);

echo "\n=== Student 14 (AIML 1) Scores ===\n";
$s14 = db_get("SELECT * FROM final_scores WHERE user_id = 14");
print_r($s14);

echo "\n=== Leaderboard Query Result ===\n";
$query = "
    SELECT u.id, u.name, 
           IFNULL(fs.academic_score, 0) as academic_score, 
           IFNULL(fs.co_curricular_score, 0) as co_curricular_score, 
           IFNULL(fs.extracurricular_score, 0) as extracurricular_score, 
           IFNULL(fs.interview_score, 0) as interview_score, 
           IFNULL(fs.total_score, 0) as total_score
    FROM users u
    LEFT JOIN final_scores fs ON u.id = fs.user_id
    WHERE u.id IN (14, 15)
";
print_r(db_all($query));
?>
