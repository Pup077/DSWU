<?php
require('connect.php');

$sql = '
	SELECT * 
	FROM tbemployee;
	';

$result = mysqli_query($conn, $sql);

if (mysqli_num_rows($result) > 0) {
	echo mysqli_num_rows($result);
} else {
	echo "EMPTY DATA";
}

mysqli_close($conn); // ปิดฐานข้อมูล
echo "<br><br>";
echo "--- END ---";

?>