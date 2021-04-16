<?php
$con=mysqli_connect("localhost","root","","swastha");



$uname=$_GET['user'];
$pwd=$_GET['pwd'];

//$uname='bb';
//$pwd='bb';


	$res=mysqli_query($con,"select * from tbl_worker where username='$uname' and password='$pwd' ");
	
	if(mysqli_num_rows($res)>0){
		
	while($row=mysqli_fetch_assoc($res)){
	$result1[]=$row;
	}
	//echo "success";
	echo json_encode($result1);
}
	else{
	echo "failed";
	}
	       

mysqli_close($con);
?>