<?php
// src/includes/crypto.php
require_once __DIR__ . '/../config.php';

/**
 * Matches Node.js crypto.createHash('sha256').update(key).digest()
 */
function get_encryption_key() {
    return hash('sha256', ENCRYPTION_SECRET, true);
}

/**
 * Encrypts data using AES-256-CBC.
 */
function encrypt_data($data) {
    $key = get_encryption_key();
    $iv = openssl_random_pseudo_bytes(16);
    $encrypted = openssl_encrypt($data, ENCRYPTION_ALGORITHM, $key, OPENSSL_RAW_DATA, $iv);
    
    return [
        'encrypted' => $encrypted,
        'iv' => bin2hex($iv)
    ];
}

/**
 * Decrypts data using AES-256-CBC.
 */
function decrypt_data($encrypted, $ivHex) {
    $key = get_encryption_key();
    $iv = hex2bin($ivHex);
    return openssl_decrypt($encrypted, ENCRYPTION_ALGORITHM, $key, OPENSSL_RAW_DATA, $iv);
}
