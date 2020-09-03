<?php
session_start();
include("connect.php");
ini_set('display_errors', 1);

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
    <?php
    $uid = $_SESSION["user_id"];
    $q = "SELECT * FROM user WHERE id = $uid";
    $result = mysqli_query($conn, $q);
    $rs = mysqli_fetch_array($result);
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

    <?php

    $aid = $_GET['aid'];
    $_SESSION["aid"] = $aid;
    $sql = "SELECT * FROM aparment WHERE id = $aid";
    $result = mysqli_query($conn, $sql);
    $row = mysqli_fetch_array($result, MYSQLI_ASSOC);
    $target_dir = "img/";
    ?>
    <div class="row">
        <div class="col add">
            <form action="./check_edit.php" method="post" enctype="multipart/form-data">
                <div class="form-group">
                    <label>ชื่อที่พัก</label>
                    <input type="text" class="form-control" placeholder="กรอกชื่อที่พัก" name="apart_name" value="<?= $row['apart_name'] ?>">
                </div>
                <div class="form-group">
                    <label>ค่าเช่า</label>
                    <input type="text" class="form-control" placeholder="กรอกค่าเช่า" name="apart_rent" value="<?= $row['apart_rent'] ?>">
                </div>
                <div class="form-group">
                    <label>ที่ตั้ง</label>
                    <textarea class="form-control" rows="5" placeholder="กรอกที่อยู่" name="apart_address"><?= $row['apart_address'] ?></textarea>
                </div>
                <div class="form-group">
                    <label>จังหวัด</label>
                    <select class="form-control" name="apart_province" >
                        <option <?php if($row['apart_province'] == "เลือกจังหวัด"){ echo "selected"; } ?>>เลือกจังหวัด</option>
                        <option <?php if($row['apart_province'] == "นครราชสีมา"){ echo "selected"; } ?>>นครราชสีมา</option>
                        <option <?php if($row['apart_province'] == "เชียงใหม่"){ echo "selected"; } ?>>เชียงใหม่</option>
                        <option <?php if($row['apart_province'] == "กาญจนบุรี"){ echo "selected"; } ?>>กาญจนบุรี</option>
                        <option <?php if($row['apart_province'] == "ตาก"){ echo "selected"; } ?>>ตาก</option>
                        <option <?php if($row['apart_province'] == "อุบลราชธานี"){ echo "selected"; } ?>>อุบลราชธานี</option>
                        <option <?php if($row['apart_province'] == "สุราษฎร์ธานี"){ echo "selected"; } ?>>สุราษฎร์ธานี</option>
                        <option <?php if($row['apart_province'] == "ชัยภูมิ"){ echo "selected"; } ?>>ชัยภูมิ</option>
                        <option <?php if($row['apart_province'] == "แม่ฮ่องสอน"){ echo "selected"; } ?>>แม่ฮ่องสอน</option>
                        <option <?php if($row['apart_province'] == "เพชรบูรณ์"){ echo "selected"; } ?>>เพชรบูรณ์</option>
                        <option <?php if($row['apart_province'] == "ลำปาง"){ echo "selected"; } ?>>ลำปาง</option>
                        <option <?php if($row['apart_province'] == "อุดรธานี"){ echo "selected"; } ?>>อุดรธานี</option>
                        <option <?php if($row['apart_province'] == "เชียงราย"){ echo "selected"; } ?>>เชียงราย</option>
                        <option <?php if($row['apart_province'] == "น่าน"){ echo "selected"; } ?>>น่าน</option>
                        <option <?php if($row['apart_province'] == "เลย"){ echo "selected"; } ?>>เลย</option>
                        <option <?php if($row['apart_province'] == "ขอนแก่น"){ echo "selected"; } ?>>ขอนแก่น</option>
                        <option <?php if($row['apart_province'] == "พิษณุโลก"){ echo "selected"; } ?>>พิษณุโลก</option>
                        <option <?php if($row['apart_province'] == "บุรีรัมย์"){ echo "selected"; } ?>>บุรีรัมย์</option>
                        <option <?php if($row['apart_province'] == "นครศรีธรรมราช"){ echo "selected"; } ?>>นครศรีธรรมราช</option>
                        <option <?php if($row['apart_province'] == "สกลนคร"){ echo "selected"; } ?>>สกลนคร</option>
                        <option <?php if($row['apart_province'] == "นครสวรรค์"){ echo "selected"; } ?>>นครสวรรค์</option>
                        <option <?php if($row['apart_province'] == "ศรีสะเกษ"){ echo "selected"; } ?>>ศรีสะเกษ</option>
                        <option <?php if($row['apart_province'] == "กำแพงเพชร"){ echo "selected"; } ?>>กำแพงเพชร</option>
                        <option <?php if($row['apart_province'] == "ร้อยเอ็ด"){ echo "selected"; } ?>>ร้อยเอ็ด</option>
                        <option <?php if($row['apart_province'] == "สุรินทร์"){ echo "selected"; } ?>>สุรินทร์</option>
                        <option <?php if($row['apart_province'] == "อุตรดิตถ์"){ echo "selected"; } ?>>อุตรดิตถ์</option>
                        <option <?php if($row['apart_province'] == "บุรีรัมย์"){ echo "selected"; } ?>>สงขลา</option>
                        <option <?php if($row['apart_province'] == "สงขลา"){ echo "selected"; } ?>>สระแก้ว</option>
                        <option <?php if($row['apart_province'] == "กาฬสินธุ์"){ echo "selected"; } ?>>กาฬสินธุ์</option>
                        <option <?php if($row['apart_province'] == "อุทัยธานี"){ echo "selected"; } ?>>อุทัยธานี</option>
                        <option <?php if($row['apart_province'] == "แพร่"){ echo "selected"; } ?>>สุโขทัย</option>
                        <option <?php if($row['apart_province'] == "แพร่"){ echo "selected"; } ?>>แพร่</option>
                        <option <?php if($row['apart_province'] == "ประจวบคีรีขันธ์"){ echo "selected"; } ?>>ประจวบคีรีขันธ์</option>
                        <option <?php if($row['apart_province'] == "จันทบุรี"){ echo "selected"; } ?>>จันทบุรี</option>
                        <option <?php if($row['apart_province'] == "พะเยา"){ echo "selected"; } ?>>พะเยา</option>
                        <option <?php if($row['apart_province'] == "เพชรบุรี"){ echo "selected"; } ?>>เพชรบุรี</option>
                        <option <?php if($row['apart_province'] == "ลพบุรี"){ echo "selected"; } ?>>ลพบุรี</option>
                        <option <?php if($row['apart_province'] == "ชุมพร"){ echo "selected"; } ?>>ชุมพร</option>
                        <option <?php if($row['apart_province'] == "นครพนม"){ echo "selected"; } ?>>นครพนม</option>
                        <option <?php if($row['apart_province'] == "สุพรรณบุรี"){ echo "selected"; } ?>>สุพรรณบุรี</option>
                        <option <?php if($row['apart_province'] == "ฉะเชิงเทรา"){ echo "selected"; } ?>>ฉะเชิงเทรา</option>
                        <option <?php if($row['apart_province'] == "มหาสารคาม"){ echo "selected"; } ?>>มหาสารคาม</option>
                        <option <?php if($row['apart_province'] == "ราชบุรี"){ echo "selected"; } ?>>ราชบุรี</option>
                        <option <?php if($row['apart_province'] == "ตรัง"){ echo "selected"; } ?>>ตรัง</option>
                        <option <?php if($row['apart_province'] == "ปราจีนบุรี"){ echo "selected"; } ?>>ปราจีนบุรี</option>
                        <option <?php if($row['apart_province'] == "กระบี่"){ echo "selected"; } ?>>กระบี่</option>
                        <option <?php if($row['apart_province'] == "พิจิตร"){ echo "selected"; } ?>>พิจิตร</option>
                        <option <?php if($row['apart_province'] == "ยะลา"){ echo "selected"; } ?>>ยะลา</option>
                        <option <?php if($row['apart_province'] == "ลำพูน"){ echo "selected"; } ?>>ลำพูน</option>
                        <option <?php if($row['apart_province'] == "นราธิวาส"){ echo "selected"; } ?>>นราธิวาส</option>
                        <option <?php if($row['apart_province'] == "ชลบุรี"){ echo "selected"; } ?>>ชลบุรี</option>
                        <option <?php if($row['apart_province'] == "มุกดาหาร"){ echo "selected"; } ?>>มุกดาหาร</option>
                        <option <?php if($row['apart_province'] == "บึงกาฬ"){ echo "selected"; } ?>>บึงกาฬ</option>
                        <option <?php if($row['apart_province'] == "พังงา"){ echo "selected"; } ?>>พังงา</option>
                        <option <?php if($row['apart_province'] == "ยโสธร"){ echo "selected"; } ?>>ยโสธร</option>
                        <option <?php if($row['apart_province'] == "หนองบัวลำภู"){ echo "selected"; } ?>>หนองบัวลำภู</option>
                        <option <?php if($row['apart_province'] == "สระบุรี"){ echo "selected"; } ?>>สระบุรี</option>
                        <option <?php if($row['apart_province'] == "ระยอง"){ echo "selected"; } ?>>ระยอง</option>
                        <option <?php if($row['apart_province'] == "พัทลุง"){ echo "selected"; } ?>>พัทลุง</option>
                        <option <?php if($row['apart_province'] == "ระนอง"){ echo "selected"; } ?>>ระนอง</option>
                        <option <?php if($row['apart_province'] == "อำนาจเจริญ"){ echo "selected"; } ?>>อำนาจเจริญ</option>
                        <option <?php if($row['apart_province'] == "ตราด"){ echo "selected"; } ?>>ตราด</option>
                        <option <?php if($row['apart_province'] == "พระนครศรีอยุธยา"){ echo "selected"; } ?>>พระนครศรีอยุธยา </option>
                        <option <?php if($row['apart_province'] == "สตูล"){ echo "selected"; } ?>>สตูล</option>
                        <option <?php if($row['apart_province'] == "ชัยนาท"){ echo "selected"; } ?>>ชัยนาท</option>
                        <option <?php if($row['apart_province'] == "นครปฐม"){ echo "selected"; } ?>>นครปฐม</option>
                        <option <?php if($row['apart_province'] == "นครนายก"){ echo "selected"; } ?>>นครนายก</option>
                        <option <?php if($row['apart_province'] == "ปัตตานี"){ echo "selected"; } ?>>ปัตตานี</option>
                        <option <?php if($row['apart_province'] == "กรุงเทพฯ"){ echo "selected"; } ?>>กรุงเทพฯ</option>
                        <option <?php if($row['apart_province'] == "ปทุมธานี"){ echo "selected"; } ?>>ปทุมธานี</option>
                        <option <?php if($row['apart_province'] == "สมุทรปราการ"){ echo "selected"; } ?>>สมุทรปราการ</option>
                        <option <?php if($row['apart_province'] == "อ่างทอง"){ echo "selected"; } ?>>อ่างทอง</option>
                        <option <?php if($row['apart_province'] == "สมุทรสาคร"){ echo "selected"; } ?>>สมุทรสาคร</option>
                        <option <?php if($row['apart_province'] == "สิงห์บุรี"){ echo "selected"; } ?>>สิงห์บุรี</option>
                        <option <?php if($row['apart_province'] == "นนทบุรี"){ echo "selected"; } ?>>นนทบุรี</option>
                        <option <?php if($row['apart_province'] == "ภูเก็ต"){ echo "selected"; } ?>>ภูเก็ต</option>
                        <option <?php if($row['apart_province'] == "สมุทรสงคราม"){ echo "selected"; } ?>>สมุทรสงคราม</option>
                    </select>
                </div>
                <div class="form-group">
                    <label>เบอร์โทรศัพท์</label>
                    <input type="text" class="form-control" placeholder="กรอกเบอร์โทรศัพท์" name="apart_phone" value="<?= $row['apart_phone'] ?>">
                </div>
        </div>
        <div class="col add">
            <div class="form-group">
                <label>รายละเอียดที่พัก</label>
                <textarea class="form-control" rows="8" placeholder="กรอกรายละเอียด" name="apart_detail"><?= $row['apart_detail'] ?></textarea>
            </div>
            <div class="form-check-inline-group">
                <label>สิ่งอำนวยความสะดวก</label><br>



                <div class="row">
                <?php
                    $text = $row['apart_facility'];
                    $text = explode(" ", $text);

                ?>
                    <div class="col">
                        <input type="checkbox" class="form-check-input-control" name="apart_facility[]" value="เครื่องปรับอากาศ " <?php if(in_array("เครื่องปรับอากาศ",$text)){echo "checked";}?> >เครื่องปรับอากาศ <br>
                        <input type="checkbox" class="form-check-input-control" name="apart_facility[]" value="เครื่องทำน้ำอุ่น " <?php if(in_array("เครื่องทำน้ำอุ่น",$text)){echo "checked";}?>  >เครื่องทำน้ำอุ่น <br>
                        <input type="checkbox" class="form-check-input-control" name="apart_facility[]" value="เฟอร์นิเจอร์(ตู้/เตียง) " <?php if(in_array("เฟอร์นิเจอร์(ตู้/เตียง)",$text)){echo "checked";}?> >เฟอร์นิเจอร์(ตู้/เตียง)<br>
                        <input type="checkbox" class="form-check-input-control" name="apart_facility[]" value="เคเบิลทีวี/ดาวเทียม " <?php if(in_array("เคเบิลทีวี/ดาวเทียม",$text)){echo "checked";}?> >เคเบิลทีวี / ดาวเทียม<br>
                        <input type="checkbox" class="form-check-input-control" name="apart_facility[]" value="โทรศัพท์สายตรง " <?php if(in_array("โทรศัพท์สายตรง",$text)){echo "checked";}?> >โทรศัพท์สายตรง<br>
                        <input type="checkbox" class="form-check-input-control" name="apart_facility[]" value="มีอินเตอร์เน็ตไร้สาย(Wi-Fi) " <?php if(in_array("มีอินเตอร์เน็ตไร้สาย(Wi-Fi)",$text)){echo "checked";}?> >มีอินเตอร์เน็ตไร้สาย (Wi-Fi)<br>
                        <input type="checkbox" class="form-check-input-control" name="apart_facility[]" value="ซิงค์ล้างจาน/อ่างล้างจาน " <?php if(in_array("ซิงค์ล้างจาน/อ่างล้างจาน",$text)){echo "checked";}?> >ซิงค์ล้างจาน/อ่างล้างจาน<br>
                        <input type="checkbox" class="form-check-input-control" name="apart_facility[]" value="ทีวี " <?php if(in_array("ทีวี",$text)){echo "checked";}?> >ทีวี<br>
                        <input type="checkbox" class="form-check-input-control" name="apart_facility[]" value="ตู้เย็น " <?php if(in_array("ตู้เย็น",$text)){echo "checked";}?> >ตู้เย็น<br>
                    </div>
                    <div class="col">
                        <input type="checkbox" class="form-check-input-control" name="apart_facility[]" value="ที่จอดรถ " <?php if(in_array("ที่จอดรถ",$text)){echo "checked";}?> >ที่จอดรถ <br>
                        <input type="checkbox" class="form-check-input-control" name="apart_facility[]" value="ลิฟท์ " <?php if(in_array("ลิฟท์",$text)){echo "checked";}?> >ลิฟท์ <br>
                        <input type="checkbox" class="form-check-input-control" name="apart_facility[]" value="มีอินเตอร์เน็ตภายในอาคาร " <?php if(in_array("มีอินเตอร์เน็ตภายในอาคาร",$text)){echo "checked";}?> >มีอินเตอร์เน็ตภายในอาคาร <br>
                        <input type="checkbox" class="form-check-input-control" name="apart_facility[]" value="กล้องวงจรปิด(CCTV) " <?php if(in_array("กล้องวงจรปิด(CCTV)",$text)){echo "checked";}?> >กล้องวงจรปิด(CCTV) <br>
                        <input type="checkbox" class="form-check-input-control" name="apart_facility[]" value="มีระบบความปลอดภัย(Keycard) " <?php if(in_array("มีระบบความปลอดภัย(Keycard)",$text)){echo "checked";}?> >มีระบบความปลอดภัย(Keycard) <br>
                        <input type="checkbox" class="form-check-input-control" name="apart_facility[]" value="สระว่ายน้ำ " <?php if(in_array("สระว่ายน้ำ",$text)){echo "checked";}?> >สระว่ายน้ำ <br>
                        <input type="checkbox" class="form-check-input-control" name="apart_facility[]" value="ร้านอาหาร " <?php if(in_array("ร้านอาหาร",$text)){echo "checked";}?> >ร้านอาหาร <br>
                        <input type="checkbox" class="form-check-input-control" name="apart_facility[]" value="ร้านสะดวกซื้อ " <?php if(in_array("ร้านสะดวกซื้อ",$text)){echo "checked";}?> >ร้านสะดวกซื้อ <br>
                        <input type="checkbox" class="form-check-input-control" name="apart_facility[]" value="ร้านซัก-รีด/มีบริการเครื่องซักผ้า " <?php if(in_array("ร้านซัก-รีด/มีบริการเครื่องซักผ้า",$text)){echo "checked";}?> >ร้านซัก-รีด/มีบริการเครื่องซักผ้า <br>
                        <input type="checkbox" class="form-check-input-control" name="apart_facility[]" value="โรงยิม/ฟิตเนส " <?php if(in_array("โรงยิม/ฟิตเนส",$text)){echo "checked";}?> >โรงยิม/ฟิตเนส <br>

                    </div>
                </div>
            </div>
            <div>
                <button type="submit" class="btn btn-danger" onClick="javascript: return confirm('ยืนยันการแก้ไข');">แก้ไข</button>
            </div>
        </div>
        </form>
    </div>



</body>

</html>