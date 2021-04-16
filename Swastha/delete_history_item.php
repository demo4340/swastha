<?php
$con=mysqli_connect("localhost","root","","swastha");



$uid=$_GET['uid'];

	$res1=mysqli_query($con,"delete from tbl_request where uid='$uid'");
	$res=mysqli_query($con,"select * from tbl_request where uid='$uid'");
	if(mysqli_num_rows($res)>0){
		echo "failed";
	
	}
	else{
		
		echo "success";
	}
	
	
		

	   

mysqli_close($con);
?>