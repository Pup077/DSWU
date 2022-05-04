<body bgcolor="#CCFFFF" text="#CC99CC" background="/DSWU/img/G4.jpg">
    <h2>Insert user : นักออกแบบระบบ</h2>
    <form action="insertemp.php" method="post" name="Employee">
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
                <td>เบอร์โทร : </td>
                <td><input type="number" name="emp_phone"></td>
            </tr>
            <tr>
                <td>อีเมล : </td>
                <td><input type="emailaddress" name="emp_email"></td>
            </tr>
            <tr>
                <td>ที่อยู่ : </td>
                <td><input type="text" name="emp_address"></td>
            </tr>
            <tr>
                <td>หน้าที่ : </td>
                <td><input type="text" name="alz_note"></td>
            </tr>
        </table>

        <br>
        <input type="submit" value="Insert Emp">
    </form>
</body>

</html>