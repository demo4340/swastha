<?php
$con=mysqli_connect("localhost","root","","swastha");



$id=$_GET['id'];

	$res1=mysqli_query($con,"delete from tbl_wastedetails where id='$id'");
	$res=mysqli_query($con,"select * from tbl_wastedetails where id='$id'");
	if(mysqli_num_rows($res)>0){
		echo "failed";
	
	}
	else{
		
		echo "success";
	}
	
	
		

	   

mysqli_close($con);
?>