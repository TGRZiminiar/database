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
    $student_id = $_POST['student_id'];
}else{
    $student_id = '';
}

if(empty($_POST['first_name'])){
    $first_name = $_POST['first_name'];
}else{
    $first_name = '';
}

if(empty($_POST['last_name'])){
    $last_name = $_POST['last_name'];
}else{
    $last_name = '';
}
$r=1;
$query = "SELECT * FROM tb_persons WHERE student_id LIKE '%$student_id%' 
AND first_name LIKE '%$first_name' and last_name LIKE '%$last_name%' 
ORDER BY student_id ASC" or die("Error:" . mysqli_error());

$result = mysqli_query($con, $query);
echo "<table border='1' align='center' class='table table-hover'>";
echo "<tr>";
echo "<td>"."No"."</td>";
echo "<td>"."Student ID"."</td>";
echo "<td>"."First Name"."</td>";
echo "<td>"."Last Name"."</td>";
echo "<td>"."Age"."</td>";
echo "</tr>";
foreach( $result as $row ) {
    echo "<tr>";
    echo "<td>".$r++."</td>";
    echo "<td>".$row["student_id"]."</td>";
    echo "<td>".$row["first_name"]."</td>";
    echo "<td>".$row["last_name"]."</td>";
    echo "<td>".$row["age"]."</td>";
    echo "</tr>";
}
echo "</table>";

mysqli_close($con);
?>
