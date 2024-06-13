<?php
$server=$_SERVER['SERVER_NAME'];
$uri="/attendance/teacher/";
$url= "http://".$server.$uri;
session_start();
if (!isset($_SESSION['token'])) {
    header("location:login.php");
}
require_once('../dbconnection.php');
$email=base64_decode($_GET['email']);
$token=$_SESSION['token'];

require "../PHPMailer-master/PHPMailerAutoload.php";
$mail = new PHPMailer;
$mail->isSMTP();                                        // Set mailer to use SMTP
$mail->Host = 'smtp.gmail.com';                         // Specify main and backup SMTP servers
$mail->SMTPAuth = true;                                 // Enable SMTP authentication
$mail->Username = 'dericmiagie@gmail.com';              // SMTP username
$mail->Password = 'bjievnqqsuqrzcmm';                  // SMTP password
$mail->SMTPSecure = 'tls';                            // Enable ssl encryption, `ssl` also accepted
$mail->Port = 587;                                    // TCP port to connect to
$mail->setFrom('dericmiagie@gmail.com', 'ATMS');
$mail->addAddress($email);                              // Name is optional
$mail->isHTML(true);                                    // Set email format to HTML
$mail->Subject = 'PASSWORD CHANGE REQUEST';
//html body
$email1=base64_encode($email);

$message='Use this link to change your password: <a href="'.$url.'reset.php?token='
.$token.'?&email='.$email1.'">LINK</a>
 <br><br>If this was not you, contact the admin'; 
$message2='Password reset link is reset.php?token='.$token.'&email='.$email1;
$mail->Body    = $message;
//plain text for non-HTML mail clients
$mail->AltBody = $message2;
if(!$mail->send()) {
    $msg="email could not be sent";
    echo "Mailer Error: " . $mail->ErrorInfo;
    // $loc=header("location:fpassword.php?msg=$msg");
    die();
} 
//-----------------------------------------------------------------------------------------------------//							
if($mail)
{
    $msg="Email was sent"." ".$url;
    $loc=header("location:fpassword.php?msg=$msg");
    die();
}

?>