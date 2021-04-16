<?php
$con=mysqli_connect("localhost","root","","swastha");



//$categories=$_GET['categories'];
//echo $uid;
/*$uid=1;*/
//echo $typeofwaste;
	$res1=mysqli_query($con,"select * from tbl_setrate");
	
	if(mysqli_num_rows($res1)>0){
		
		while($row=mysqli_fetch_assoc($res1)){
				$result[]=$row;
		}
		
	
	echo json_encode($result);
	}
	mysqli_close($con);
?>