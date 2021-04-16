<?php
$con=mysqli_connect("localhost","root","","swastha");

$uid=$_GET['uid'];
//echo $uid;
/*$uid=1;
echo $uid;*/

	$res1=mysqli_query($con,"select * from tbl_user where id='$uid'");
	
	if(mysqli_num_rows($res1)>0){
		
		while($row=mysqli_fetch_assoc($res1)){
				//$result[]=$row;
				$bid=$row["bid"];
		}
		
	/* from tbl_user we get bin id then we have to find the bin in tbl_request  */	
	$res11=mysqli_query($con,"select * from tbl_userbin where bid='$bid'");
	
	if(mysqli_num_rows($res11)>0){
		
		while($row1=mysqli_fetch_assoc($res11)){
				$result[]=$row1;
				
		}
		
	
	echo json_encode($result);
	}	
	}	
	
	else {
		echo "failed";
	}
	
	

	

	
	   

mysqli_close($con);
?>