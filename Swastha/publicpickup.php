<?php
$con=mysqli_connect("localhost","root","","swastha");

$inputID = $_POST['data']; 

	$res=mysqli_query($con,"UPDATE tbl_publicbin SET collectionStatus  = 'completed' WHERE bid = '$inputID'");
	
	/*if(mysqli_num_rows($res)>0){
		echo "Completed";
	}
	
	else{
		echo "failed";
	}*/
	
	echo 'completed';
	       
mysqli_close($con);
?>