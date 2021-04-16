<?php
$con=mysqli_connect("localhost","root","","swastha");


$complaint=$_GET['complaint'];
$subject=$_GET['subject'];
$uid=$_GET['uid'];

$res=mysqli_query($con,"insert into tbl_complaints(uid,subject,complaint) values('$uid','$subject','$complaint')");

mysqli_close($con);
?>