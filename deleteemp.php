<?php

$delete_ID  = $_REQUEST['emp_id'];

require('connect.php');

$sql = '
    DELETE FROM tbemployee
    WHERE emp_id = ' . $delete_ID . ';
    ';

$objQuery = mysqli_query($conn, $sql);
if ($objQuery) {
    echo "Record " . $delete_ID . " was Deleted.";
} else {
    echo "Error : Delete";
}

mysqli_close($conn); // ปิดฐานข้อมูล
echo "<br><br>";
echo "--- END ---";
?>
