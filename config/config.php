<?php
session_start();
$server = "localhost";

$username = "root";
$password = "";
$database = "HTI";

//jayahutanku.com
// $username = "jayahuta_hti";
// $password = "hti_root";
// $database = "hti";

$mysqli = new mysqli($server, $username, $password, $database);

?>