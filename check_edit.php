<?php 
session_start();
include("connect.php");




$aid = $_SESSION["aid"];
$name = $_POST['apart_name'];
$fee = $_POST['apart_rent'];
$address = $_POST['apart_address'];
$province = $_POST['apart_province'];
$phone = $_POST['apart_phone'];
$detail = $_POST['apart_detail'];
$uid = $_SESSION["user_id"];
$facility = $_POST['apart_facility'];

$facility = implode($facility);

    $sql = "UPDATE aparment SET apart_name = '$name', apart_detail='$detail', apart_rent='$fee', apart_facility='$facility',
     apart_address='$address', apart_phone='$phone', apart_province='$province' WHERE id = '$aid' and user_id = '$uid'";

    $result = mysqli_query($conn, $sql) or die(mysqli_error($conn));

    if($result){
        $_SESSION["aid"];
        echo '<script type="text/javascript">window.onload = function () { alert("แก้ไขข้อมูลสำเร็จ"); window.location = "user.php";}</script>';
        
    }else{
        
        echo '<script type="text/javascript">window.onload = function () { alert("แก้ไขข้อมูลไม่สำเร็จ"); window.location = "add.php";}</script>';

    }




       
?>