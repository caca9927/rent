<?php 
include("connect.php");
session_start();
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

  <nav class="navbar navbar-expand-sm bg-dark navbar-dark">
    <!-- Brand/logo -->
    <a class="navbar-brand" href="./">
      <img src="./img/logo.png" style="width:40px;border-radius: 50%;">
    </a>

    <!-- Links -->
    <ul class="navbar-nav">
      <li class="nav-item a ">
        <a class="nav-link" href="./login.php">ลงประกาศที่พัก</a>
      </li>
    </ul>
  </nav>

  <div class="row">
    <div class="col"></div>
    <div class="col">
      <div class="search">
        <form action="./search.php" method="post">
          <div class="form-group searching">
            <input type="text" class="form-control" placeholder="ค้นหาชื่ออาพารท์เมนต์ / จังหวัด" name="search">
            <button type="submit" class="btn btn-primary" name="submit">ค้นหา</button>
          </div>
        </form>
      </div>
    </div>
    <div class="col"></div>
  </div>

  <div class="inside">
    <table class="table table-hover">
      <tbody>
        <?php 
            $keyword = $_POST['search'];
        ?>
        <tr>
          <h2 style="padding: 5px;padding-left: 20px;">อพาร์ทเม้นท์จากการค้นหา ( <?=$keyword?> )</h2>
        </tr>
        <?php
        $keyword = $_POST['search'];
        $sql = "SELECT * FROM aparment WHERE  apart_province LIKE '%".$keyword."%' or  apart_name LIKE '%".$keyword."%'";
        $result = mysqli_query($conn,$sql) or die(mysqli_error($conn));
        while ($rs = mysqli_fetch_array($result)) {
        ?>
          <tr>
            <td align="center">
              <img src="<?= "img/" . $rs['apart_img']; ?>" style="width: 190px;height: 140px;">
            </td>
            <td>
              <h4><?= $rs['apart_name'] ?></h4>
              <p class="location"><i class="material-icons">place</i><?= $rs['apart_address'] ?></p>
              <p class="price"><?= $rs['apart_rent'] ?></p>
              <p class="location"><i class="material-icons">location_city</i><?= $rs['apart_province'] ?></p>
            </td>
            <td>
              <button type="button" class="btn btn-secondary" onClick="Javascript:window.location.href = 'http://127.0.0.1/rent/apart_detail_main.php?aid=<?= $rs['id'] ?>';">รายละเอียด</button>
            </td>
          </tr>
        <?php } ?>
      </tbody>
    </table>
  </div>
</body>

</html>