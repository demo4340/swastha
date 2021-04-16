<?php
$con=mysqli_connect("localhost","root","","swastha");



//$categories=$_GET['categories'];
//echo $uid;
/*$uid=1;*/
//echo $typeofwaste;
	$res1=mysqli_query($con,"select * from tbl_account");
	
	if(mysqli_num_rows($res1)>0){
		
		while($row=mysqli_fetch_assoc($res1)){
				$result=$row;
		}
		
	
	echo json_encode($result);
	}
	
	if($type=="food")
	$res=mysqli_query($con,"select * from tbl_account where uid='$uid'");
	while($row=mysqli_fetch_assoc($res)){
				$amount=$row["amount"];
		}
		$am=$amount-100;
		$res2=mysqli_query($con,"update tbl_account set amount='$am' where uid='$uid'");
	mysqli_close($con);
?>