<?php
$con=mysqli_connect("localhost","root","","swastha");



$categories=$_GET['categories'];
//echo $uid;
/*$uid=1;*/
//echo $typeofwaste;
	$res1=mysqli_query($con,"select * from tbl_setrate where categories='$categories'");
	
	if(mysqli_num_rows($res1)>0){
		
		while($row=mysqli_fetch_assoc($res1)){
				$result=$row["rate_per_kg"];
		}
		
	
	echo $result;
	}
	
	/*$res=mysqli_query($con,"select * from tbl_scrap");
	
	if(mysqli_num_rows($res)>0){
		
		while($row=mysqli_fetch_assoc($res)){
				$result1=$row;
		}
		
	
	echo json_encode($result1);
	}*/
	
	
mysqli_close($con);
?>