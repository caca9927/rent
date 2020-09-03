-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 04, 2020 at 08:48 AM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.3.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rent`
--

-- --------------------------------------------------------

--
-- Table structure for table `aparment`
--

CREATE TABLE `aparment` (
  `id` int(11) NOT NULL,
  `apart_name` varchar(100) NOT NULL,
  `apart_detail` text NOT NULL,
  `apart_rent` varchar(30) NOT NULL DEFAULT 'โทรสอบถาม',
  `apart_facility` text NOT NULL,
  `apart_address` text NOT NULL,
  `apart_phone` varchar(10) NOT NULL,
  `apart_province` varchar(30) NOT NULL,
  `apart_img` varchar(255) NOT NULL DEFAULT 'no-image-box.png',
  `user_id` int(11) NOT NULL,
  `visitors` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `aparment`
--

INSERT INTO `aparment` (`id`, `apart_name`, `apart_detail`, `apart_rent`, `apart_facility`, `apart_address`, `apart_phone`, `apart_province`, `apart_img`, `user_id`, `visitors`) VALUES
(23, 'เที่ยงเจริญห้องเช่า&อพาร์ทเม้นท์', '-อพาร์ทเม้น\r\n✅ห้องพักเดือนละ 2,500 (มัดจำพร้อมเข้าอยู่ 5,000) มัดจำได้คืนตอนออก ขั้นต่ำอยู่1เดือนได้ค่ามัดจำคืน\r\n✅เฟอร์เจอร์ครบครัน อาทิ ทีวี(สมาร์ททีวี 40”),ตู้เย็น,ตู้เสื้อผ้า,แอร์,พัดลม,เครื่องทำน้ำอุ่น\r\n✅มีระบบรักษาความปลอดภัย อาทิ กล้องวงจรปิด,ประตูคีย์การ์ด\r\n✅สิ่งอำนวยความสะดวก อาทิ เครื่องซักผ้าหยอดเหรียญ,ฟรี Wifi\r\n-ห้องแถว\r\n✅ห้องพักเดือนละ 3,000 (มัดจำพร้อมเข้าอยู่ 6,000) มัดจำได้คืนตอนออก ขั้นต่ำอยู่1เดือนได้ค่ามัดจำคืน\r\n✅เฟอร์เจอร์ครบครัน อาทิ ทีวี,ตู้เย็น,ตู้เสื้อผ้า,แอร์,พัดลม,เครื่องทำน้ำอุ่น\r\n✅มีระบบรักษาความปลอดภัย อาทิ กล้องวงจรปิด\r\n✅สิ่งอำนวยความสะดวก อาทิ เครื่องซักผ้าหยอดเหรียญ,ฟรีWifi,มีที่จอดรถส่วนตัว\r\nสถานที่ใกล้เคียง :✅ห่างจากไทวัสดุ บุรีรัมย์ 2.4 km ✅ห่างจากช้าง อินเตอร์เนชั่นแนล เซอร์กิต 5 km ✅ห่างจากช้าง อารีน่า 7 km ✅ห่างจากโรบินสัน บุรีรัมย์ 4 km ✅ห่างจากบิ๊กซี บุรีรัมย์ 5 km ✅ห่างจากมหาวิทยาลัยราชภัฏ บุรีรัมย์ 8 km', ' 2,500 - 3,000', 'เครื่องปรับอากาศ เฟอร์นิเจอร์(ตู้/เตียง) ซิงค์ล้างจาน/อ่างล้างจาน ทีวี ตู้เย็น ที่จอดรถ กล้องวงจรปิด(CCTV) มีระบบความปลอดภัย(Keycard) ร้านสะดวกซื้อ ร้านซัก-รีด/มีบริการเครื่องซักผ้า ', '136 ถ.บ้านบัว-หนองทะลอก ต.บ้านบัว อ.เมืองบุรีรัมย์ บุรีรัมย์ 31000', '0870814395', 'เลือกจังหวัด', 'abstract-blue-geometric-shapes-background_1035-17545.jpg', 1, 204),
(24, 'หอพัก ภาวินี', 'สถานที่ใกล้เคียง :เรือนจำจังหวัดบุรีรัมย์,มหาวิทยาลัยราชภัฎบุรีรัมย์,มหาวิทยาลัยราชภัฎบุรีรัมย์,สนามไอโมบาย สเตเดี้ยม,ปั๊มน้ำมันปตท. (บริษัท ขวัญภัทรพรปิโตรเลียม จำกัด)', ' 2,500', 'เครื่องปรับอากาศ เครื่องทำน้ำอุ่น เฟอร์นิเจอร์(ตู้/เตียง) มีอินเตอร์เน็ตไร้สาย(Wi-Fi) ซิงค์ล้างจาน/อ่างล้างจาน ที่จอดรถ ร้านซัก-รีด/มีบริการเครื่องซักผ้า ', '262 หมู่ 4 ต.อิสาณ อ.เมืองบุรีรัมย์ บุรีรัมย์ 31000', '0864686850', 'สงขลา', '20130923121826-812.jpg', 1, 148),
(26, 'VBS', 'ห้องพักรายวัน ย่านห้วยขวาง ดินแดง รัชดา ราคาถูกสวย สะดวก สบาย สะอาด โทร 096-595-5720. Line id: vbs13579\r\nสนใจโอนเงินจองห้องได้นะคะ. (ไม่รับจองปากเปล่าคะ)\r\nอัตราเช่ารายวัน วันละ 460-490 บาท (วันต่อไปลด 30 บาท) ค่าประกัน 500 บาท\r\nห้องแอร์รายวัน มี เฟอร์นิเจอร์ ตู้ เตียง เครื่องทำน้ำอุ่น ตู้เย็น ทีวี เคเบิ้ล ดาวเทียม โทรศัพท์อัตโนมัติ 24 ชม. WIFI (วันละ 10 บาท)\r\nห้อง 460 บาทไม่มีระเบียง=== ห้อง 490 บาทมีระเบียง\r\n(มีที่จอดรถมอเตอร์ไซค์ 100.-บาท ที่จอดรถยนต์เต็มแล้วนะคะ) ขอย้ำ ที่จอดรถยนต์เต็มนะคะ\r\nระบบรักษาความปลอดภัย CCTV KEYCARD รปภ. ด้านหน้ามีตู้ ATM ร้านซักรีด ร้านเสริมสวย ร้านอาหาร LOTUS EXPRESS ร้านเซเว่น\r\nใกล้ MRT พระราม9 ห้างเอสพลานาด ใกล้สถานทูตจีน เดอะสตรีท บิ๊กซี เซ็นทรัลพระราม9 ฟอร์จูน ไอทีมอลล์ เทสโก้ โลตัส\r\nโฮมโปร ตลาดห้วยขวาง เมืองไทยรัชดาลัยเธียร์เตอร์ โรงเรียนเตรียมอุดมพัฒนาการ สนามกีฬาไทยญี่ปุ่นดินแดง กทม.2\r\nพาณิชย์จำนงค์ สน.ดินแดง ม.หอการค้า สำนักงานเขตดินแดง กระทรวงแรงงานอพาร์ทเม้นต์ เข้า-ออก ได้หลายทาง เช่น จากถนนประชาสงเคราะห์ เข้าซอยพร้อมพรรณไป 500 เมตร เจอเซเว่น อพาร์ทเม้นต์อยู่ตรงข้ามกับเซเว่นพอดี\r\nถ้านั่งวินมอไซค์ ไป MRT ศูนย์วัฒนธรรม (ใกล้ๆ บิ๊กซี) 20 บาท กรุณาโอนเงินจองห้องล่วงหน้า โทร 096-595-5720. (ไม่รับจองปากเปล่าคะ, ไม่อนุญาติให้เลี้ยงสัตว์ทุกชนิด)\r\n\r\nห้องรายเดือน พัดลมค่าเช่า 3,450บาท + ค่าประกัน 4,500 บาท(มีเตียงแต่ไม่มีฟูกให้นะคะ)\r\nห้องรายเดือนห้องแอร์ค่าเช่า 4,050 บาท + ค่าประกัน 5,500 บาท (มีครบทั้งเตียงและฟูกให้นะคะ)\r\nค่าไฟหน่วยละ6บาท ค่าน้ำหน่วยละ16บาท\r\nสถานที่ใกล้เคียง :BigC, กทม.2, เดอะสตรีท,ตึก AIA,ตลาดหลักทรัพย์,ตึกTRUE,ตึกไทยประกันชีวิต,RS TOWER, พาณิชย์จำนงค์, สน.ดินแดง, สนามกีฬาไทย-ญี่ปุ่น, ม.หอการค้า, สำนักงานเขตดินแดง, กระทรวงแรงงาน', '3,450', 'เครื่องปรับอากาศ เครื่องทำน้ำอุ่น เฟอร์นิเจอร์(ตู้/เตียง) เคเบิลทีวี/ดาวเทียม มีอินเตอร์เน็ตไร้สาย(Wi-Fi) ซิงค์ล้างจาน/อ่างล้างจาน ทีวี ตู้เย็น ที่จอดรถ กล้องวงจรปิด(CCTV) มีระบบความปลอดภัย(Keycard) ร้านอาหาร ร้านสะดวกซื้อ ร้านซัก-รีด/มีบริการเครื่องซักผ้า ', 'ตรงข้ามเซเว่น กลางซอยพร้อมพรรณ ถ.ประชาสงเคราะห์ 14 แขวงห้วยขวาง เขตห้วยขวาง กรุงเทพ 10400', '0965955720', 'กรุงเทพมหานคร', '20120518231245-789.jpg', 2, 50),
(27, '42 เพลส (เซอร์วิสอพาร์ทเมนท์ ซีคอน ศรีนครินทร์)', 'อพาร์ทเมนท์เปิดใหม่ให้เช่า ศรีนครินทร์ ซ.42 บรรยากาศดีมีระดับสงบเหมาะสำหรับผู้มาพักอาศัย\r\nและอยู่ในทำเลดีใจกลางแหล่งชุมชนขนาดใหญ่เดินทางสะดวก ตรงข้ามแหล่งช๊อบปิ้งและสถานศึกษาชั้นนำของกรุงเทพ เช่น วิทาลัยดุสิตการโรงแรม,ซีคอนสแควร์,พาราไดซ์ปาร์ค,ตลาดรถไฟ และสวนหลวงร.9 ไว้สำหรับพักผ่อนใกล้ชิดธรรมชาติ\r\nเพียง20นาทีจากสนามบินสุวรรณภูมิ,10นาทีเมก้าบางนาและเซนทรัลบางนา สะดวกใช้เวลาเดินทางเพียงนิดเดียว\r\nภายในห้องตกแต่งสวยอย่างดีใช้ SB funiture โต๊ะ ,ตู้ ,เตียง ,ทุกห้องมีระเบียงส่วนตัว ฯลฯ\r\nเครื่องใช้ไฟฟ้าครบ แอร์, เครื่องทำน้ำอุ่น, อินเตอร์เนทWIFI ฟรี!!!!!! พร้อมลิฟท์ให้บริการ.\r\nที่จอดรถกว้างขวางจอดไ้ด้มากกว่า 60คัน ซึ่งหาไม่ได้แล้วในย่านนี้และ หมดปัญหาเรื่องแย่งที่จอดรถกันหรือเฉี่ยวชนกันในที่จอดรถ\r\nระบบรักษาความปลอดภัยเต็มรูปแบบ สายตรวจ ,รปภ ,กล้องCCTV ,คีย์การ์ด ฯลฯ\r\nหากท่านได้มาอาศัยอยู่กับเรา ท่านจะได้ทั้งความสะดวกและปลอดภัยอย่างที่ท่านสัมผัสได้ด้วยตัวเอง\r\nสถานที่ใกล้เคียง :ซีคอนสแควร์,พาราไดซ์พาร์ค,สวนหลวง ร.๙,Dusit Thani College ( วิทยาลัยดุสิตธานี),บริษัท บิ๊กซี ซูเปอร์เซ็นเตอร์ จำกัด (มหาชน) @ บางนา,เซ็นทรัล ซิตี้ บางนา,อิเกีย บางนา,Tops Market Mega Bangna', ' 4,900 - 8,000 ', 'เครื่องปรับอากาศ เครื่องทำน้ำอุ่น โทรศัพท์สายตรง มีอินเตอร์เน็ตไร้สาย(Wi-Fi) ที่จอดรถ ลิฟท์ กล้องวงจรปิด(CCTV) มีระบบความปลอดภัย(Keycard) ร้านซัก-รีด/มีบริการเครื่องซักผ้า ', '68/1 ซ.ศรีนครินทร์ 42 ถ.ศรีนครินทร์ แขวงประเวศ เขตประเวศ กรุงเทพ 10250', '0819205000', 'กรุงเทพมหานคร', '20150826092750-078.jpg', 2, 41),
(29, 'จันทร์เจ้าแมนชั่น', 'ห้องกว้าง\r\n28 ตารางเมตร สะอาดมีห้องน้ำในตัว ระเบียงมีอ่างล้างจาน ทุกห้องมีพัดลม\r\nสัญญาเช่า 6 เดือนขึ้นไป จ่ายเงินมัดจำ 1 เดือน ล่วงหน้า 1 เดือน เข้าอยู่ได้เลย ติดรั้วมหาวิทยาลัยคณะแพทย์  ใกล้มินิมาร์ท  เซเว่นและแหล่งขายอาหารมากมาย ใกล้หาดบางแสน ห้างสรรพสินค้า\r\nโรงพยาบาล รวมทั้งใกล้แหล่งท่องเที่ยวอีกมากมาย\r\nมีบริการ\r\nห้องเช่ารายเดือนห้องแอร์ 3,500/เดือน\r\nห้องพัดลม 2,500/เดือน\r\nค่าน้ำ 28 /หน่วย , ค่าไฟ 6 /หน่วย\r\nห้องรายวัน 350-700 /คืน (รายวันสามารถจองผ่าน agoda ได้)\r\nสิ่งอำนวยความสะดวก\r\nมีลานจอดรถยนต์และมอเตอร์ไซด์กว้างขวาง\r\nไม่เสียค่าที่จอดและค่าส่วนกลาง ,ฟรี!!อินเตอร์เน็ต wifi,เคเบิ้ล,เครื่องซักผ้าและตู้น้ำหยอดเหรียญ ใช้ระบบ Keycard ในการเข้าตึก ,CCTV และรปภ.', '2,500-3,500 เดือน', 'เครื่องปรับอากาศ เครื่องทำน้ำอุ่น เฟอร์นิเจอร์(ตู้/เตียง) เคเบิลทีวี/ดาวเทียม มีอินเตอร์เน็ตไร้สาย(Wi-Fi) ทีวี ตู้เย็น ที่จอดรถ ลิฟท์ มีอินเตอร์เน็ตภายในอาคาร กล้องวงจรปิด(CCTV) มีระบบความปลอดภัย(Keycard) โรงยิม/ฟิตเนส ', 'หาดบางแสน ซอยแสนสุข เมืองชลบุรี ', '0970751635', 'นนทบุรี', 'f1cd71b565686608302c.jpg', 1, 2),
(30, 'ใหม่ พูนสุขหนองขามขอนแก่น', 'ห้องพักรายวัน - รายเดือน เปิดใหม่ ห้องทันสมัย เฟอร์นิเจอร์ครบครัน\r\nเตียงเดี่ยว (380 บ/วัน , 3,800 บ/เดือน)\r\nเตียงคู่ (420 บ/วัน , 4,200 บ/เดือน)   สิ่งอำนวยความสดวก\r\nที่จอดรถ ไวไฟ เครื่องทำน้ำอุ่น แอร์\r\nสถานที่ไกล้เคียง\r\nศาลปกครอง ม.ภาค บึงหนองโคตร ตลาดต้นตาล\r\nรถประจำทาง สาย9ใหม่ ผ่าน', '4,000-6,000 บาท/เดือน', 'เครื่องปรับอากาศ เครื่องทำน้ำอุ่น เฟอร์นิเจอร์(ตู้/เตียง) เคเบิลทีวี/ดาวเทียม มีอินเตอร์เน็ตไร้สาย(Wi-Fi) ทีวี ตู้เย็น ที่จอดรถ มีอินเตอร์เน็ตภายในอาคาร กล้องวงจรปิด(CCTV) มีระบบความปลอดภัย(Keycard) ร้านซัก-รีด/มีบริการเครื่องซักผ้า ', 'ที่อยู่ 228 หมู่ 15 ตำบลบ้านเป็ด อำเภอเมือง จังหวัดขอนแก่น\r\nเทศบาลนครขอนแก่น 40000 สถานที่ใกล้เคียง :ม ภาค ศาลปกครอง ตลาดต้นตาล บึงหนองโคตร ตลาดคำไฮ แนะนำการเดินทาง :รถประจำทางสาย 9ใหม่ผ่าน', '0831493220', 'ขอนแก่น', '8a085faa106499860d4d.jpg', 1, 1),
(31, 'AMA อพาร์ทเม้นท์', '1.ด้านการเดินทาง\r\nเดินทางสะดวก ที่พักตั้งอยู่ในซอยศิริธร สามารถเดินทางออกไปถนนช้างเผือกได้ง่ายและสามารถทะลุออกถนนซุปเปอร์ไฮเวย์ เชียงใหม่-ลำปางได้ง่ายใกล้สถานศึกษาที่สำคัญๆ\r\nใกล้มหาวิทยาลัยราชภัฎเชียงใหม่\r\nใกล้มหาวิทยาลัย เทคโนโลยี ราชมงคลล้านนา\r\nใกล้มหาวิทยาลัยรามคำแหง สาขาวิทยบริการเฉลิมพระเกียรติ จังหวัดเชียงใหม่\r\nใกล้วิทยาลัยเทคโนโลยีพาณิชยการลานนา\r\nใกล้ วิทยาลัยพลศึกษา เชียงใหม่\r\nใกล้โรงเรียนสาธิต มหาวิทยาลัยราชภัฎเชียงใหม่\r\nใกล้โรงเรียนเทพบดินทร์วิทยาเชียงใหม่\r\nแหล่งช็อปปิ้งและอื่นๆ\r\nใกล้ห้าง เมญ่า ไลฟ์สไตล์ ช็อปปิ้ง เซ็นเตอร์\r\nใกล้ ย่าน นิมมาน เชียงใหม่\r\nใกล้โรงพยาบาลเชียงใหม่ฮอสพิทอล และโรงพยาบาลลานนา (Lanna Hospital)\r\nใกล้สนามกีฬาเทศบาล นครเชียงใหม่\r\n2.อื่น\r\nบริการที่จอดรถฟรี!\r\nค่าส่วนกลาง 300 (internet และบริการ TV Digital)', '4,200 - 5,000 บาท/เดือน', 'เครื่องปรับอากาศ เครื่องทำน้ำอุ่น เฟอร์นิเจอร์(ตู้/เตียง) เคเบิลทีวี/ดาวเทียม มีอินเตอร์เน็ตไร้สาย(Wi-Fi) ทีวี ตู้เย็น ที่จอดรถ ลิฟท์ มีอินเตอร์เน็ตภายในอาคาร กล้องวงจรปิด(CCTV) มีระบบความปลอดภัย(Keycard) ร้านซัก-รีด/มีบริการเครื่องซักผ้า ', 'ซอยศิริธร ช้างเผือก เมืองเชียงใหม่  ', '095-656-65', 'เชียงใหม่', '66112513260af7fdda9e.jpg', 1, 23),
(32, 'P5 Mansion', '1. ห้องขนาด 23 ตร.ม มีระเบียงและผ้าม่าน\r\n2. ห้องน้ำสุขภัณฑ์ COTTO\r\n3. ระบบสัญญาณดาวเทียม\r\n4. แอร์ Daikin 12000-18000 BTU ประหยัดไฟเบอร์ 5\r\n5. ฟรี WiFi Internet ในห้องพัก\r\n6. เตียงพร้อมที่นอนขนาด 5 ฟุต\r\n7. ตู้เสื้อผ้าพร้อมลิ้นชักและราวแขวน\r\n8. โต๊ะวางทีวี\r\n9. รปภ.ตลอด 24 ชม.\r\n10. โต๊ะเขียนหนังสือพร้อมเก้าอี้ \r\n11. P5 แมนชั่นมีที่จอดรถกว่า 350 คัน บริการฟรีให้ลูกค้า\r\n12. กล้องวงจรปิด\r\n      บรรยากาศโดยรอบ\r\nP5 อพาร์ทเมท์ มี 7-11 ด้านหน้า , มีอาคารพาณิชย์ ,ร้านทำผม, ร้านขายยา, ร้านนวด, ซักอบรีด\r\nใกล้ Lotus ศาลายา, Cental ศาลายา , ตลาดเสรี, ม.มหิดล, มรภ.รัตนโสินทร์ , Makro ศาลายา', '2,400 บาท/เดือน', 'เครื่องปรับอากาศ เครื่องทำน้ำอุ่น เฟอร์นิเจอร์(ตู้/เตียง) เคเบิลทีวี/ดาวเทียม มีอินเตอร์เน็ตไร้สาย(Wi-Fi) ทีวี ตู้เย็น ที่จอดรถ ลิฟท์ มีอินเตอร์เน็ตภายในอาคาร กล้องวงจรปิด(CCTV) มีระบบความปลอดภัย(Keycard) ร้านสะดวกซื้อ ', 'บางกระทึก สามพราน นครปฐม', '0853795577', 'นครปฐม', '87340098_788893191602431_5100997576442773504_n.jpg', 1, 6),
(33, 'ไอเวอรี่ อพาร์ทเม้นท์', 'ห้องพักหรูเปิดใหม่ใกล้แยกแก่งเสี้ยน สะดวกสบาย สะอาด ปลอดภัย มีที่จอดรถกว้าง การเดินทางใกล้แหล่งต่างๆดังนี้\r\n- วิทยาลัยสารพัดช่าง\r\n- อบจ. \r\n- TMK MARKET PLACE\r\n- บิ๊กซี\r\n- สะพานข้ามแม่น้ำแคว\r\n', '4,200 - 5,000 บาท/เดือน', 'เครื่องปรับอากาศ เครื่องทำน้ำอุ่น เฟอร์นิเจอร์(ตู้/เตียง) เคเบิลทีวี/ดาวเทียม มีอินเตอร์เน็ตไร้สาย(Wi-Fi) ทีวี ตู้เย็น ที่จอดรถ ลิฟท์ มีอินเตอร์เน็ตภายในอาคาร กล้องวงจรปิด(CCTV) มีระบบความปลอดภัย(Keycard) ร้านซัก-รีด/มีบริการเครื่องซักผ้า ', 'ซอย เทศบาลตำบลแก่งเสี้ยน 2 แสงชูโต แก่งเสี้ยน เมืองกาญจนบุรี', '099-147-23', 'กาญจนบุรี', '11bf04552f6e5f8ceda0.jpg', 1, 75),
(34, 'ปัณรดานนท์ เพลส์', 'ห้องพัก ธรรมดา ราคาเริ่มต้น 2500.- ห้องแอร์ 3500.- พร้อมเฟอร์นิเจอร์ ครบชุด ห้องกว้างขวาง -สถานที่สงบ สะอาด ปลอดภัย\r\n-อาคารมี 5 ชั้น มีลิฟท์\r\n-เคเบิลทีวี 80 ช่อง\r\n-มีเครื่องซักผ้าหยอดเหรียญ ทุกชั้น\r\n-มินิ บาร์\r\n-ฟรี Internet WIFI ความเร็วสูง\r\n-มีที่จอดรถ ให้บริการ\r\n-มี CCTV กลองวงจรปิด\r\n-ระบบความปลอดภัย 24 ชั่วโมง\r\n-แสกนนิ้วมือเข้าออก\r\nที่พักใกล้ สถาบัน รัตนบัณฑิต (RBAC) เดินทางสะดวก เข้าได้ทั้งลาดพร้าว 101 และ ลาดพร้าว 107', '2,500-3,500 เดือน', 'เครื่องปรับอากาศ เฟอร์นิเจอร์(ตู้/เตียง) เคเบิลทีวี/ดาวเทียม ที่จอดรถ มีอินเตอร์เน็ตภายในอาคาร กล้องวงจรปิด(CCTV) มีระบบความปลอดภัย(Keycard) ร้านสะดวกซื้อ ร้านซัก-รีด/มีบริการเครื่องซักผ้า ', 'ลาดพร้าว 107 ลาดพร้าว คลองจั่น บางกะปิ กรุงเทพมหานคร', '081-899-69', 'กรุงเทพมหานคร', 'ca8598698c0d54ba255d.jpg', 1, 26),
(36, 'มาริสา ', 'ให้บริการห้องพัก (รายวัน,รายเดือน)\r\nสุขุมวิท 101 ซอยปุณณวิถึ 9 ใกล้รถไฟฟ้าสถานีBTS ปุณณวิถี เพียง 400 เมตรใกล้ Seven7-11\r\nร้านอาหาร\r\nพร้อมสระว่ายน้ำ\r\nรายเดือนเริ่มต้น\r\n*** ราคาเริ่มต้นเพียง 7,500 บาท (สัญญารายปี) พร้อม TV+ตู้เย็น***\r\n*  studio room    (30 ตรม.) ระเบียงใหญ่ มีสระว่ายน้ำ  (สัญญา 1ปี)\r\n*  one-bed room   (30 ตรม.) มีห้องครัวแยกเป็นสัดส่วน (สัญญา 1ปี)\r\n*  two bed-room (52ตรม) 12,500บาท (สัญญา 1ปี)\r\n\r\n', '7,500 - 12,500 ', '', 'ซอย ปุณณวิถี 9 สุขุมวิท 101 บางจาก พระโขนง กรุงเทพมหานคร', '0863075777', 'กรุงเทพมหานคร', 'e0667be7a28b008defbb.jpg', 2, 39),
(37, 'อุ่นไอรักเกสเฮ้าท์', 'หอพักใหม่ราคาสะบายกระเป๋า ดีไซน์ทันสมัย ตกแต่งด้วยเฟอร์นิเจอร์ครบครัน\r\nสามารถหิ้วกระเป๋าเข้าอยู่ได้เลย บรรยากาศสงบ ใกล้แหล่งท่องเที่ยว\r\nมีที่จอดรถและบริการเครื่องซักผ้า ระบบความปลอดภัยด้วยคีย์การ์ด\r\nใกล้เซเว่น ตลาดคึกคักและบขส.คึกคัก มีคนดูแลตลอด 24 ชั่วโมง\r\nสอบถามเพิ่มเติม โทร 083-173-9466, 086-475-9136 Line ID:_pppnb', '4,000-6,000 บาท/เดือน', 'เครื่องปรับอากาศ เครื่องทำน้ำอุ่น เฟอร์นิเจอร์(ตู้/เตียง) เคเบิลทีวี/ดาวเทียม โทรศัพท์สายตรง มีอินเตอร์เน็ตไร้สาย(Wi-Fi) ทีวี ตู้เย็น ลิฟท์ มีอินเตอร์เน็ตภายในอาคาร กล้องวงจรปิด(CCTV) มีระบบความปลอดภัย(Keycard) ร้านสะดวกซื้อ ', 'ถนนเพชรเกษม คึกคัก ตะกั่วป่า พังงา', '0831739466', 'พังงา', '87216265_199480104590774_1294005227455774720_n.jpg', 2, 0),
(38, 'ทีอาร์เฮ้า', 'อัตราค่าเช่า\r\n                    ห้องธรรมดา                   3000 บาทต่อ ดือน\r\n                    ห้องแอร์                         3500 บาทต่อเดือน\r\n                     มัดจำ                             1\r\nเดือน\r\n     ประกัน         1 เดือน\r\n                     ค่าไฟ หน่วยละ                 7 บาท\r\n                    ค่าน้ำเหมาจ่าย                 100 บาทต่อเดือนต่อห้อง\r\n\r\n                   ', '3,000 บาท/เดือน', '', 'ซอย เพลินพิทักษ์ 10 ทับเที่ยง เมืองตรัง ', '0840440375', 'ตรัง', 'b17a5b51ff0599593b2f.jpg', 2, 0),
(40, 'หอพักไดม่อน', 'หอพักใหม่ ใส่ใจทุกรายละเอียด หอพัก ไดม่อน ตอนนี้ว่างพร้อมเข้าอยู่เลย มีเฟอร์นิเจอร์ครบ\r\nตู้เย็น โทรทัศน์ เคเบิล ตู้เสื้อผ้า โต๊ะเครื่องแป้ง เครื่องปรับอากาศ สัญญาณ wifi (ใยแก้ว) เครื่องทำน้ำอุ่น ห้องกว้างอยู่สบาย ใสๆชิคๆ ใกล้มอ เดินทางสะดวก โครงการแสงพรหมแลนด์ 2\r\nด้านล่างหอมีบริการซักอบรีด รายเดือน รายชิ้น และเครื่องซักผ้าหยอดเหรีญ ปลอดภัยเพราะใช้คีย์การ์ดในการเข้าหอ  สนใจติดต่อ 096-5936649 พี่แหม่ม หรือทักแชทไลน์ phi.magic', '3,000 บาท/เดือน', 'เครื่องปรับอากาศ เครื่องทำน้ำอุ่น เฟอร์นิเจอร์(ตู้/เตียง) โทรศัพท์สายตรง มีอินเตอร์เน็ตไร้สาย(Wi-Fi) ทีวี ตู้เย็น ที่จอดรถ ลิฟท์ มีอินเตอร์เน็ตภายในอาคาร กล้องวงจรปิด(CCTV) มีระบบความปลอดภัย(Keycard) ร้านสะดวกซื้อ ร้านซัก-รีด/มีบริการเครื่องซักผ้า ', 'ซอย หมู่บ้านแสงพรหมแลนด์โครงการ 2 ท่าโพธิ์ เมืองพิษณุโลก พิษณุโลก', '096-593-66', 'พิษณุโลก', 'a56436edee8113d07654.jpg', 6, 0),
(41, 'ปั้นหยา พาเลซ', 'ห้องพักราคานี้ ยกเว้นวันหยุดนักขัตฤกษ์และวันหยุดเทศกาลต่างๆ', '2,500-3,500 เดือน', 'เครื่องปรับอากาศ เครื่องทำน้ำอุ่น เฟอร์นิเจอร์(ตู้/เตียง) เคเบิลทีวี/ดาวเทียม มีอินเตอร์เน็ตไร้สาย(Wi-Fi) ซิงค์ล้างจาน/อ่างล้างจาน ทีวี ตู้เย็น ที่จอดรถ มีอินเตอร์เน็ตภายในอาคาร ร้านซัก-รีด/มีบริการเครื่องซักผ้า ', 'ซอย ศิริราช ถนน แม่ชี ขามใหญ่ เมืองอุบลราชธานี', '093-554-28', 'อุบลราชธานี', 'acbc38b27a8cacbc269d.jpg', 6, 0),
(42, 'โมอายเพลส', 'หอพักราคาถูก ปลอดภัย ใจกลางเมือง\r\nห่างจากถนนใหญ่ 50 ม. มีรถประจำทางผ่าน\r\nห่าง ม.ราชภัฎอุบล 1.5 กม.\r\nห่าง รพ.ศรีมหาโพธิ์ 1 กม.\r\nห่าง รร.นารีนุกูล และวิทยาเทคนิค 2 กม.\r\nห่าง เซ็นทรัลอุบล 2 กม.\r\nห่าง ม.ราชธานี 2 กม.', '2,800-3,000', 'เครื่องปรับอากาศ เครื่องทำน้ำอุ่น เฟอร์นิเจอร์(ตู้/เตียง) เคเบิลทีวี/ดาวเทียม โทรศัพท์สายตรง มีอินเตอร์เน็ตไร้สาย(Wi-Fi) ซิงค์ล้างจาน/อ่างล้างจาน ทีวี ตู้เย็น ที่จอดรถ ลิฟท์ มีอินเตอร์เน็ตภายในอาคาร กล้องวงจรปิด(CCTV) มีระบบความปลอดภัย(Keycard) ร้านซัก-รีด/มีบริการเครื่องซักผ้า ', 'ซอย แจ้งสนิท 13 แจระแม เมืองอุบลราชธานี', '088-230-25', 'อุบลราชธานี', '066797b98b6abce14561.jpg', 6, 0),
(43, 'เวสธิมา คอร์ท', 'เวสธิมา คอร์ท หอพักสะอาด ปลอดภัย เป็นอาคารที่พักอาศัย 4 ชั้น 67 ห้อง โครงสร้างป้องกันแผ่นดินไหว 7 ริกเตอร์ ผนังก่อสร้างด้วยอิฐมวลเบา ชั้นล่างของอาคารมีมินิมาร์ท ห้องซักผ้าหยอดเหรียญและตู้น้ำดื่ม ห้องเสริมสวย (ตัดผม ชาย - หญิง) มีลานจอดรถยนต์และมอเตอร์ไซด์ ฟรี Wifi ฟรีช่องทีวี ระบบรักษาความปลอดภัยแข็งแรงตลอด 24 ชั่วโมง ตรวจสอบคนเข้า - ออก ด้วยกล้องวงจรปิด รปภ.ดูแลตลอดคืนสิ่งอำนวยความสะดวกครบครัน หิ้วกระเป๋าเข้าพักได้เลย บริการสำหรับนักศึกษาและบุคคลทั่วไป อยู่ใกล้มหาวิทยาลัยราชภัฎเชียงราย เดินทางเข้ามหาวิทยาลัยด้วยมอเตอร์ไซด์ไม่ถึง 1 นาที\r\n- สามารถเข้าไปดูได้ที่ facebook/เวสธิมา คอร์ท', '3,300-3,700', '', 'บ้านดู่ เมืองเชียงราย', '086-427-09', 'เชียงราย', '2c54346d1ee3a8dc2279.jpg', 6, 0),
(44, 'สุรีเพลส อพาร์ทเม้นท์', 'อพาร์ทเม้นท์ 4 ขั้น จ.น. 17 ห้อง ตั้งอยู่ใจกลางเมือง ซอย หัวหิน 86 ใกล้ปากซอย เดินทางสะดวก ห้องพักกว้างขวางมีระเบียง  มีพนักงานดุแลทำความสะอาด เงียบสงบ และ ปลอดภัย ด้วยระบบคีย์การ์ด และ กล้องวงจรปิด ทุกห้องติด แอร์ มี ทีวี ตู้เย็น เฟอร์นิเจอร์ เตียง ตู้เสื้อผ้า ชั้นข้างเตียง โต๊ะเครื่องแป้ง เครื่องทำน้ำอุ่น เคเบิ้ลทีวี FREE WIFI  พร้อมเข้าพัก มีที่จอดรถ และ เครื่องซักผ้าหยอดเหรียญ ในอาคาร เปิดให้เช่า ทั้งรายเดือน และ รายวัน ราคาไม่แพง\r\nติดต่อ คุณเบลล์ โทร 061-8681191\r\nสถานที่ใกล้เคียง : ตลาดฉัตรไชย, ตลาดโต้รุ่งหัวหิน, Market Village', '5000-6500', 'เครื่องปรับอากาศ เครื่องทำน้ำอุ่น เฟอร์นิเจอร์(ตู้/เตียง) เคเบิลทีวี/ดาวเทียม โทรศัพท์สายตรง มีอินเตอร์เน็ตไร้สาย(Wi-Fi) ทีวี ตู้เย็น ที่จอดรถ มีอินเตอร์เน็ตภายในอาคาร กล้องวงจรปิด(CCTV) สระว่ายน้ำ ร้านซัก-รีด/มีบริการเครื่องซักผ้า ', 'หัวหิน ประจวบคีรีขันธ์', '0618681191', 'ประจวบคีรีขันธ์', 'ea181d7b14747b0cc0c8.jpg', 6, 0),
(45, 'อินิเชียล หัวหิน', 'อินิเชียลหัวหิน ให้บริการห้องพักรายวันและรายเดือนในราคาประหยัดแบบ Full Services- ลานจอดรถ สระว่ายน้ำกลางแจ้ง บริการแม่บ้านทำห้องพัก บริการซักอบรีด อินเตอร์เน็ตความเร็วสูงและอีกมากมาย ตั้งอยู่ใจกลางเมืองหัวหินซอยหัวหิน 94 ซึ่งอยู่ระหว่างห้างหัวหินมาร์เก็ตวิลเลจ และ ศูนย์การค้าบลูพอร์ต โดยลูกค้าสามารถเดินทางไปทำงานในเมืองหรือไปเที่ยวตามสถานที่ต่างๆ อย่างสะดวกและใช้เวลาไม่นาน อีกทั้งใกล้แหล่งร้านสะดวกซื้อ 7-11 ร้านซักอบรีดแบบหยอดเหรียญ รวมไปถึงร้านอาหารมีให้เลือกมากมาย เราเน้นให้บริการและคำนึงถึงความคุ้มค่ากับเงินที่จ่ายสำหรับผู้เข้าพักโดยคงคอนเซป \"ยิ่งพักมากยิ่งจ่ายน้อยในระดับความสะดวกสบายเท่าเดิม\"', '5,833 - 12,000 บาท/เดือน', 'เครื่องปรับอากาศ เครื่องทำน้ำอุ่น เฟอร์นิเจอร์(ตู้/เตียง) เคเบิลทีวี/ดาวเทียม โทรศัพท์สายตรง มีอินเตอร์เน็ตไร้สาย(Wi-Fi) ซิงค์ล้างจาน/อ่างล้างจาน ทีวี ตู้เย็น ที่จอดรถ ลิฟท์ มีอินเตอร์เน็ตภายในอาคาร กล้องวงจรปิด(CCTV) มีระบบความปลอดภัย(Keycard) สระว่ายน้ำ ร้านอาหาร ร้านสะดวกซื้อ ร้านซัก-รีด/มีบริการเครื่องซักผ้า โรงยิม/ฟิตเนส ', 'หัวหิน 94 ประจวบคีรีขันธ์', '0855533791', 'เลือกจังหวัด', '264d99afe49b9d36ea54.jpg', 6, 0),
(46, 'ยัวร์เพลส อพาร์ทเม้นท์', 'ข้อมูลติดต่อเพิ่มเติม\r\nผู้ดูแล : รุจรดา เรืองสวัสดิ์\r\nโทร : 090-886-4488\r\nอีเมล์ : yourplace.pkk@gmail.com', '4,800 - 5,200 บาท/เดือน', 'เครื่องปรับอากาศ เครื่องทำน้ำอุ่น เฟอร์นิเจอร์(ตู้/เตียง) เคเบิลทีวี/ดาวเทียม โทรศัพท์สายตรง มีอินเตอร์เน็ตไร้สาย(Wi-Fi) ซิงค์ล้างจาน/อ่างล้างจาน ทีวี ตู้เย็น ที่จอดรถ ลิฟท์ มีอินเตอร์เน็ตภายในอาคาร กล้องวงจรปิด(CCTV) มีระบบความปลอดภัย(Keycard) สระว่ายน้ำ ร้านอาหาร ร้านสะดวกซื้อ ร้านซัก-รีด/มีบริการเครื่องซักผ้า โรงยิม/ฟิตเนส ', 'เมืองประจวบคีรีขันธ์ ', '090-886-44', 'เลือกจังหวัด', 'b0021ae8921b08b6a77d.jpg', 6, 0),
(47, 'กา โอ เฮาส์', '➡️ เฟอร์นิเจอร์ ครบชุด build in เตียงนอน ตู้เสื้อผ้า โต๊ะเครื่องแป้ง ชั้นวางทีวี โต๊ะอ่านหนังสือ ➡️ ที่นอนสปริง ยางพารา พร้อมชุดเครื่องนอน ➡️ เครื่องปรับอากาศ ➡️ Digital TV 32 นิ้ว ➡️ เครื่องทำน้ำอุ่น ➡️ พัดลมผนัง ➡️ Free Wifi ➡️ กล้องวงจรปิดภายในและนอกอาคาร ➡️ โรงจอดรถ ➡️ เครื่องซักผ้า หยอดเหรียญ ➡️ เครื่องกดน้ำหยอดเหรียญ ➡️ เครื่องเติมเงิน หยอดเหรียญ', '3,400 บาท/เดือน', 'เครื่องปรับอากาศ เครื่องทำน้ำอุ่น เฟอร์นิเจอร์(ตู้/เตียง) เคเบิลทีวี/ดาวเทียม โทรศัพท์สายตรง มีอินเตอร์เน็ตไร้สาย(Wi-Fi) ทีวี ตู้เย็น ที่จอดรถ ลิฟท์ มีอินเตอร์เน็ตภายในอาคาร กล้องวงจรปิด(CCTV) มีระบบความปลอดภัย(Keycard) ร้านซัก-รีด/มีบริการเครื่องซักผ้า ', 'เมืองเลย เลย', '082-384-88', 'เลย', '6f02ccedb24971a83512.jpg', 6, 0),
(48, 'บ้านปานดิน รีสอร์ท', 'บ้านปานดิน รีสอร์ท ที่พักราคาถูก อ.ปราณบุรี จ.ประจวบ (ติดถนนเพชรเกษม ห่างทะเล 8 km ) ทุกห้องกว้าง 8 เมตร สิ่งอำนวยความสะดวกครบ - แอร์ /ทีวี 42 นิ้ว/ตู้เย็น/น้ำอุ่น/ตู้เสื้อผ้า/อ่างอาบน้ำ/wifi/ ที่จอดรถในร่มทุกห้อง\r\nอัตราห้องพัก\r\n- เตียงเดียว 6 ฟุต พักไม่เกิน 3 ท่าน คืนละ 550 บาท\r\n- เตียง 3.5 ฟุต สองเตียง พักไม่เกิน 3 ท่าน คืนละ 600 บาท\r\nที่นอนเสริมชุดละ 200 บาท (1 ชุดประกอบด้วยที่นอนปิคนิค / หมอน /ผ้านวม ) \r\n- ค่าบริการน้องหมา ตัวละ 200 บาทต่อคืน (ไม่กำหนดขนาด) ต้องแจ้งกับทางออฟฟิตด้วยว่านำน้องหมาเข้าพัก เพราะแยกโซนกับห้องพักแขกปกติ \r\n- ห้องพักมีทั้งหมด 22 ห้อง (เตียงเดียว 16 ห้อง / สองเตียง 6 ห้อง)\r\n- ตอนเช้ามีกาแฟและโอวัลตินบริการฟรีที่เค้าเตอร์ออฟฟิต\r\n- มีร้านค้าบริการในรีสอร์ท บริการ ขนม เครื่องดื่ม มาม่าคัพ ข้าวกล่องเซเว่น และมีไมโครเวฟให้บริการในร้านค้า\r\n___ที่ตั้งบ้านปานดิน___\r\nอยู่เลยสี่แยกปราณบุรี ขาลงใต้ ประมาณ 2 km อยู่ถัดจากปั๊มน้ำมัน PT ปากซอยเทศบาล 17 \r\n;;; ติดต่อ โทร 061-9699693 , 032-651822 ไลน์ไอดี 032651822 ', '', '', 'ถนน เพชรเกษม หนองตาแต้ม ปราณบุรี ประจวบคีรีขันธ์', '032-651822', 'ประจวบคีรีขันธ์', '785c7bfd6ca7a43e440c.jpg', 6, 0),
(49, 'พี ลอฟท์ โฮสเทล', 'ข้อมูลติดต่อเพิ่มเติม\r\nผู้ดูแล : sakkarin sapu\r\nโทร : 080-419-5490\r\nอีเมล์ : sakkarin.sapu@gmail.com', '6,000 - 8,000 บาท/เดือน', 'เครื่องปรับอากาศ เครื่องทำน้ำอุ่น เฟอร์นิเจอร์(ตู้/เตียง) เคเบิลทีวี/ดาวเทียม โทรศัพท์สายตรง มีอินเตอร์เน็ตไร้สาย(Wi-Fi) ทีวี ตู้เย็น ที่จอดรถ ลิฟท์ มีอินเตอร์เน็ตภายในอาคาร กล้องวงจรปิด(CCTV) มีระบบความปลอดภัย(Keycard) ร้านซัก-รีด/มีบริการเครื่องซักผ้า ', 'ขามเรียง กันทรวิชัย มหาสารคาม', '080-419-54', 'มหาสารคาม', '99b59620131b0977b5e0.jpg', 6, 0),
(50, 'บ้านจั่นสเตย์', 'วันนี้บ้านจั่นสเตย์#ห้องพักรายวันi#ห้องพักรายเดือน #อพาทเมนท์เปิดใหม่ #ใกล้เทศบาลบ้านจั่น และขณะนี้เรามีโปรโมชั่นสุดพิเศษ ในราคาเพียง 3800-4000 บาท/เดือน \r\n#สิ่งอำนวยความสะดวกที่มีให้กับคุณลูกค้า\r\n** *แอร์ ทีวีled 32 นิ้ว ตู้เย็น เครื่องทำน้ำอุ่น พร้อมด้วยเฟอร์นิเจอร์บิวอินครบครัน\r\n***ที่จอดรถสะดวกสบาย\r\n***ฟรี WIFI\r\n***เคเบิลทีวี\r\n***เข้าอาคารด้วยระบบคีย์การ์ด\r\n***กล้องวงจรปิดรักษาความปลอดภัยทั่วอาคาร\r\n***มีพนักงานประจำตลอด 24ชม\r\nช่องทางการติดต่อสอบถาม และจองห้องพักทั้งในแบบ รายวัน-รายเดือน กับทางโรงแรมบ้านจั่นสเตย์ ได้ที่นี้ค่ะ\r\nข้อมูลติดต่อเพิ่มเติม\r\nผู้ดูแล : ชไมพร ไชยธรรม\r\nโทร : 042-116-916, 042-292-039, 064-238-9965\r\nอีเมล์ : banjanstay@hotmail.com', '3,800 - 4,000 บาท/เดือน', 'เครื่องปรับอากาศ เครื่องทำน้ำอุ่น เฟอร์นิเจอร์(ตู้/เตียง) เคเบิลทีวี/ดาวเทียม โทรศัพท์สายตรง มีอินเตอร์เน็ตไร้สาย(Wi-Fi) ทีวี ตู้เย็น ที่จอดรถ ลิฟท์ มีอินเตอร์เน็ตภายในอาคาร กล้องวงจรปิด(CCTV) มีระบบความปลอดภัย(Keycard) สระว่ายน้ำ ร้านสะดวกซื้อ ร้านซัก-รีด/มีบริการเครื่องซักผ้า ', 'ซอย เพชรไพฑูรย์ บ้านจั่น เมืองอุดรธานี อุดรธานี', '042-116-91', 'อุดรธานี', 'a2e651cf4e5ae160084c.jpg', 6, 0),
(51, 'คาซ่า ดำเนิน เรสซิเดนซ์', 'ห่างจาดตลาดน้ำดำเนินสะดวก 2 กิโลเมตร\r\nข้อมูลติดต่อเพิ่มเติม\r\nผู้ดูแล : มณีรัตน์ พฤกษากร\r\nโทร : 081-655-5070\r\nอีเมล์ : maneeratp555@gmail.com', '3,000 - 4,000 บาท/เดือน', 'เครื่องปรับอากาศ เครื่องทำน้ำอุ่น เฟอร์นิเจอร์(ตู้/เตียง) เคเบิลทีวี/ดาวเทียม มีอินเตอร์เน็ตไร้สาย(Wi-Fi) ทีวี ตู้เย็น ที่จอดรถ มีอินเตอร์เน็ตภายในอาคาร กล้องวงจรปิด(CCTV) มีระบบความปลอดภัย(Keycard) ร้านซัก-รีด/มีบริการเครื่องซักผ้า ', 'ตลาดนัดอุดมพานิช ทางหลวง 325 บางแพ - สมุทรสงคราม ดำเนินสะดวก ดำเนินสะดวก ราชบุรี', '081-655-50', 'ราชบุรี', '816617586b46756ebcbe.jpg', 6, 0),
(52, '97 Merryland Apartments', '97 Merryland Apartments, อพาร์ทเม้นท์ ณ บางวัว\r\nเปิดทำการ มกราคม 2562, 97 Merryland เป็นอพาร์ทเม้นท์ติดถนนบางนา-ตราด กม.39 อยู่ในย่านบางวัว ใกล้นิคมฯเวลโกรว์ อยู่ในพื้นที่ขนาด 18 ไร่ ห้องพักขนาด 40 ตรม. ทุกห้อง มีที่จอดรถ ร้านขายของชำ อาหารตามสั่ง รปภ. ระบบกรองน้ำดื่มได้มาตรฐาน  \r\nHOT PROMOTION!!!\r\n1. ห้อง หัวมุม ปูกระเบื้อง 40 ตรม แอร์ พัดลม ตู้เย็น เฟอรนิเจอร์ครบ ราคาพิเศษ เหลือเพียง 3850 บาท/ด เข้าอยู่จ่าย 6700 บาท\r\n2. ห้อง 3500 บาท พื้นปูเปลือยขัดมัน แอร์ เฟอรนิเจอร์ครบ เข้าอยู่เหลือจ่ายเพียง 6000 บาท\r\n3. ทำสัญญา 1 ปี ฟรีค่าจอดรถให้ 3 เดือนทุกห้อง\r\nใครกำลังหา ห้องพักทำเลดี ติดถนนบางนาตราด กม.39 ใกล้ เวลโกรว์, TPARK และตลาดบางวัว เงียบสงบ ที่จอดรถในร่มกว้าง(เปิดประตูไม่ชนกัน) ห้องนอนขนาดใหญ่ 40 ตรม. มี รปภ. เฝ้าตอนกลางคืน สระว่ายน้ำ + สวนขนาด 4 ไร่ ให้คนรักสุขภาพได้วิ่งออกกำลังกายตอนเย็น เชิญแวะเข้ามาดูนะคะ\r\nสนใจโทร\r\n081-8052832\r\n081-6858244\r\nอยู่ติดถนนบางนา กม.39 ขาออกไปชลบุรีฝั่งเดียวกับตลาดบางวัว ขับจากนิคม T-park มาประมาณ 800 เมตร ก็เจอหอพักอยู่ติด ถนนบางนา-ตราด Google Map', '3,500 - 3,850 บาท/เดือน', 'เครื่องปรับอากาศ เครื่องทำน้ำอุ่น เฟอร์นิเจอร์(ตู้/เตียง) เคเบิลทีวี/ดาวเทียม มีอินเตอร์เน็ตไร้สาย(Wi-Fi) ทีวี ตู้เย็น ที่จอดรถ ลิฟท์ มีอินเตอร์เน็ตภายในอาคาร กล้องวงจรปิด(CCTV) มีระบบความปลอดภัย(Keycard) สระว่ายน้ำ ร้านสะดวกซื้อ ร้านซัก-รีด/มีบริการเครื่องซักผ้า ', 'ทางคู่ขนาน ถนนบางนา-ตราด บางวัว บางปะกง ฉะเชิงเทรา', '0818052832', 'ฉะเชิงเทรา', 'd10e64a1e382f308571c.jpg', 6, 0),
(53, 'อพาร์ทเม้นท์ ใกล้นิคมเวลโกร์ว', 'อพาร์ทเม้นท์\r\n -เซอร์วิสอพาร์ทเม้นท์ ตกแต่งสไตล์โรงแรม ให้เช่ารายเดือน และรายวัน\r\n -ห้องกว้างพิเศษ ตั้งแต่ 33-67 ตรม.\r\n -ภายในห้องพักมีสิ่งอำนวยความสะดวก เครื่องปรับอากาศ เครื่องทำน้ำอุ่น\r\n -เข้าออกด้วยระบบสแกนนิ้วมือ\r\n -ฟรีบริการฟิตเนส สระว่ายน้ำ ฟรี WiFi \r\n -ฟรีที่จอดรถ สำหรับผู้เช่า ที่จอดรถสะดวกสบาย จอดได้มากถึง 300 คัน\r\n -มีบริการร้านอาหาร, คอฟฟี่ช็อป, มินิมาร์ท, ร้านซักรีด\r\n -คมนาคมสะดวกสบาย ปากทางเข้าทางด่วนบูรพาวิถีชลบุรี-พัทยา และมอเตอร์เวย์\r\n -ใกล้สถานที่ท่องเทียว โรงพยาบาล สถานศึกษา นิคมฯเวลโกล์ว นิคมฯ TFD', '6,000 บาท/เดือน', 'เครื่องปรับอากาศ เครื่องทำน้ำอุ่น เฟอร์นิเจอร์(ตู้/เตียง) เคเบิลทีวี/ดาวเทียม มีอินเตอร์เน็ตไร้สาย(Wi-Fi) ทีวี ตู้เย็น ลิฟท์ มีอินเตอร์เน็ตภายในอาคาร กล้องวงจรปิด(CCTV) มีระบบความปลอดภัย(Keycard) ร้านซัก-รีด/มีบริการเครื่องซักผ้า ', 'ถ.บางนา-ตราด กม.39 บางวัว บางปะกง ฉะเชิงเทรา', '092-320-63', 'ฉะเชิงเทรา', 'f2d900256527276f80b1.jpg', 6, 0),
(54, 'ขวัญใจ โฮมสเตย์อุทัยธานี', 'ห้องพักสำหรับครอบครัว Double Bed เตียงเดี่ยวเหมาะสำหรับการพักแบบอบอุ่น ในสไตล์ Loft ครบครันด้วยสิ่งอำนวยความสะดวก ห้องโปร่งไม่อึดอัด สะอาด สบายตา พักผ่อนได้อย่างสบายใจ\r\nห้องพัก Single Bed สำหรับท่านที่ชื่นชอบการพักแบบเป็นส่วนตัว มีห้องน้ำพร้อมสิ่งอำนวยความสะดวกพร้อมในห้องพัก', '2,500-3,500 เดือน', 'เครื่องปรับอากาศ เฟอร์นิเจอร์(ตู้/เตียง) เคเบิลทีวี/ดาวเทียม ทีวี ตู้เย็น ที่จอดรถ มีอินเตอร์เน็ตภายในอาคาร กล้องวงจรปิด(CCTV) ร้านซัก-รีด/มีบริการเครื่องซักผ้า ', 'น้ำซึม เมืองอุทัยธานี อุทัยธานี', '086-186-07', 'อุทัยธานี', '71af0ab8c6d888613d79.jpg', 6, 0),
(55, 'เจ เซ็นส์ เพลส', 'J Senses Place (เจเซ้นส์ เพรส)\r\nเซอร์วิสอพาร์ทเม้นท์เปิดใหม่ เปิดให้บริการรายเดือน และให้บริการรายวัน \r\nสิ่งอำนวยความสะดวกครบ มีที่จอดรถ สูง 5 ชั้น มีลิฟท์บริการ\r\nมีห้องพักเพียง 45 ห้อง/อาคาร (มีทั้งหมด 2 อาคาร) ไม่แออัด ไม่วุ่นวายเดินทางสะดวก มีมินิมาร์ท, ร้านกาแฟและฟิตเนสบริการภายในอาคาร\r\n-อยู่ถนนรังสิต-นครนายก\r\n(ระหว่างรังสิตคลอง 2 - คลอง3)\r\n-อยู่ตรงข้ามโรงพยาบาลบางปะกอก/ร้านอาหารนิตยาไก่ย่าง ใกล้: ดรีมเวิลด์, ฟิวเจอร์ปาร์ครังสิต, ม.เทคโนราชมงคลธัญบุรี, มหาวิทยาลัยนอร์ทกรุงเทพ, ศูนย์วิทยาศาสตร์, ท้องฟ้าจำลอง, พิพิธภัณฑ์การเกษตร, เซียร์รังสิต, โรงเรียนโชคชัยรังสิต, โรงเรียนนานาชาติสยาม, โรงพยาบาลบางปะกอก, การไฟฟ้าส่วนภูมิภาค อยู่ในซอยรังสิต-นครนายก60 หน้าปากซอยมีเซเว่นอีเลฟเว่น\r\nสายรถเมล์ที่ผ่าน: 187, 188, 381, 523, 538, รถตู้1156\r\nค่าเช่า เริ่มต้นที่ 600 บาทต่อวัน หรือเริ่มต้นที่ 3,500 บาทต่อเดือน\r\nรายละเอียดห้องพักรายวัน (ภายในห้องพักเทียบเท่าโรงแรม 4 ดาว)\r\nแอร์, เครื่องทำน้ำอุ่น, ทีวี, ตู้เย็น, เครื่องนอน, โซฟา,\r\nMinibar, น้ำดื่ม, ผ้าเช็ดตัว, สบู่อาบน้ำ, หมวกอาบน้ำ ฯลฯ\r\nฟรี Shutter Car รับ-ส่งหน้าปากซอย\r\nรายละเอียดห้องพักรายเดือน (1-3-6-12 เดือน)\r\nแอร์, เครื่องทำน้ำอุ่น, เฟอร์นิเจอร์ครบ, ฟูก, (ทีวี), (ตู้เย็น)', '3,500 - 8,500 บาท/เดือน', 'เครื่องปรับอากาศ เครื่องทำน้ำอุ่น เฟอร์นิเจอร์(ตู้/เตียง) เคเบิลทีวี/ดาวเทียม โทรศัพท์สายตรง มีอินเตอร์เน็ตไร้สาย(Wi-Fi) ซิงค์ล้างจาน/อ่างล้างจาน ทีวี ตู้เย็น ที่จอดรถ ลิฟท์ มีอินเตอร์เน็ตภายในอาคาร กล้องวงจรปิด(CCTV) มีระบบความปลอดภัย(Keycard) สระว่ายน้ำ ร้านอาหาร ร้านสะดวกซื้อ ร้านซัก-รีด/มีบริการเครื่องซักผ้า โรงยิม/ฟิตเนส ', '60 รังสิต-นครนายก ประชาธิปัตย์ ธัญบุรี ปทุมธานี', '063-156-99', 'นครนายก', 'dc4985171ef502531d1a.jpg', 6, 0),
(56, 'Boom Motel', 'หหหหหห', '3,100 - 4,500', 'ลิฟท์ ', 'แถวนี้แหละ', '0839945447', 'สงขลา', '1406861458-image-o.jpg', 8, 2);

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

CREATE TABLE `comment` (
  `id_com` int(11) NOT NULL,
  `comment` text COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `date_time` datetime NOT NULL DEFAULT current_timestamp(),
  `apart_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `comment`
--

INSERT INTO `comment` (`id_com`, `comment`, `name`, `phone`, `date_time`, `apart_id`) VALUES
(16, 'อยู่แถวไหนคะ', 'ก้าก้า', '0616936271', '2020-02-19 00:27:45', 26),
(17, 'มีว่างไหมคะ ', 'ปอนด์', '0945604820', '2020-02-19 00:29:23', 24),
(18, 'Hi มีว่างไหม', 'เอิน', '0875459851', '2020-02-19 10:56:48', 23),
(19, 'สวยดีค่ะ', 'ฉันเอง', '0875459851', '2020-02-24 15:02:33', 34),
(20, 'มีว่างไหม', 'บูม', '0823739502', '2020-03-04 14:11:09', 23);

-- --------------------------------------------------------

--
-- Table structure for table `reply`
--

CREATE TABLE `reply` (
  `id_reply` int(11) NOT NULL,
  `reply` text COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `id_com` int(11) NOT NULL,
  `date_time` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `reply`
--

INSERT INTO `reply` (`id_reply`, `reply`, `user_id`, `id_com`, `date_time`) VALUES
(4, 'แถวหอการค้าครับ', 2, 16, '2020-02-19 01:14:07'),
(6, 'ยังมีค่ะ', 1, 18, '2020-02-19 15:59:09'),
(7, 'ไม่ให้อยู่ค่ะ', 1, 20, '2020-03-04 14:18:07');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `username` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `profile_pic` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'user.png'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `username`, `password`, `phone`, `profile_pic`) VALUES
(1, 'Jhenica Guilleno', 'caca9927', '1234', '0823739502', '57240648_2422074667843752_4187280177987846144_o.jpg'),
(2, 'Adisak Promla', 'aom22', '1234', '0827498475', '71435846_1289486364553325_198023062069706752_n.jpg'),
(3, 'Napasawan  Deeruean', 'namthip99', '1234', '0616936271', 'user.png'),
(4, 'Panchiwa Jaikla', 'pan12', '1234', '0641361946', '37393470_1872250996173485_5413101923446292480_o.jpg'),
(5, 'thipjutarat pukjit', 'fafa', '1234', '', 'S__1769513.jpg'),
(6, 'เอิน  ', 'earn', '1234', '0986169244', '84497934_127325805214781_585152327296483328_n.jpg'),
(7, 'อรรถพล เจริญรัมย์', 'pangpond', '1234', '0874561245', '1406861458-image-o.jpg'),
(8, 'สากล ', 'boomit', '1234', '0874561245', '20156090_113178649327071_6791687196237394842_n.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `aparment`
--
ALTER TABLE `aparment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`id_com`),
  ADD KEY `comment_ibfk_1` (`apart_id`);

--
-- Indexes for table `reply`
--
ALTER TABLE `reply`
  ADD PRIMARY KEY (`id_reply`),
  ADD KEY `reply_ibfk_1` (`id_com`),
  ADD KEY `reply_ibfk_2` (`user_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `aparment`
--
ALTER TABLE `aparment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `comment`
--
ALTER TABLE `comment`
  MODIFY `id_com` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `reply`
--
ALTER TABLE `reply`
  MODIFY `id_reply` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `aparment`
--
ALTER TABLE `aparment`
  ADD CONSTRAINT `aparment_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `comment`
--
ALTER TABLE `comment`
  ADD CONSTRAINT `comment_ibfk_1` FOREIGN KEY (`apart_id`) REFERENCES `aparment` (`id`);

--
-- Constraints for table `reply`
--
ALTER TABLE `reply`
  ADD CONSTRAINT `reply_ibfk_1` FOREIGN KEY (`id_com`) REFERENCES `comment` (`id_com`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `reply_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;