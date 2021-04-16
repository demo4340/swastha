<?php
$con=mysqli_connect("localhost","root","","swastha");
mysqli_select_db("db_android");


$uname=$_GET['usern'];

$pwd=$_GET['pwdd'];
//$uname='sreeja';

//$pwd='123';


	$res=mysqli_query($con,"select * from tbl_login where username='$uname' and password='$pwd'");
	
	if(mysqli_num_rows($res)>0){
	/*while($row=mysqli_fetch_assoc($res)){
	$result[]=$row;
	}*/
	echo "success";
	//echo json_encode($result);
}
	else{
	echo "failed";
	}
	       

mysqli_close($con);
?>