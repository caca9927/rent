<?php
    ini_set('display_errors', 1);
    error_reporting(~0);
    $serverName = "localhost";
    $userName = "root";
    $userPassword = "";
    $dbName = "rent";
    $conn = mysqli_connect($serverName, $userName, $userPassword, $dbName);
?>