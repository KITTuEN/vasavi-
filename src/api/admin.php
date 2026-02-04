<?php
// src/api/admin.php
require_once __DIR__ . '/../includes/db.php';

$method = $_SERVER['REQUEST_METHOD'];
$action = str_replace('admin/', '', $path);

// Middleware
function isAdmin() {
    if (!isset($_SESSION['user']) || $_SESSION['user']['role'] !== 'admin') {
        http_response_code(401);
        echo json_encode(['error' => 'Unauthorized: Admin access required']);
        exit;
    }
}

isAdmin();

if ($method === 'GET') {
    if ($action === 'students') {
        $query = "
            SELECT u.id, u.name, u.department, u.roll_number, u.is_submitted,
                   ar.cgpa, 
                   (SELECT COUNT(*) FROM co_curricular WHERE user_id = u.id) as co_curricular_count,
                   (SELECT COUNT(*) FROM extracurricular WHERE user_id = u.id) as extracurricular_count,
                   (SELECT COUNT(*) FROM final_scores WHERE user_id = u.id) as is_evaluated
            FROM users u
            LEFT JOIN academic_records ar ON u.id = ar.user_id
            WHERE u.role = 'student' AND u.is_submitted = 1
        ";
        echo json_encode(db_all($query));
    } elseif ($action === 'stats') {
        $total = db_get("SELECT COUNT(*) as count FROM users WHERE role = 'student' AND is_submitted = 1");
        $evaluated = db_get("SELECT COUNT(*) as count FROM final_scores");
        $top = db_get("SELECT MAX(total_score) as score FROM final_scores");
        $branches = db_all("SELECT department, COUNT(*) as count FROM users WHERE role = 'student' AND is_submitted = 1 GROUP BY department");

        echo json_encode([
            'totalStudents' => $total['count'] ?? 0,
            'evaluated' => $evaluated['count'] ?? 0,
            'topScore' => $top['score'] ?? 0,
            'branches' => $branches
        ]);
    } elseif (preg_match('/students\/(\d+)/', $action, $matches)) {
        $userId = $matches[1];
        $user = db_get("SELECT id, name, email, department, roll_number, profile_photo, is_submitted, declaration_place, declaration_date, signature_path, recommendation_letter_path FROM users WHERE id = ?", [$userId]);
        if (!$user) {
            http_response_code(404);
            echo json_encode(['error' => 'Student not found']);
            exit;
        }
        $academic = db_get("SELECT * FROM academic_records WHERE user_id = ?", [$userId]);
        $coCurricular = db_all("SELECT * FROM co_curricular WHERE user_id = ?", [$userId]);
        $extracurricular = db_all("SELECT * FROM extracurricular WHERE user_id = ?", [$userId]);
        $interview = db_all("SELECT * FROM interview_marks WHERE user_id = ?", [$userId]);
        $finalScore = db_get("SELECT * FROM final_scores WHERE user_id = ?", [$userId]);

        echo json_encode([
            'user' => $user,
            'academic' => $academic,
            'coCurricular' => $coCurricular,
            'extracurricular' => $extracurricular,
            'interview' => $interview,
            'finalScore' => $finalScore
        ]);
    } elseif ($action === 'leaderboard') {
        $query = "
            SELECT u.name, u.department, u.roll_number, fs.total_score
            FROM final_scores fs
            JOIN users u ON fs.user_id = u.id
            ORDER BY fs.total_score DESC
        ";
        echo json_encode(db_all($query));
    }
} elseif ($method === 'POST') {
    if ($action === 'evaluate') {
        $input = json_decode(file_get_contents('php://input'), true);
        $user_id = $input['user_id'] ?? null;
        $academic_cgpa_score = $input['academic_cgpa_score'] ?? 0;
        $academic_honours_score = $input['academic_honours_score'] ?? 0;
        $academic_exams_score = $input['academic_exams_score'] ?? 0;
        $co_curricular_score = $input['co_curricular_score'] ?? 0;
        $extracurricular_score = $input['extracurricular_score'] ?? 0;
        $co_scores = $input['co_scores'] ?? [];
        $extra_scores = $input['extra_scores'] ?? [];

        $academic_total = floatval($academic_cgpa_score) + floatval($academic_honours_score) + floatval($academic_exams_score);
        $co_score_final = min(floatval($co_curricular_score), 15);
        $extra_score_final = min(floatval($extracurricular_score), 15);
        $total_score = $academic_total + $co_score_final + $extra_score_final;

        // Update Academic Records scores
        db_run("INSERT INTO academic_records (user_id, cgpa_score, honours_score, exams_score) VALUES (?, ?, ?, ?) 
                ON DUPLICATE KEY UPDATE cgpa_score = VALUES(cgpa_score), honours_score = VALUES(honours_score), exams_score = VALUES(exams_score)",
                [$user_id, $academic_cgpa_score, $academic_honours_score, $academic_exams_score]);

        foreach ($co_scores as $item) {
            db_run("UPDATE co_curricular SET score = ? WHERE id = ? AND user_id = ?", [$item['score'], $item['id'], $user_id]);
        }
        foreach ($extra_scores as $item) {
            db_run("UPDATE extracurricular SET score = ? WHERE id = ? AND user_id = ?", [$item['score'], $item['id'], $user_id]);
        }

        db_run("INSERT INTO final_scores (user_id, academic_score, co_curricular_score, extracurricular_score, interview_score, total_score)
                VALUES (?, ?, ?, ?, ?, ?) ON DUPLICATE KEY UPDATE 
                academic_score = VALUES(academic_score), co_curricular_score = VALUES(co_curricular_score), 
                extracurricular_score = VALUES(extracurricular_score), interview_score = VALUES(interview_score), total_score = VALUES(total_score)",
                [$user_id, $academic_total, $co_score_final, $extra_score_final, 0, $total_score]);

        echo json_encode(['message' => 'Evaluation saved', 'total_score' => $total_score]);
    }
}
