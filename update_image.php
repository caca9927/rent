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



$img = $filename.".jpg";
$uid = $_SESSION["user_id"];
$aid = $_SESSION['aid'] ;


$sql = "UPDATE aparment SET apart_img = '$img' WHERE id = '$aid' and user_id = '$uid'";

$result = mysqli_query($conn, $sql) or die(mysqli_error($conn));

if($result){
   $_SESSION["aid"];
   echo '<script type="text/javascript">window.onload = function () { alert("แก้ไขรูปสำเร็จ"); window.location = "user.php";}</script>';
   
}else{
   
   echo '<script type="text/javascript">window.onload = function () { alert("แก้ไขรูปไม่สำเร็จ"); window.location = "add.php";}</script>';

}

}

?>