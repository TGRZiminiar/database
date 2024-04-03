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

<form name="inpfrm" method="post" action="Delete.php">
<table width="500" height="10" border="0" align="left" cellpadding="0" cellspacing="0">
    <tr>
        <td height="30" align="right"></td>
        <td width="105" align="left"> Delete Form </td>
    </tr>
    <tr>
        <td height="30" align="right">Student ID : </td>
        <td width="105" align="left"><input name="student_id" type="text" id="student_id" size="30" value="" maxlenght="30"> </td>
    </tr>
    <tr>
        <td height="30" align="right"></td>
        <td width="105" align="right"><input name="Delete" type="submit" id="Delete" value="Delete" /></td>
    </tr>
</table>
</form>
