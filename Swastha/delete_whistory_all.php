<?php
$con=mysqli_connect("localhost","root","","swastha");



$uid=$_GET['wid'];

	$res1=mysqli_query($con,"delete from tbl_wastedetails where wid='$uid'");
	$res=mysqli_query($con,"select * from tbl_wastedetails where wid='$uid'");
	if(mysqli_num_rows($res)>0){
		echo "failed";
	
	}
	else{
		
		echo "success";
	}
	
	
		

	   

mysqli_close($con);
?>