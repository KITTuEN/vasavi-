<?php
$host = 'localhost';
$user = 'root';
$pass = '';
$db = 'best_outgoing';

try {
    $pdo = new PDO("mysql:host=$host;dbname=$db", $user, $pass);
    $stmt = $pdo->query("SELECT id, name, roll_number, is_submitted, is_sent_to_panel FROM users WHERE role = 'student'");
    echo "ID | Name | Sub | Sent\n";
    echo "--------------------\n";
    while($r = $stmt->fetch(PDO::FETCH_ASSOC)) {
        echo $r['id']." | ".$r['name']." | ".$r['is_submitted']." | ".$r['is_sent_to_panel']."\n";
    }
} catch (Exception $e) {
    echo "Error: " . $e->getMessage() . "\n";
}
