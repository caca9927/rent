<?php 
session_start();
include("connect.php");

$uid = $_SESSION["user_id"];
$reply = $_POST['reply'];
$id_com = $_POST['id_com'];
$aid = $_SESSION["aid"];

$sql = "INSERT INTO reply VALUES('','$reply','$uid','$id_com',CURRENT_TIMESTAMP)";
$result = mysqli_query($conn, $sql) or die(mysqli_error($conn));
if($result){
    header("location: apartment_detail.php?aid=".$aid);
    
}else{
    echo $result;
}

?>
