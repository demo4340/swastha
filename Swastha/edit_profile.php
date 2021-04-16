<?php
$con=mysqli_connect("localhost","root","","swastha");




$email=$_GET['email'];
$ph=$_GET['ph'];
$name=$_GET['name'];
$addr=$_GET['addre'];
$acc=$_GET['acc'];
$uid=$_GET['uid'];

$sql="UPDATE tbl_user SET email='$email',contact='$ph',name='$name',address='$addr',location='$acc' where id='$uid' ";
//mysqli_query($con,$sql);	
	
if(mysqli_query($con,$sql)){
echo "success";	
} 
else{
	echo "failed";
}

mysqli_close($con);
?>