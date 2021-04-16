<?php
$con=mysqli_connect("localhost","root","","swastha");



$em=$_GET['email'];


	$res=mysqli_query($con,"select * from tbl_user where email='$em'");
	
	
	if(mysqli_num_rows($res)>0){
	while($row=mysqli_fetch_assoc($res)){
	$result[]=$row;
	}
	//echo "success";
	echo json_encode($result);
}
	else{
	echo "failed";
	}

mysqli_close($con);
?>