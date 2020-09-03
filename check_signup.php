<?php 

include("connect.php");

if (($_FILES['profile_pic']['name']!="")){
    // Where the file is going to be stored
     $target_dir = "img/";
     $file = $_FILES['profile_pic']['name'];
     $path = pathinfo($file);
     $filename = $path['filename'];
     $ext = $path['extension'];
     $temp_name = $_FILES['profile_pic']['tmp_name'];
     $path_filename_ext = $target_dir.$filename.".".$ext;
     
    // Check if file already exists
    if (file_exists($path_filename_ext)) {
     echo "Sorry, file already exists.";
     }else{
     move_uploaded_file($temp_name,$path_filename_ext);
     echo "Congratulations! File Uploaded Successfully.";
     }


    $name = $_POST['txt_name'];
    $username = $_POST['txt_username'];
    $password = $_POST['txt_password'];
    $img = $filename.".jpg";
    $phone = $_POST['txt_phone'];

    $sql = "INSERT INTO user VALUES('','$name','$username','$password','$phone','$img')";
    $result = mysqli_query($conn, $sql) or die(mysqli_error($conn));

    if($result){
        echo '<script type="text/javascript">window.onload = function () { alert("เพิ่มข้อมูลสำเร็จ"); window.location = "login.php";}</script>';
    }else{
        
        echo '<script type="text/javascript">window.onload = function () { alert("เพิ่มข้อมูลไม่สำเร็จ"); window.location = "signup.php";}</script>';

    }

    }

?>