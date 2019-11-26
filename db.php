<?php

$servername = "localhost";
$username = "root";
$password = "password";
$db = "rkown";

#Create connection
#$con = mysqli_connect($servername, $username, $password,$db);
define("DB_SERVER", "localhost");
define("DB_USER", "root");
define("DB_PASSWORD", "");
define("DB_DATABASE", "rkown");

$con = mysqli_connect(DB_SERVER , DB_USER, DB_PASSWORD, DB_DATABASE);

// Check connection
if (!$con) {
    die("Connection failed: " . mysqli_connect_error());
}


?>
