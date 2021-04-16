<?php
$con=mysqli_connect("localhost","root","","swastha");




$datetime=$_GET['date'];
$uid=$_GET['uid'];
$time=$_GET['time'];
$lat=$_GET['lat'];
$lon=$_GET['lon'];
$it=$_GET['item'];
$min=100;
$sqlres=mysqli_query($con,"select * from tbl_account where uid='$uid'");
	
	if(mysqli_num_rows($sqlres)>0){
		while($rows=mysqli_fetch_assoc($sqlres))
		{
				
				$a=$rows['accountbalance'];
		}

	if($a>$min){

	$res=mysqli_query($con,"SELECT wid,latitude,longitude, ( 3959 * acos( cos( radians($lat) ) * cos( radians( latitude ) ) * cos( radians( longitude ) - radians($lon ) ) + sin( radians($lat) ) * sin( radians( latitude ) ) ) ) AS distance FROM tbl_worker_loc where status='A' and worker_type='$it' HAVING distance < 5 ORDER BY distance");
	if(mysqli_num_rows($res)>0){
		while($row=mysqli_fetch_assoc($res)){
			$result=$row["wid"];
	
		}

		$r=$result;
//echo json_encode($result);

	$res1=mysqli_query($con,"insert into tbl_request(uid,wid,date,time,status,requested_date) values('$uid','$r','$datetime','$time','requested','$datetime')");

	$res22=mysqli_query($con,"select * from tbl_worker where id='$r'");
	
	if(mysqli_num_rows($res22)>0){
		
	while($row22=mysqli_fetch_assoc($res22)){
	$result1[]=$row22;
	}
	//echo "success";
	echo json_encode($result1);
	}

	}
else
{
	echo "failed";
	
}
}
else{
		
		echo "low";
	}
	}
	else{
		
		echo "account";
	}




mysqli_close($con);
?>