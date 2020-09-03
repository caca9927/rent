<?php
session_start();
include("connect.php");

?>


<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <link rel="stylesheet" href="Main.css">
    <title>Document</title>
</head>

<body>
    <div class="jumbotron text-center head" style="margin-bottom:0">
        <h1>Renthub</h1>
        <p>Find your perfect room!</p>
    </div>
    <?php
    $uid = $_SESSION["user_id"];
    $q = "SELECT * FROM user WHERE id = $uid";
    $result = mysqli_query($conn, $q);
    $rs = mysqli_fetch_array($result);
    $aid = $_GET["aid"];
    $_SESSION['aid'] =  $aid;
    ?>

    <nav class="navbar navbar-expand-sm bg-dark navbar-dark">
        <!-- Brand/logo -->
        <a class="navbar-brand account" href="./user.php">
            <img src="<?= "img/" . $rs['profile_pic']; ?>" style="width:40px;border-radius: 50%;">&nbsp;<?= $rs['name'] ?>
        </a>
        <!-- Links -->
        <ul class="navbar-nav">
            <li class="nav-item a ">
                <a class="nav-link active" href="./list.php">รายการที่พัก</a>
            </li>
        </ul>
        <ul class="navbar-nav">
            <li class="nav-item a ">
                <a class="nav-link active" href="./add.php">เพิ่มที่พัก</a>
            </li>
        </ul>
        <ul class="navbar-nav">
            <li class="nav-item a ">
                <a class="nav-link active" href="./logout.php">ออกจากระบบ</a>
            </li>
        </ul>
    </nav>



    <div class="inside">

        <form action="./update_image.php" method="post" enctype="multipart/form-data">
            <div class="form-group">
                <label>รูปภาพ</label>
                <input type="file" class="form-control-file" name="apart_img" required>
            </div>
            <div>
                <button type="submit" class="btn btn-primary">เปลี่ยนรูปภาพ</button>
            </div>
        </form>
    </div>


</body>

</html>