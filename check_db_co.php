<?php
require 'src/includes/db.php';
$res = db_all('SELECT * FROM co_curricular WHERE user_id = 20');
print_r(json_encode($res, JSON_PRETTY_PRINT));
