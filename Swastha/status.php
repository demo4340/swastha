<?php
$con=mysqli_connect("localhost","root","","swastha");


$bid=$_GET['bid'];

		
mysqli_query($con,"update tbl_bin set status='filled' where bid='$bid'");

mysqli_close($con);
?>