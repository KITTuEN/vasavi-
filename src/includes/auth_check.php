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
    $script_name = str_replace('\\', '/', $_SERVER['SCRIPT_NAME']);
    // If the script is under /src/, the base is everything before it
    $pos = strpos($script_name, '/src/');
    if ($pos !== false) {
        $base = substr($script_name, 0, $pos);
    } else {
        // Otherwise, it's the directory of the current script
        $base = dirname($script_name);
    }
    // Normalize and remove trailing slash
    return rtrim(str_replace('\\', '/', $base), '/');
}
?>
