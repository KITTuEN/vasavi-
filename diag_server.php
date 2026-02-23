<?php
// diag_server.php
echo "<h1>Server Environment Diagnostics</h1>";

echo "<h2>Apache Modules</h2>";
if (function_exists('apache_get_modules')) {
    $modules = apache_get_modules();
    echo "mod_rewrite enabled: " . (in_array('mod_rewrite', $modules) ? "<b>YES</b>" : "<b>NO</b>") . "<br>";
} else {
    echo "apache_get_modules() not available (likely not running as Apache module).<br>";
}

echo "<h2>Paths & Server Variables</h2>";
echo "REQUEST_URI: " . htmlspecialchars($_SERVER['REQUEST_URI']) . "<br>";
echo "SCRIPT_NAME: " . htmlspecialchars($_SERVER['SCRIPT_NAME']) . "<br>";
echo "DOCUMENT_ROOT: " . htmlspecialchars($_SERVER['DOCUMENT_ROOT']) . "<br>";

$script_dir = dirname($_SERVER['SCRIPT_NAME']);
$base = trim(str_replace(['\\'], ['/'], $script_dir), '/');
$detected_base = $base ? '/' . $base : '';
echo "Detected Base Path for App: <b>" . ($detected_base ?: "(Root)") . "</b><br>";

echo "<h2>Writing Test</h2>";
$test_file = 'test_write.txt';
if (file_put_contents($test_file, 'test')) {
    echo "File write permissions: <b>OK</b><br>";
    unlink($test_file);
} else {
    echo "File write permissions: <b>FAILED</b><br>";
}

echo "<h2>Database Connectivity</h2>";
require_once 'src/config.php';
try {
    $dsn = "mysql:host=" . DB_HOST . ";dbname=" . DB_NAME . ";charset=utf8";
    $pdo = new PDO($dsn, DB_USER, DB_PASS);
    echo "Database connection: <b>SUCCESS</b><br>";
} catch (PDOException $e) {
    echo "Database connection: <b>FAILED</b> - " . htmlspecialchars($e->getMessage()) . "<br>";
}

echo "<br><p>If mod_rewrite is NO, or if you get a 404 for 'auth/login' even though this page works, your Apache configuration likely needs <b>AllowOverride All</b>.</p>";
?>
