<?php
// src/includes/auth_check.php

if (session_status() === PHP_SESSION_NONE) {
    session_start();
}

/**
 * Enforce access control for authenticated users.
 * @param array $allowed_roles Array of allowed roles (e.g., ['student', 'admin']). If empty, any logged-in user is allowed.
 */
function require_auth($allowed_roles = []) {
    // 1. Check if user is logged in
    if (!isset($_SESSION['user'])) {
        // Not logged in -> Redirect to login page
        header("Location: " . get_base_url() . "/login");
        exit;
    }

    // 2. Check role permissions
    if (!empty($allowed_roles)) {
        $userRole = $_SESSION['user']['role'];
        if (!in_array($userRole, $allowed_roles)) {
            // Logged in but unauthorized role -> Redirect to their respective dashboard
            if ($userRole === 'admin') {
                header("Location: " . get_base_url() . "/admin-dashboard");
            } elseif ($userRole === 'panel') {
                header("Location: " . get_base_url() . "/panel-dashboard");
            } else {
                header("Location: " . get_base_url() . "/dashboard");
            }
            exit;
        }
    }
}

/**
 * Enforce access control for guests (login/register pages).
 * If a user is already logged in, they should not see the login page.
 */
function require_guest() {
    if (isset($_SESSION['user'])) {
        $userRole = $_SESSION['user']['role'];
        if ($userRole === 'admin') {
            header("Location: " . get_base_url() . "/admin-dashboard");
        } elseif ($userRole === 'panel') {
            header("Location: " . get_base_url() . "/panel-dashboard");
        } else {
            header("Location: " . get_base_url() . "/dashboard");
        }
        exit;
    }
}

function get_base_url() {
    // Dynamically detect the base path (e.g., /Best outgoing or empty string if at root)
    $script_dir = dirname($_SERVER['SCRIPT_NAME']);
    // Normalize: remove trailing slash and fix backslashes for Windows compat if needed
    $base = trim(str_replace(['\\', '/src/includes'], ['/', ''], $script_dir), '/');
    return $base ? '/' . $base : '';
}
?>
