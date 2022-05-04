<?php
require('connect.php');

$prethname   = $_REQUEST['prethname'];
$emp_firstname = $_REQUEST['emp_firstname'];
$emp_lastname = $_REQUEST['emp_lastname'];
$article_noat = $_REQUEST['article_noat'];

$sql = "
	INSERT INTO tbprefix, tbemployee, tbstatus_alz_noat
	VALUES ('$prethname ','$emp_firstname','$emp_lastname','$article_noat');
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