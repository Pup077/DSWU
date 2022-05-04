<?php
require('connect.php');

$prethname   = $_REQUEST['prethname'];
$emp_firstname = $_REQUEST['emp_firstname'];
$emp_lastname = $_REQUEST['emp_lastname'];
$emp_phone	  = $_REQUEST['emp_phone'];
$emp_email  = $_REQUEST['emp_email'];
$emp_address  = $_REQUEST['emp_address'];
$alz_note = $_REQUEST['alz_note'];

$sql = "
	INSERT INTO tbemployee, tbanalyzestructure ,tbdevelopment
	VALUES ('$prethname ','$emp_firstname','$emp_lastname','$emp_phone','$emp_email','$emp_address','$alz_note');
	";

$objQuery = mysqli_query($conn, $sql);

if ($objQuery) {
	echo "New record Inserted successfully";
} else {
	echo "Error : Input";
}

mysqli_close($conn); // ปิดฐานข้อมูล
echo "<br><br>";
echo "--- END ---";
?>