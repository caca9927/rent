<?php 
session_start();
include("connect.php");



if (($_FILES['apart_img']['name']!="")){
    // Where the file is going to be stored
     $target_dir = "img/";
     $file = $_FILES['apart_img']['name'];
     $path = pathinfo($file);
     if($path['filename'] != null){
        $filename = $path['filename'];
     }else{
        $filename = "no-image-box";
     }
     
     $ext = $path['extension'];
     $temp_name = $_FILES['apart_img']['tmp_name'];
     $path_filename_ext = $target_dir.$filename.".".$ext;
     
    // Check if file already exists
    if (file_exists($path_filename_ext)) {
    //  echo "Sorry, file already exists.";
     }else{
     move_uploaded_file($temp_name,$path_filename_ext);
    //  echo "Congratulations! File Uploaded Successfully.";
     }





$name = $_POST['apart_name'];
$fee = $_POST['apart_rent'];
$address = $_POST['apart_address'];
$province = $_POST['apart_province'];
$phone = $_POST['apart_phone'];
$detail = $_POST['apart_detail'];
$img = $filename.".jpg";
$uid = $_SESSION["user_id"];
$facility = $_POST['apart_facility'];

$facility = implode($facility);


    $sql = "INSERT INTO aparment VALUES('','$name','$detail','$fee','$facility','$address','$phone','$province','$img','$uid','user')";
    $result = mysqli_query($conn, $sql) or die(mysqli_error($conn));

    if($result){
        echo '<script type="text/javascript">window.onload = function () { alert("เพิ่มข้อมูลสำเร็จ"); window.location = "user.php";}</script>';
    }else{
        
        echo '<script type="text/javascript">window.onload = function () { alert("เพิ่มข้อมูลไม่สำเร็จ"); window.location = "add.php";}</script>';

    }

}


       
?>