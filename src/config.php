<?php
// src/config.php

// Database Configuration
define('DB_HOST', 'localhost');
define('DB_USER', 'root');
define('DB_PASS', '25315'); // As per current setup
define('DB_NAME', 'best_outgoing');

// Encryption Configuration
define('ENCRYPTION_ALGORITHM', 'aes-256-cbc');
define('ENCRYPTION_SECRET', 'BestOutgoingSystemSecretKey2026'); // Must match Node.js key derivation

// session settings
if (session_status() === PHP_SESSION_NONE) {
    session_start();
}
