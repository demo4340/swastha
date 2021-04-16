<?php
$con=mysqli_connect("localhost","root","","swastha");



$wid=$_GET['wid'];
//echo $uid;
/*$uid=1;
echo $uid;*/
	$res1=mysqli_query($con,"select * from tbl_wastedetails where wid='$wid'");
	
	if(mysqli_num_rows($res1)>0){
		
		while($row=mysqli_fetch_assoc($res1)){
				$result[]=$row;
		}
		
	
	echo json_encode($result);
	}	   

mysqli_close($con);
?>