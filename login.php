<?php
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
  <link rel="stylesheet" href="Main.css">
  <title>Document</title>
</head>

<body>
  <div class="jumbotron text-center head" style="margin-bottom:0">
    <h1>Renthub</h1>
    <p>Find your perfect room!</p>
  </div>

  <nav class="navbar navbar-expand-sm bg-dark navbar-dark">
    <!-- Brand/logo -->
    <a class="navbar-brand" href="./">
      <img src="./img/logo.png" style="width:40px;border-radius: 50%;">
    </a>

    <!-- Links -->
    <ul class="navbar-nav">
      <li class="nav-item a ">
        <a class="nav-link active" href="./login.php">ลงประกาศที่พัก</a>
      </li>
    </ul>
  </nav>

  <div class="row">
    <div class="col"></div>
    <div class="col login">
      <h1>เข้าสู่ระบบ</h1>
      <form action="check_login.php" method="post">
        <div class="form-group">
          <label>ชื่อผู้ใช้</label>
          <input type="text" class="form-control" placeholder="กรอกชื่อผู้ใช้" name="txt_username">
        </div>
        <div class="form-group">
          <label>รหัสผ่าน</label>
          <input type="password" class="form-control" placeholder="กรอกรหัสผ่าน" name="txt_password">
        </div>
        <div class="l">
          ยังไม่ได้เป็นสมาชิก? <a href="./signup.php">กดที่นี่</a>
        </div>
        <div>
          <button type="submit" class="btn btn-primary">เข้าสู่ระบบ</button>
        </div>
      </form>
    </div>
    <div class="col"></div>
  </div>

</body>

</html>