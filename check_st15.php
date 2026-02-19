<?php
require 'src/includes/db.php';
$s = db_get('SELECT id, name, is_sent_to_panel, is_submitted FROM users WHERE id = 15');
echo "Student 15 Status:\n";
print_r($s);
?>
