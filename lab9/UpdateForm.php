<?php
$con = mysqli_connect(
    'lab9-db-1', # service name
    'root', # username
    '123', # password
    'my_db' # db table
);

//Check connection
if (mysqli_connect_errno()) {
    echo "Failed to connect to MySQL: " . mysqli_connect_error();
}
?>

<form name="inpfrm" method="post" action="Update.php">
<table width="500" height="10" border="0" align="left" cellpadding="0" cellspacing="0">
    <tr>
        <td height="30" align="right"></td>
        <td width="105" align="left"> Update Form </td>
    </tr>
    <tr>
        <td height="30" align="right">Student ID : </td>
        <td width="105" align="left"><input name="student_id" type="text" id="student_id" size="30" value="" maxlenght="30"> </td>
    </tr>
    <tr>
        <td height="30" align="right">First Name : </td>
        <td width="105" align="left"><input name="first_name" type="text" id="first_name" size="30" value="" maxlenght="30"> </td>
    </tr>
    <tr>
        <td height="30" align="right">Last Name : </td>
        <td width="105" align="left"><input name="last_name" type="text" id="last_name" size="30" value="" maxlenght="30"> </td>
    </tr>
    <tr>
        <td height="30" align="right">Age : </td>
        <td width="105" align="left"><input name="age" type="text" id="age" size="3" value="" maxlenght="3"> Yr.</td>
    </tr>
    <tr>
        <td height="30" align="right"></td>
        <td width="105" align="right"><input name="UPDATE" type="submit" id="UPDATE" value="UPDATE" /></td>
    </tr>
</table>
</form>
