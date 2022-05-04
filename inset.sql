INSERT INTO tbprefix VALUE
(1,'นาย','Mister','นาย','Mr.'),
(2,'นางสาว','Miss','น.ส.','Miss'),
(3,'นาง','Mrs.','นาง','Mrs.'),
(4,'เด็กชาย','Master.','ดช.','Mstr.'),
(5,'เด็กหญิง','Miss','ดญ.','Miss');
/*------------------------------------------------tbposition------------------------------------------------------*/
INSERT INTO tbposition VALUES 
(11,'ประธานกรรมการ'),(12,'กรมการ'),
(13,'ผู้อำนวยการกองคลัง'),
(14,'ผู้ช่วยศาสตราจารย์ '),
(15,'รองศาสตราจารย์ '),
(16,'ศาสตราจารย์ '),
(17,'ผู้อำนวยการกองบริหารงานบุคคล'),
(18,'บุคลากรปฏิบัติการ'),
(19,'บุคลากร'),
(20,'อาจารย์');
/*-------------------------------------------------tbstatus-------------------------------------------------------*/
INSERT INTO tbstatus(status_name) VALUES
('โสด'),('สมรส'),('หม้าย'),('หย่า'),('แยกกันอยู่');
/*-------------------------------------------------tbgetnote_status------------------------------------------------*/
INSERT INTO tbgetnote_status VALUES
(201,'ติดตามผลการดำเนินการ','เสร็จสิ้น'),
(202,'สรุปผลการใช้งาน','ใช้งานได้สมบรูณ์'),
(203,'ข้อมูลงบโครงการ','78000'),
(204,'สรุปผลการดำเนินโครงการ','โครงการเสร็จไปอย่างเรียบร้อย'),
(205,'รายงานความคืบหน้าให้แก่ที่ประชุม','กำลังรอดำเนินการ');
/*--------------------------------------------------tbfix_status---------------------------------------------------*/
INSERT INTO tbfix_status VALUES
(101,'ผ่านการแก้ไข'),
(102,'ยังต้องปรับปรุง');
/*-------------------------------------------------tbemployee------------------------------------------------------*/
INSERT INTO tbemployee VALUES 
('em101','สมชาย','เกลี้ยงเพลอ','niszi@hotmail.com','0834016681','สงขลา',20,1,1),
('em102','สมหมาย','หมายพอง','som@hotmail.com','0834776681','พัทลุง',20,1,1),
('em103','สุชาดา','ดีเลิศ','suchada@hotmail.com','0834451412','กรุงเทพมหานคร',12,2,3),
('em104','สุพรรษา','ใจงาม','supansa_jai@hotmail.com','0834431512','สงขลา',12,2,3),
('em105','กรรนิกา','ใจดี','kannika@hotmail.com','0844315126','นครศรีธรรมราช',12,3,3),
('em106','กรวี','จุงใจ','korawee@hotmail.com','0844316155','ยะลา',12,4,1),
('em107','ปรดี','จิตดี','poradee@hotmail.com','0835149785','ปัตตานี',11,2,3),
('em108','ชัยนง','เลิศมาก','chainong@hotmail.com','084431674','ตรัง',16,1,2),
('em109','กรกิต','กล้าวไกล','kornkit@hotmail.com','0854145555','สงขลา',18,2,1),
('em110','ปรชัย','อินมี','korawee@hotmail.com','0844316155','ยะลา',19,1,1);
/*-------------------------------------------------tbget------------------------------------------------------------*/
INSERT INTO tbget VALUES
(111,'25/8/2558','30/8/2558',201),
(112,'26/8/2558','31/8/2558',202),
(113,'27/8/2558','1/9/2559',203),
(114,'28/8/2558','2/9/2559',204),
(115,'29/8/2558','3/9/2559',205);
/*-------------------------------------------------tbfix--------------------------------------------------------------*/
INSERT INTO tbfix VALUES
(1,'การปรับปรุงตัวเก็บข้อมูล',101,111),
(2,'เพึ่มฟังช์ชั้นระบบ',102,112),
(3,'NULL',101,113),
(4,'NULL',101,114),
(5,'NULL',101,115);
/*--------------------------------------------------tbstatus_alz_noat--------------------------------------------------*/
INSERT INTO tbstatus_alz_noat VALUES
(121,'ต้องการปรับปรุงระบบ',111),
(122,'อยากได้ฟังค์ชั่นบางอย่างพึ่ม',112);
/*---------------------------------------------------tbpublicrelations-------------------------------------------------*/
INSERT INTO tbpublicrelations VALUES
(1,'ประโยชน์ของโปรแกรม','การจัดระเบียบข้อมูลในมหาลัย','11/8/2558','11',111),
(2,'การใช่งานโปรแกรม','เข้าผ่านระบบมหาลัยและรหัสผ่าน','12/8/2558','12',112);
/*--------------------------------------------------tbanalyzestructure--------------------------------------------------*/
INSERT INTO tbanalyzestructure VALUES
(1,'15/8/2558','วิเคาระห์ฐานข้อมูล','19/8/2558',,111),
(2,'16/8/2558','ออกแบบระบบ','20/8/2558',,112),
(3,'17/8/2558','พัฒนาระบบ','21/8/2558',,113),
(4,'18/8/2558','ทดสอบระบบ','22/8/2558',,114);
/*---------------------------------------------------tbdevelopment------------------------------------------------------*/
INSERT INTO tbdevelopment VALUES
(1,'23/8/2558','การติดตั้งซอฟแวร์','27/8/2558','เพึ่มปุ่ม','em101',21,121,1,111),
(2,'24/8/2558','นำระบบขึ้นเว็ปเซอร์วิส','28/8/2558','เพึ่มข้อมูล','em102',22,121,2,112),
(3,'25/8/2558','การแบ่งการใช่บริการ','29/8/2558','เพึ่มแถบบรรทัด','em103',23,122,3,113),
(4,'26/8/2558ม','ออกแบบฐานข้อมูล','30/8/2558','เพึ่มลิ้ง','em104',24,122,4,114);