<?php
$con=mysqli_connect("localhost","root","","swastha");


$lati=$_GET['lat'];
$longi=$_GET['lon'];
$wid=$_GET['wid'];

//	$string="INSERT INTO loc_values (lat,lon,imei) VALUES('$lati','$longi','$ime')";
	//$result=mysqli_query($con,$string);
	
	$string="SELECT latitude,longitude from tbl_worker_loc where wid='$wid'";
	$result=mysqli_query($con,$string)or die(mysqli_error());
	//$res=0;
	if (mysqli_num_rows($result)>0)
	{
		
		$string2="UPDATE tbl_worker_loc SET latitude = '$lati', longitude = '$longi' WHERE wid = '$wid'";
    $result2=mysqli_query($con,$string2)or die(mysqli_error());
	}
	else
	{
		$string1="INSERT INTO tbl_worker_loc (latitude,longitude,wid) VALUES('$lati','$longi','$wid')";
	$result1=mysqli_query($con,$string1);
	}

echo "Data Inserted";
mysqli_close($con);
?>