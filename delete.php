<?php 

session_start();
include("connect.php");


    $aid = $_GET['aid'];

    $sql = "DELETE FROM aparment WHERE id = $aid";
    $result = mysqli_query($conn, $sql);

    if($result){
        header("location: list.php");
    }



?>