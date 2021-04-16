<?php
//include("backup_mail.php");

$account="cablemanpro03@gmail.com";
$password="cable1234";


$email=$_GET['email'];
$pwd=$_GET['pwd'];


/*echo $email;
echo $name;
echo $phone;
echo "adssf";
*/
$from="cablemanpro03@gmail.com";
$to=$email;
$from_name="Reset Password";

$subject="Forgot Password Request";
$from_name="Swastha- Clean Your City";
$msg="Your Password is : $pwd" ; 
include("class.phpmailer.php");
$mail = new PHPMailer();
$mail->IsSMTP();
$mail->CharSet = 'UTF-8';
$mail->Host = "smtp.gmail.com";

$mail->SMTPAuth= true;
$mail->Port = 465; 
$mail->Username= $account;
$mail->Password= $password;
$mail->SMTPSecure = 'ssl';
$mail->From = $from;
$mail->FromName= $from_name;
$mail->isHTML(true);
$mail->Subject = $subject;
$mail->Body = $msg;
$mail->addAddress($to);

if(!$mail->send()){
 echo "Mailer Error: " . $mail->ErrorInfo;
}else{
 echo "E-Mail has been sent";
}
?>
