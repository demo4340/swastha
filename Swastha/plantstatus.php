<?php
$con=mysqli_connect("localhost","root","","swastha");


$pid=$_GET['pid'];
$wid=$_GET['wid'];


$res1=mysqli_query($con,"update tbl_wastedetails set pid='$pid',status='dumped' where wid='$wid'");
mysqli_close($con);
?>