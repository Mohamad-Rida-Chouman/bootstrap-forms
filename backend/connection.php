<?php

$host = "localhost";
$db_user = "root";
$db_pass = null;
$db_name = "usersdb";

$mysqli = new mysqli($host, $db_user, $db_pass, $db_name);
if ($mysqli) {
    echo ('connection succesful');
} else {
    die ('a connection was unsuccessful');
}