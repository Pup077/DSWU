<?php
require('connect.php');

$fix_note   = $_REQUEST['fix_note'];
$fix_status_name = $_REQUEST['fix_status_name'];

$sql = "
	INSERT INTO tbfix, tbfix_status
	VALUES ('$fix_note  ','$fix_status_name');
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