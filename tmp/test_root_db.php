<?php
// /tmp/test_root_db.php
$host = 'localhost';
$user = 'root';
$pass = '';

try {
    $pdo = new PDO("mysql:host=$host", $user, $pass);
    echo "SUCCESS: Connected as root.\n";
    
    // Check if database exists
    $stmt = $pdo->query("SHOW DATABASES LIKE 'best_outgoing'");
    if ($stmt->fetch()) {
        echo "Database 'best_outgoing' EXISTS.\n";
        
        // Try to connect to the DB
        $pdo2 = new PDO("mysql:host=$host;dbname=best_outgoing", $user, $pass);
        echo "SUCCESS: Connected to 'best_outgoing' as root.\n";
        
        // Count users
        $count = $pdo2->query("SELECT COUNT(*) FROM users")->fetchColumn();
        echo "User count: $count\n";
    } else {
        echo "Database 'best_outgoing' does NOT exist.\n";
    }
} catch (PDOException $e) {
    echo "FAILURE: " . $e->getMessage() . "\n";
}
