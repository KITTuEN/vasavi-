<?php
// src/api/panel.php
require_once __DIR__ . '/../includes/db.php';

$method = $_SERVER['REQUEST_METHOD'];
$action = str_replace('panel/', '', $path);

// Middleware: Ensure user is a Panel member
function isPanel() {
    if (!isset($_SESSION['user']) || $_SESSION['user']['role'] !== 'panel') {
        http_response_code(401);
        echo json_encode(['error' => 'Unauthorized: Panel access required']);
        exit;
    }
}

isPanel();

if ($method === 'GET') {
    if ($action === 'students/top20') {
        // Fetch top 20 students based on total_score + interview_score logic
        // We order by total_score DESC. 
        // Note: total_score in final_scores should ideally already include everything calculated so far.
        // When interview score is added, total_score will be updated.
        $query = "
            SELECT u.id, u.name, u.department, u.roll_number, u.profile_photo,
                   fs.academic_score, fs.co_curricular_score, fs.extracurricular_score, 
                   fs.interview_score, fs.total_score
            FROM final_scores fs
            JOIN users u ON fs.user_id = u.id
            WHERE u.role = 'student' AND u.is_submitted = 1
            ORDER BY fs.total_score DESC
            LIMIT 20
        ";
        echo json_encode(db_all($query));
    } elseif ($action === 'students/details') {
        $userId = $_GET['id'] ?? null;
        if (!$userId) {
            http_response_code(400);
            echo json_encode(['error' => 'Student ID required']);
            exit;
        }

        $user = db_get("SELECT id, name, email, department, roll_number, profile_photo, declaration_place, declaration_date, signature_path, recommendation_letter_path FROM users WHERE id = ?", [$userId]);
        if (!$user) {
            http_response_code(404);
            echo json_encode(['error' => 'Student not found']);
            exit;
        }

        $academic = db_get("SELECT * FROM academic_records WHERE user_id = ?", [$userId]);
        $coCurricular = db_all("SELECT * FROM co_curricular WHERE user_id = ?", [$userId]);
        $extracurricular = db_all("SELECT * FROM extracurricular WHERE user_id = ?", [$userId]);
        
        // Return structured data
        echo json_encode([
            'user' => $user,
            'academic' => $academic,
            'coCurricular' => $coCurricular,
            'extracurricular' => $extracurricular
        ]);
    }
} elseif ($method === 'POST') {
    if ($action === 'evaluate/interview') {
        $input = json_decode(file_get_contents('php://input'), true);
        $user_id = $input['user_id'] ?? null;
        $interview_score = floatval($input['interview_score'] ?? 0);

        if (!$user_id) {
            http_response_code(400);
            echo json_encode(['error' => 'Student ID required']);
            exit;
        }

        // Validate max score
        if ($interview_score < 0 || $interview_score > 5) {
            http_response_code(400);
            echo json_encode(['error' => 'Interview score must be between 0 and 5']);
            exit;
        }

        // Get current scores to recalculate total
        $current = db_get("SELECT academic_score, co_curricular_score, extracurricular_score FROM final_scores WHERE user_id = ?", [$user_id]);
        
        if (!$current) {
            http_response_code(404);
            echo json_encode(['error' => 'Student not evaluated by Admin yet']);
            exit;
        }

        $new_total = floatval($current['academic_score']) + 
                     floatval($current['co_curricular_score']) + 
                     floatval($current['extracurricular_score']) + 
                     $interview_score;

        db_run("UPDATE final_scores SET interview_score = ?, total_score = ? WHERE user_id = ?", 
               [$interview_score, $new_total, $user_id]);

        echo json_encode(['message' => 'Interview score saved', 'total_score' => $new_total]);
    }
}
?>
