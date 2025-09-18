<?php

$envFile = __DIR__ .'../../.env';

use PHPMailer\PHPMailer\PHPMailer;
use PHPMailer\PHPMailer\SMTP;
use PHPMailer\PHPMailer\Exception;

require 'PHPMailer/src/PHPMailer.php';
require 'PHPMailer/src/SMTP.php';
require 'PHPMailer/src/Exception.php';

$mail = new PHPMailer(true);

try {
    $mail->isSMTP();
    $mail->Host       = $_ENV['SMTP_HOST'];
    $mail->SMTPAuth   = $_ENV['SMTP_AUTH'];
    $mail->Username   = $_ENV['SMTP_USERNAME'];
    $mail->Password   = $_ENV['SMTP_PASS'];
    $mail->SMTPSecure = PHPMailer::ENCRYPTION_SMTPS; 
    $mail->Port = 465; 

    $fname = "JZPIS";
    $emailr = $_SESSION['email'];
    $otp = $_SESSION['otp'];
    $mail->setFrom('kirubelwinner@gmail.com', 'Jimma Zone Prisoner Information System');
    $mail->addAddress($emailr, $fname);

    $mail->isHTML(true);

    $customMessage = 'Hello Your OTP is: '.$otp.'<br>Insert this OTP to the system for verification.';

    $mail->Subject = 'One Time Password';
    $mail->Body    = $customMessage;

    $mail->send();
    $message = 'Email has been sent successfully.';
    
} catch (Exception $e) {
    // Log the error instead of displaying directly to the user
    error_log("Email could not be sent. Mailer Error: {$mail->ErrorInfo}. Exception Details: " . $e->getMessage());
    echo 'An error occurred while sending the email. Please try again later.';
}
?>