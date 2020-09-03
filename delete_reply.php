<?php 

session_start();
include("connect.php");


    $rid = $_GET['rid'];
    $aid = $_SESSION["aid"];

    $sql = "DELETE FROM reply WHERE id_reply = $rid";
    $result = mysqli_query($conn, $sql) or die(mysqli_error($conn));

    if($result){
        header("location: apartment_detail.php?aid=".$aid);
    }
    else{
        echo $result;
    }


?>