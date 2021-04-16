<?php
$con=mysqli_connect("localhost","root","","swastha");
mysqli_select_db("db_android");

$latitude=$_GET['latitude'];
$longitude=$_GET['longitude'];

$res11=mysqli_query($con,"insert into tbl_loc(latitude,longitude) values('$latitude','$longitude')");

mysqli_close($con);
?>