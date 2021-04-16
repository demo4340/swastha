<?php
$con=mysqli_connect("localhost","root","","swastha");




	$res=mysqli_query($con,"select * from tbl_wastedetails where type='public'");
	
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