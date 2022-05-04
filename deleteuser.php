<?php

$delete_ID    = $_REQUEST['prethname'];
$delete_ID  = $_REQUEST['emp_firstname'];
$delete_ID  = $_REQUEST['emp_lastname'];
$delete_ID 	  = $_REQUEST['emp_phone'];
$delete_ID   = $_REQUEST['emp_email'];
$delete_ID  = $_REQUEST['emp_address'];

require('connect.php');

$sql = '
    DELETE FROM tbprefix, tbemployee
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
