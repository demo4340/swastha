<?php
$con=mysqli_connect("localhost","root","","swastha");


$wid=$_GET['wid'];
$st=$_GET['st'];
		
mysqli_query($con,"update tbl_worker set status='$st' where id='$wid'");
mysqli_query($con,"update tbl_worker_loc set status='$st' where wid='$wid'");
mysqli_close($con);
?>