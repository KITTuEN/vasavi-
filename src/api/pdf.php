<?php
// src/api/pdf.php
require_once __DIR__ . '/../includes/db.php';
require_once __DIR__ . '/../includes/crypto.php';

// Prevent warnings from corrupting PDF output
error_reporting(0);
ini_set('display_errors', 0);

// DEBUG LOGGING
function log_debug($msg) {
    file_put_contents(__DIR__ . '/../../debug_pdf.log', date('[Y-m-d H:i:s] ') . $msg . PHP_EOL, FILE_APPEND);
}

log_debug("Starting PDF generation script.");

require_once __DIR__ . '/../fpdf.php';

if (!isset($_SESSION['user'])) {
    log_debug("No session found. returning 401.");
    http_response_code(401);
    die('Unauthorized');
}

$userId = $_SESSION['user']['id'];
log_debug("User ID: " . $userId);

// Fetch Data
$user = db_get("SELECT * FROM users WHERE id = ?", [$userId]);
$academic = db_get("SELECT * FROM academic_records WHERE user_id = ?", [$userId]);
$coCurricular = db_all("SELECT * FROM co_curricular WHERE user_id = ?", [$userId]);
$extracurricular = db_all("SELECT * FROM extracurricular WHERE user_id = ?", [$userId]);

class PDF extends FPDF {
    function Header() {
        // Logo could go here
        $this->SetFont('Arial', 'B', 16);
        $this->Cell(0, 10, 'Best Outgoing Student Application', 0, 1, 'C');
        $this->SetFont('Arial', '', 10);
        $this->Cell(0, 5, 'Sri Vasavi Engineering College', 0, 1, 'C');
        $this->Ln(10);
    }

    function Footer() {
        $this->SetY(-15);
        $this->SetFont('Arial', 'I', 8);
        $this->Cell(0, 10, 'Page ' . $this->PageNo() . '/{nb}', 0, 0, 'C');
    }

    function SectionTitle($label) {
        $this->SetFont('Arial', 'B', 12);
        $this->SetFillColor(230, 230, 230);
        $this->Cell(0, 8, "  $label", 0, 1, 'L', true);
        $this->Ln(4);
    }
    
    function InfoRow($label, $value) {
        $this->SetFont('Arial', 'B', 10);
        $this->Cell(50, 6, $label, 0);
        $this->SetFont('Arial', '', 10);
        $this->Cell(0, 6, $value, 0, 1);
    }
}

$pdf = new PDF();
$pdf->AliasNbPages();
$pdf->AddPage();

// --- Personal Information ---
$pdf->SectionTitle('Personal Information');

// Handle Profile Photo
$tempPhoto = null;
if ($user['profile_photo']) {
    log_debug("Processing profile photo: " . $user['profile_photo']);
    $photoId = str_replace('FILE:', '', $user['profile_photo']);
    $fileRecord = db_get("SELECT * FROM file_uploads WHERE id = ?", [$photoId]);
    if ($fileRecord) {
        log_debug("File record found. Size: " . strlen($fileRecord['data']));
        try {
            $imgData = decrypt_data($fileRecord['data'], $fileRecord['iv']);
            log_debug("Decrypted image size: " . strlen($imgData));
            // Create temp file
            $ext = explode('/', $fileRecord['mime_type'])[1] ?? 'jpg';
            $tempPhoto = sys_get_temp_dir() . '/temp_photo_' . $userId . '.' . $ext;
            file_put_contents($tempPhoto, $imgData);
            log_debug("Temp file created: " . $tempPhoto);
            
            // Add Image (x, y, w, h)
            // Position at top right
            $pdf->Image($tempPhoto, 160, 35, 30);
            log_debug("Image added to PDF.");
        } catch (Exception $e) {
            log_debug("Error processing image: " . $e->getMessage());
        }
    } else {
        log_debug("File record not found for ID: " . $photoId);
    }
}

$pdf->InfoRow('Name:', $user['name']);
$pdf->InfoRow('Roll Number:', $user['roll_number']);
$pdf->InfoRow('Department:', $user['department']);
$pdf->InfoRow('Email:', $user['email']);
$pdf->InfoRow('Contact:', $user['contact_number'] ?: 'N/A');
$pdf->Ln(2);
$pdf->SetFont('Arial', 'B', 10);
$pdf->Cell(50, 6, 'Bio:', 0, 1);
$pdf->SetFont('Arial', '', 10);
$pdf->MultiCell(130, 5, $user['bio'] ?: 'N/A'); 
$pdf->Ln(10);

// --- Academic Records ---
$pdf->SectionTitle('Academic Performance');
$pdf->InfoRow('Overall CGPA:', $academic['cgpa'] ?? 'N/A');

$pdf->Ln(2);
$pdf->SetFont('Arial', 'B', 10);
$pdf->Cell(0, 6, 'Semester SGPA:', 0, 1);
$pdf->SetFont('Arial', '', 9);

// Simple Grid for SGPA
$w = 20;
for($i=1; $i<=8; $i++) {
    $pdf->Cell($w, 6, "Sem $i", 1, 0, 'C');
}
$pdf->Ln();
for($i=1; $i<=8; $i++) {
    $val = $academic["sgpa_sem$i"] ?? '-';
    $pdf->Cell($w, 6, $val, 1, 0, 'C');
}
$pdf->Ln(10);

// Honours/Minors and Exams
$pdf->InfoRow('Competitive Exams:', $academic['competitive_exams'] ?? 'None');

$honours = 'No';
if (!empty($academic['honours_minors']) && $academic['honours_minors'] !== 'No') {
    $h = json_decode($academic['honours_minors'], true);
    if(is_array($h)) {
        $honours = $h['type'] . ' (' . count($h['courses']) . ' courses)';
    } else {
        $honours = $academic['honours_minors']; // Legacy support
    }
}
$pdf->InfoRow('Honours/Minors:', $honours);

$pdf->Ln(5);
$pdf->SetFont('Arial', 'B', 10);
$pdf->Cell(0, 6, 'Projects / Research:', 0, 1);
$pdf->SetFont('Arial', '', 10);
$pdf->MultiCell(0, 5, $academic['projects'] ?? 'N/A');
$pdf->Ln(2);
$pdf->MultiCell(0, 5, $academic['research_papers'] ?? 'N/A');
$pdf->Ln(10);


// --- Co-Curricular ---
$pdf->SectionTitle('Co-Curricular Activities');
if (count($coCurricular) > 0) {
    $pdf->SetFont('Arial', 'B', 9);
    $pdf->Cell(100, 7, 'Title', 1);
    $pdf->Cell(40, 7, 'Type', 1);
    $pdf->Cell(50, 7, 'Date', 1);
    $pdf->Ln();
    
    $pdf->SetFont('Arial', '', 9);
    foreach ($coCurricular as $row) {
        $pdf->Cell(100, 6, substr($row['title'], 0, 60), 1);
        $pdf->Cell(40, 6, substr($row['activity_type'], 0, 20), 1);
        $pdf->Cell(50, 6, substr($row['date'], 0, 10), 1);
        $pdf->Ln();
    }
} else {
    $pdf->Cell(0, 10, 'No records found.', 0, 1);
}
$pdf->Ln(10);

// --- Extracurricular ---
$pdf->SectionTitle('Extracurricular Activities');
if (count($extracurricular) > 0) {
    $pdf->SetFont('Arial', 'B', 9);
    $pdf->Cell(100, 7, 'Title', 1);
    $pdf->Cell(40, 7, 'Level', 1);
    $pdf->Cell(50, 7, 'Description', 1); // Using Description slot for extra info if needed
    $pdf->Ln();
    
    $pdf->SetFont('Arial', '', 9);
    foreach ($extracurricular as $row) {
        $pdf->Cell(100, 6, substr($row['title'], 0, 60), 1);
        $pdf->Cell(40, 6, substr($row['level'], 0, 20), 1);
        $pdf->Cell(50, 6, substr($row['description'], 0, 30), 1);
        $pdf->Ln();
    }
} else {
    $pdf->Cell(0, 10, 'No records found.', 0, 1);
}

// Cleanup temp photo
if ($tempPhoto && file_exists($tempPhoto)) {
    unlink($tempPhoto);
}

$pdf->Output('D', 'Application_' . $user['roll_number'] . '.pdf');
?>
