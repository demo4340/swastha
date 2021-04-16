<?php
$con=mysqli_connect("localhost","root","","swastha");



$wid=$_GET['wid'];
//echo $uid;
$uid=1;
//echo $uid;

	$res1=mysqli_query($con,"select * from tbl_request where status='requested' and wid='$wid'");
	
	if(mysqli_num_rows($res1)>0){
		
		while($row=mysqli_fetch_assoc($res1)){
				$result[]=$row;
				//$uid=$row["uid"];
		}
		/*$res11=mysqli_query($con,"select * from tbl_user where uid='$uid'");
	
	if(mysqli_num_rows($res11)>0){
		
		while($row1=mysqli_fetch_assoc($res11)){
			$name=$row1["name"];
		}
		
	$custom = array('name'=>'$name');
$result[] = $custom;	
	}*/
	echo json_encode($result);
	}
	else{
	echo "failed";	
	}
	

	
	   

mysqli_close($con);
?>