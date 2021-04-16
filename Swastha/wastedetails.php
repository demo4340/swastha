<?php
$con=mysqli_connect("localhost","root","","swastha");


/////////insert wastedetails////////////////////////////////
$typeofwaste=$_GET['typeofwaste'];
$uid=$_GET['uid'];
$bid=$_GET['bid'];
$categories=$_GET['categories'];
$type=$_GET['type'];
$wid=$_GET['wid'];
$amou=$_GET['am'];
$weight=$_GET['weight'];
$am=100;
$a=0;
$d = date("Y/m/d");
if($typeofwaste=="Food"){
	//echo "food";
$res1=mysqli_query($con,"select * from tbl_account where uid='$uid'");
	
	if(mysqli_num_rows($res1)>0){
		
		while($row=mysqli_fetch_assoc($res1)){
				$result[]=$row;
				$a=$row['accountbalance'];
		}

	}
	if($a>$amou){
		
		$a=$a-$amou;
		mysqli_query($con,"update tbl_account set accountbalance='$a' where uid='$uid' ");
	mysqli_query($con,"insert into tbl_wastedetails(bid,uid,wid,type_of_waste,categories,weight,rate_per_kg,amount,date_time,pid,status,type) values('$bid','$uid','$wid','$typeofwaste','$categories','$weight','10','$amou','$d','1','collected','$type')");
mysqli_query($con,"update tbl_request set status='completed' where uid='$uid'");
	
	}
	else{
		echo $amou;
	}
	
}
else if($typeofwaste=="E-Waste"|| $typeofwaste=="Scrap" ){

mysqli_query($con,"insert into tbl_wastedetails(bid,uid,wid,type_of_waste,categories,weight,rate_per_kg,amount,date_time,pid,status,type) values('$bid','$uid','$wid','$typeofwaste','$categories','$weight','10','$amou','$d','1','collected','$type')");
$res11=mysqli_query($con,"select * from tbl_account where uid='$uid'");
	
	if(mysqli_num_rows($res11)>0){
		
		while($row1=mysqli_fetch_assoc($res11)){
				//$result[]=$row1;
				$aa=$row1['accountbalance'];
		}

	}
$aa=$aa+$amou;
mysqli_query($con,"update tbl_account set accountbalance='$aa' where uid='$uid' ");
mysqli_query($con,"update tbl_request set status='completed' where uid='$uid'");
echo "credit"."-".$am;
echo "ewaste";
}
else
{
echo "Invalid type";
}
	

mysqli_close($con);
?>