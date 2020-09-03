<?php 

session_start();
include("connect.php");


    $cid = $_GET['cid'];
    $aid = $_SESSION["aid"];

    $sql = "DELETE FROM comment WHERE id_com = $cid";
    $result = mysqli_query($conn, $sql) or die(mysqli_error($conn));

    if($result){
        header("location: apartment_detail.php?aid=".$aid);
    }
    else{
        echo $result;
    }


?>