<?php
$con=mysqli_connect("localhost","root","","swastha");


$name=$_GET['name'];
$address=$_GET['address'];
$location=$_GET['location'];
$contact=$_GET['contact'];
$email=$_GET['email'];
$username=$_GET['username'];
$password=$_GET['password'];

/*echo $name;
echo $address;*/
//$fname="sree";
//$lname="dgh";

$res=mysqli_query($con,"select * from tbl_user where email='$email'");
	
	if(mysqli_num_rows($res)>0){
	echo "exist";
}
	else{
$res11="insert into tbl_user(name,address,location,contact,email,username,password) values('$name','$address','$location','$contact','$email','$username','$password')";

mysqli_query($con,$res11)or die(mysqli_error());

$res1=mysqli_query($con,"select * from tbl_user where email='$email'");
	
	if(mysqli_num_rows($res1)>0){
	echo "success";
	}
	else{
		echo "failed";
	}
	}


//if(mysqli_num_rows($res)>0){
//	echo "success";
//}
//else{
//	echo "failed";
//	}
//	
mysqli_close($con);
?>