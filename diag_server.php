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

echo "<h2>PHP Configuration & Extensions</h2>";
echo "OpenSSL extension: " . (extension_loaded('openssl') ? "<b>LOADED</b>" : "<b style='color:red;'>MISSING</b>") . "<br>";
echo "upload_max_filesize: <b>" . ini_get('upload_max_filesize') . "</b><br>";
echo "post_max_size: <b>" . ini_get('post_max_size') . "</b><br>";
echo "memory_limit: <b>" . ini_get('memory_limit') . "</b><br>";

echo "<h2>Writing Test</h2>";
$test_file = 'test_write.txt';
if (@file_put_contents($test_file, 'test')) {
    echo "File write permissions (root): <b>OK</b><br>";
    unlink($test_file);
} else {
    echo "File write permissions (root): <b style='color:red;'>FAILED</b><br>";
}

$files_dir = 'files';
if (is_dir($files_dir)) {
    if (is_writable($files_dir)) {
        echo "Files directory permissions: <b>OK</b><br>";
    } else {
        echo "Files directory permissions: <b style='color:red;'>NOT WRITABLE</b><br>";
    }
} else {
    echo "Files directory: <b style='color:red;'>MISSING</b><br>";
}

echo "<h2>Database & Storage Check</h2>";
require_once 'src/config.php';
try {
    $dsn = "mysql:host=" . DB_HOST . ";dbname=" . DB_NAME . ";charset=utf8";
    $pdo = new PDO($dsn, DB_USER, DB_PASS);
    $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    echo "Database connection: <b>SUCCESS</b><br>";
    
    // Check max_allowed_packet
    $stmt = $pdo->query("SHOW VARIABLES LIKE 'max_allowed_packet'");
    $packet = $stmt->fetch();
    echo "MySQL max_allowed_packet: <b>" . round($packet['Value'] / 1024 / 1024, 2) . " MB</b><br>";
    if ($packet['Value'] < 5 * 1024 * 1024) {
        echo "<span style='color:orange;'>Warning: max_allowed_packet is small. Large files might fail.</span><br>";
    }

    // Check if file_uploads table exists
    $stmt = $pdo->query("SHOW TABLES LIKE 'file_uploads'");
    if ($stmt->fetch()) {
        echo "Table 'file_uploads': <b>EXISTS</b><br>";
    } else {
        echo "Table 'file_uploads': <b style='color:red;'>MISSING</b> (Run database.sql!)<br>";
    }

} catch (PDOException $e) {
    echo "Database check: <b style='color:red;'>FAILED</b> - " . htmlspecialchars($e->getMessage()) . "<br>";
}

echo "<h2>API Rewrite Test</h2>";
$protocol = (!empty($_SERVER['HTTPS']) && $_SERVER['HTTPS'] !== 'off') ? "https://" : "http://";
$host = $_SERVER['HTTP_HOST'];
$api_test_url = $protocol . $host . $detected_base . "/auth/test_rewrite";

echo "Testing URL: <code>$api_test_url</code><br>";
$context = stream_context_create(['http' => ['ignore_errors' => true, 'timeout' => 5]]);
$response = @file_get_contents($api_test_url, false, $context);

if ($response !== false) {
    $data = json_decode($response, true);
    if (isset($data['error']) && $data['error'] === 'Route not found: auth/test_rewrite') {
        echo "Rewrite Test: <b style='color:green;'>SUCCESS (Router reached)</b><br>";
    } else {
        echo "Rewrite Test: <b>RESPONSE RECEIVED BUT UNEXPECTED</b><br>";
        echo "<pre>" . htmlspecialchars(substr($response, 0, 200)) . "</pre>";
    }
} else {
    echo "Rewrite Test: <b style='color:red;'>FAILED (Could not reach API)</b><br>";
    echo "This usually means <b>mod_rewrite</b> is disabled or <b>AllowOverride All</b> is missing in Apache config.<br>";
}

echo "<br><hr><p>If anything is <b>MISSING</b> or <b>FAILED</b> above, that is why your application is not working correctly.</p>";
?>
