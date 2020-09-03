<?php
session_start();
include("connect.php");
?>


<?php
$aid = $_GET['aid'];
$_SESSION["aid"] = $_GET['aid'];
$q = "SELECT * FROM aparment WHERE id = $aid";
$result = mysqli_query($conn, $q);
while ($rs = mysqli_fetch_array($result, MYSQLI_ASSOC)) {
    $current_visitor = $rs['visitors'];
    $new_visitor = $current_visitor + 1;
    $update = mysqli_query($conn, "UPDATE aparment SET visitors = $new_visitor WHERE id = $aid");
}
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
    <link rel="stylesheet" type="text/css" href="./css/flaticon.css">
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
        <a class="navbar-brand" href="./index.php">
            <img src="img/logo.png" style="width:40px;border-radius: 50%;">&nbsp;
        </a>
        <!-- Links -->
        <ul class="navbar-nav">
            <li class="nav-item a ">
                <a class="nav-link" href="./login.php">ลงประกาศที่พัก</a>
            </li>
        </ul>
    </nav>

    <div class="inside">
        <?php
        $aid = $_GET['aid'];
        $_SESSION["aid"] = $_GET['aid'];
        $q = "SELECT * FROM aparment WHERE id = $aid";
        $result = mysqli_query($conn, $q);
        $rs = mysqli_fetch_array($result);
        ?>
        <h2 style="text-align: center;"><?= $rs['apart_name'] ?><div class="visitors">ผู้เข้าชม : <?= $rs['visitors'] ?></div></h2>
        <table class="table table-hover">
            <tbody>
                <tr>
                    <td align="center">
                        <img src="<?= "img/" . $rs['apart_img']; ?>" style="width: 400px;height: 340px;">
                    </td>
                    <td>
                        <h4>
                            <p class="location"><i class="material-icons">place</i><?= $rs['apart_address'] ?></p>
                        </h4>
                        <h2>
                            <p class="pricess"><?= $rs['apart_rent'] ?></p>
                        </h2>
                        <h4>เบอร์ติดต่อ: <?= $rs['apart_phone'] ?></h4>
                        <h4 class="prices">รายละเอียดที่พัก</h4>
                        <h5><?= $rs['apart_detail'] ?></h5>
                        <h4 class="prices">สิ่งอำนวยความสะดวก</h4>
                        <h5><?php
                            $text = $rs['apart_facility'];
                            $text = explode(" ", $text);

                            for ($start = 0; $start < count($text); $start++) {
                                echo $text[$start] . "<br><br>";
                            }

                            ?></h5>

                    </td>
                </tr>
            </tbody>
        </table>

    </div>


    <div class="comment">
        <h2><i class="material-icons">comment</i> ติดต่อสอบถาม</h2>
        <form action="./comment_main.php" method="post">
            <div class="form-group">
                <textarea class="form-control" rows="5" placeholder="แสดงความคิดเห็น..." name="comment"></textarea>
            </div>
            <div class="form-group">
                <div class="row">
                    <div class="col">
                        <input type="text" class="form-control" placeholder="ชื่อ" name="name">
                    </div>
                    <div class="col">
                        <input type="text" class="form-control" placeholder="เบอร์โทรศัพท์" name="phone">
                    </div>
                    <div class="col">
                        <button type="submit" class="btn btn-primary">ส่งข้อความ</button>
                    </div>
                </div>
            </div>

        </form>

    </div>

    <div class="show_comment comment">
        <?php
        $com = "SELECT * FROM comment WHERE apart_id = $aid";
        $result = mysqli_query($conn, $com);
        while ($row = mysqli_fetch_array($result)) {
        ?>
            <div class="data_comment">
                <div class="name_phone">
                    <?= $row['name'] ?> (<?= $row['phone'] ?>) <i><?= $row['date_time'] ?></i>
                </div>
                <?= $row['comment']; ?> <br>
                <div class="data_reply_main" 
                <?php 
                    $id_com = $row['id_com'];
                    $show_reply = "SELECT * FROM reply WHERE id_com = $id_com ";
                    $fetch_reply = mysqli_query($conn, $show_reply);
                    $get = mysqli_fetch_array($fetch_reply);
                    if($get['id_reply'] == null){
                        echo "hidden";
                    }else{
                        echo " ";
                    }
                
                ?>>
                    <?php
                    $id_com = $row['id_com'];
                    $show_reply = "SELECT * FROM reply WHERE id_com = $id_com ";
                    $fetch_reply = mysqli_query($conn, $show_reply);
                    while ($re = mysqli_fetch_array($fetch_reply)) {
                    ?>
                        ผู้ดูแลที่พัก : <?= $re['reply'] ?> <i><?= $re['date_time'] ?></i> <br>
                    <?php } ?>
                </div>
                
            </div>



        <?php } ?>

    </div>




</body>

</html>