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

    <div class="row">
        <div class="col add">
            <form action="./check_add.php" method="post" enctype="multipart/form-data">
                <div class="form-group">
                    <label>ชื่อที่พัก</label>
                    <input type="text" class="form-control" placeholder="กรอกชื่อที่พัก" name="apart_name">
                </div>
                <div class="form-group">
                    <label>ค่าเช่า</label>
                    <input type="text" class="form-control" placeholder="กรอกค่าเช่า" name="apart_rent">
                </div>
                <div class="form-group">
                    <label>ที่ตั้ง</label>
                    <textarea class="form-control" rows="5" placeholder="กรอกที่อยู่" name="apart_address"></textarea>
                </div>
                <div class="form-group">
                    <label>จังหวัด</label>
                    <select class="form-control" name="apart_province">
                        <option>เลือกจังหวัด</option>
                        <option>นครราชสีมา</option>
                        <option>เชียงใหม่</option>
                        <option>กาญจนบุรี</option>
                        <option>ตาก</option>
                        <option>อุบลราชธานี</option>
                        <option>สุราษฎร์ธานี</option>
                        <option>ชัยภูมิ</option>
                        <option>แม่ฮ่องสอน</option>
                        <option>เพชรบูรณ์</option>
                        <option>ลำปาง</option>
                        <option>อุดรธานี</option>
                        <option>เชียงราย</option>
                        <option>น่าน</option>
                        <option>เลย</option>
                        <option>ขอนแก่น</option>
                        <option>พิษณุโลก</option>
                        <option>บุรีรัมย์</option>
                        <option>นครศรีธรรมราช</option>
                        <option>สกลนคร</option>
                        <option>นครสวรรค์</option>
                        <option>ศรีสะเกษ</option>
                        <option>กำแพงเพชร</option>
                        <option>ร้อยเอ็ด</option>
                        <option>สุรินทร์</option>
                        <option>อุตรดิตถ์</option>
                        <option>สงขลา</option>
                        <option>สระแก้ว</option>
                        <option>กาฬสินธุ์</option>
                        <option>อุทัยธานี</option>
                        <option>สุโขทัย</option>
                        <option>แพร่</option>
                        <option>ประจวบคีรีขันธ์</option>
                        <option>จันทบุรี</option>
                        <option>พะเยา</option>
                        <option>เพชรบุรี</option>
                        <option>ลพบุรี</option>
                        <option>ชุมพร</option>
                        <option>นครพนม</option>
                        <option>สุพรรณบุรี</option>
                        <option>ฉะเชิงเทรา</option>
                        <option>มหาสารคาม</option>
                        <option>ราชบุรี</option>
                        <option>ตรัง</option>
                        <option>กรุงเทพมหานคร</option>
                        <option>ปราจีนบุรี</option>
                        <option>กระบี่</option>
                        <option>พิจิตร</option>
                        <option>ยะลา</option>
                        <option>ลำพูน</option>
                        <option>นราธิวาส</option>
                        <option>ชลบุรี</option>
                        <option>มุกดาหาร</option>
                        <option>บึงกาฬ</option>
                        <option>พังงา</option>
                        <option>ยโสธร</option>
                        <option>หนองบัวลำภู</option>
                        <option>สระบุรี</option>
                        <option>ระยอง</option>
                        <option>พัทลุง</option>
                        <option>ระนอง</option>
                        <option>อำนาจเจริญ</option>
                        <option>ตราด</option>
                        <option>พระนครศรีอยุธยา </option>
                        <option>สตูล</option>
                        <option>ชัยนาท</option>
                        <option>นครปฐม</option>
                        <option>นครนายก</option>
                        <option>ปัตตานี</option>
                        <option>กรุงเทพฯ</option>
                        <option>ปทุมธานี</option>
                        <option>สมุทรปราการ</option>
                        <option>อ่างทอง</option>
                        <option>สมุทรสาคร</option>
                        <option>สิงห์บุรี</option>
                        <option>นนทบุรี</option>
                        <option>ภูเก็ต</option>
                        <option>สมุทรสงคราม</option>
                    </select>
                </div>
                <div class="form-group">
                    <label>เบอร์โทรศัพท์</label>
                    <input type="text" class="form-control" placeholder="กรอกเบอร์โทรศัพท์" name="apart_phone">
                </div>
        </div>
        <div class="col add">
            <div class="form-group">
                <label>รายละเอียดที่พัก</label>
                <textarea class="form-control" rows="8" placeholder="กรอกรายละเอียด" name="apart_detail"></textarea>
            </div>
            <div class="form-check-inline-group">
                <label>สิ่งอำนวยความสะดวก</label><br>
                <div class="row">
                    <div class="col">
                        <input type="checkbox" class="form-check-input-control" name="apart_facility[]" value="เครื่องปรับอากาศ ">เครื่องปรับอากาศ <br>
                        <input type="checkbox" class="form-check-input-control" name="apart_facility[]" value="เครื่องทำน้ำอุ่น "  >เครื่องทำน้ำอุ่น <br>
                        <input type="checkbox" class="form-check-input-control" name="apart_facility[]" value="เฟอร์นิเจอร์(ตู้/เตียง) " >เฟอร์นิเจอร์(ตู้/เตียง)<br>
                        <input type="checkbox" class="form-check-input-control" name="apart_facility[]" value="เคเบิลทีวี/ดาวเทียม ">เคเบิลทีวี / ดาวเทียม<br>
                        <input type="checkbox" class="form-check-input-control" name="apart_facility[]" value="โทรศัพท์สายตรง ">โทรศัพท์สายตรง<br>
                        <input type="checkbox" class="form-check-input-control" name="apart_facility[]" value="มีอินเตอร์เน็ตไร้สาย(Wi-Fi) ">มีอินเตอร์เน็ตไร้สาย (Wi-Fi)<br>
                        <input type="checkbox" class="form-check-input-control" name="apart_facility[]" value="ซิงค์ล้างจาน/อ่างล้างจาน ">ซิงค์ล้างจาน/อ่างล้างจาน<br>
                        <input type="checkbox" class="form-check-input-control" name="apart_facility[]" value="ทีวี ">ทีวี<br>
                        <input type="checkbox" class="form-check-input-control" name="apart_facility[]" value="ตู้เย็น ">ตู้เย็น<br>

                    </div>
                    <div class="col">
                        <input type="checkbox" class="form-check-input-control" name="apart_facility[]" value="ที่จอดรถ ">ที่จอดรถ <br>
                        <input type="checkbox" class="form-check-input-control" name="apart_facility[]" value="ลิฟท์ ">ลิฟท์ <br>
                        <input type="checkbox" class="form-check-input-control" name="apart_facility[]" value="มีอินเตอร์เน็ตภายในอาคาร ">มีอินเตอร์เน็ตภายในอาคาร <br>
                        <input type="checkbox" class="form-check-input-control" name="apart_facility[]" value="กล้องวงจรปิด(CCTV) ">กล้องวงจรปิด(CCTV) <br>
                        <input type="checkbox" class="form-check-input-control" name="apart_facility[]" value="มีระบบความปลอดภัย(Keycard) ">มีระบบความปลอดภัย(Keycard) <br>
                        <input type="checkbox" class="form-check-input-control" name="apart_facility[]" value="สระว่ายน้ำ ">สระว่ายน้ำ <br>
                        <input type="checkbox" class="form-check-input-control" name="apart_facility[]" value="ร้านอาหาร ">ร้านอาหาร <br>
                        <input type="checkbox" class="form-check-input-control" name="apart_facility[]" value="ร้านสะดวกซื้อ ">ร้านสะดวกซื้อ <br>
                        <input type="checkbox" class="form-check-input-control" name="apart_facility[]" value="ร้านซัก-รีด/มีบริการเครื่องซักผ้า ">ร้านซัก-รีด/มีบริการเครื่องซักผ้า <br>
                        <input type="checkbox" class="form-check-input-control" name="apart_facility[]" value="โรงยิม/ฟิตเนส ">โรงยิม/ฟิตเนส <br>
                    </div>
                </div>
            </div>
            <div class="form-group">
                <label>รูปภาพ</label>
                <input type="file" class="form-control-file" name="apart_img" >
            </div>
            <div>
                <button type="submit" class="btn btn-danger" onClick="javascript: return confirm('ยืนยันการเพิ่ม');">เพิ่ม</button>
            </div>
        </div>
        </form>
    </div>



</body>

</html>