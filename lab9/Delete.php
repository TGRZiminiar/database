<?php
$con = mysqli_connect(
    'lab9-db-1', # service name
    'root', # username
    '123', # password
    'my_db' # db table
);//Check connection
if (mysqli_connect_errno()) {
    echo "Failed to connect to MySQL: " . mysqli_connect_error();
}

if(empty($_POST['student_id'])){
    echo "Please Input data Student ID";
}else{
    $student_id = mysqli_real_escape_string($con, $_POST['student_id']);

    $sql = "DELETE FROM tb_persons 
                WHERE student_id = '$student_id'";

    if (!mysqli_query($con,$sql)) {
        die('Error: ' . mysqli_error($con));
    }
    echo "Success" ;
}

mysqli_close($con);
?>

<form name="inpfrm" method="post" action="Form.php">
<table border="0" align="center" class="table table-hover">
    <tr>
        <td width="105" align="right"><input name="reset" type="submit" id="Back" value="Back" /></td>
    </tr>
</table>
</form>