<?php
$con=mysqli_connect("localhost","root","","swastha");



$uid=$_GET['uid'];
//echo $uid;
/*$uid=1;
echo $uid;*/
	$res1=mysqli_query($con,"select * from tbl_user where uid='$uid'");
	
	if(mysqli_num_rows($res1)>0){
		
		while($row=mysqli_fetch_assoc($res1)){
				$result[]=$row;
		}
		
	
	echo json_encode($result);
	}
	
	
mysqli_close($con);
?>