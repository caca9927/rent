<?php 
    session_start();
    include("connect.php");

    

        $comment = $_POST['comment'];
        $name = $_POST['name'];
        $phone = $_POST['phone'];
        $aid = $_SESSION["aid"];

        $sql = "INSERT INTO comment VALUES('','$comment','$name','$phone',CURRENT_TIMESTAMP,'$aid')";
        $result = mysqli_query($conn, $sql) or die(mysqli_error($conn));

        if($result){
            header("location: apart_detail_main.php?aid=".$aid);
            
        }else{
            echo $result;
        }



?>