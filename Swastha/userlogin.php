<?php
$con=mysqli_connect("localhost","root","","swastha");



$uname=$_GET['user'];

$pwd=$_GET['pwd'];
/*$uname='viji';

$pwd='viji12345';*/


	$res1=mysqli_query($con,"select * from tbl_user where username='$uname' and password='$pwd' ");
	
	if(mysqli_num_rows($res1)>0){
		$res=mysqli_query($con,"select * from tbl_user where username='$uname' and password='$pwd' and status='1'");
	
	if(mysqli_num_rows($res)>0){
	while($row=mysqli_fetch_assoc($res)){
	$result[]=$row;
	}
	//echo "success";
	echo json_encode($result);
}
else{
	echo "approve";
	}
	}
	else{
	echo "failed";
	}
	       

mysqli_close($con);
?>