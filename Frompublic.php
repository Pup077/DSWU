<html>

<head></head>

<body bgcolor="#CCFFFF" text="#CC99CC" background="/DSWU/img/G4.jpg">
    <h2>Insert User : ประชาสัมพันธ์ </h2>
    <form action="insertpublic.php" method="post" name="Public">
        <table border="1">
            <tr>
                <td>คำนำหน้า : </td>
                <td><input type="text" name="prethname"></td>
            </tr>
            <tr>
                <td>ชื่อ: </td>
                <td><input type="text" name="emp_firstname"></td>
            </tr>
            <tr>
                <td>นามสกุล: </td>
                <td><input type="text" name="emp_lastname"></td>
            </tr>
            <tr>
                <td>ความคิดเห็นระบบ : </td>
                <td><input type="text" name="article_noat"></td>
            </tr>
        </table>

        <br>
        <input type="submit" value="Insert Public">
    </form>
</body>

</html>