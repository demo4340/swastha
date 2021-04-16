<?php
$con=mysqli_connect("localhost","root","","swastha");


//$un=$_POST['username'];
//$pass=$_POST['password'];

$lat=$_GET['latitude'];
$lon=$_GET['longitude'];

/*$lat="10.0047";
$lon="76.3063";*/
/*echo $lat;
echo $lon;*/
	$res=mysqli_query($con,"SELECT id,location,latitude,longitude, ( 3959 * acos( cos( radians($lat) ) * cos( radians( latitude ) ) * cos( radians( longitude ) - radians($lon ) ) + sin( radians($lat) ) * sin( radians( latitude ) ) ) ) AS distance FROM tbl_publicbin where status='filled'  and type='public' HAVING distance < 5 ORDER BY distance LIMIT 0 , 20");
	//echo $res;
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