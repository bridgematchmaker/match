<?php
session_start();
isset($_SESSION['login_admin']) or die("<script>javascript:window.location='../index.php'</script>");

include ("../../connect.php");

$email_send_to = $_POST['email'];
$email_subject = $_POST['subject'];
$email_content = $_POST['message'];

$email_send_to = htmlspecialchars($email_send_to);
$email_send_to = mysql_escape_string($email_send_to);

$email_subject = htmlspecialchars($email_subject);
$email_subject = mysql_escape_string($email_subject);

include("../../mail_config.php");	
require '../../lib/PHPMailer/PHPMailerAutoload.php';
$mail = new PHPMailer(); // инициализация класса

$mail->CharSet = 'utf-8';

$mail->isSMTP(); // указали, что работаем по протоколу SMTP
$mail->SMTPDebug = 0; // 0 - отключить отладку
$mail->SMTPAuth = true;
$mail->SMTPSecure = "tls";

$mail->Host = $mail_host;
$mail->Port = $mail_port; // порт SMTP

$mail->Username = $mail_username;
$mail->Password = $mail_password;

$mail->setFrom($mail_from_email, $mail_from_name); // от кого
$mail->addReplyTo($match_email, $match_name); // кому ответить
$mail->addAddress($email_send_to);  // получатель

$mail->Subject = $email_subject; // Тема письма
$mail->msgHTML($email_content); // Текст письма
//$mail->send(); // Отправка письма

$email_subject = mysql_escape_string($email_subject);
//////////////Логируем отправку//////////////////////
$date_add_log = date("Y-m-d G:i:s");
if ($mail->send()) {
    $sql_email_log = "INSERT INTO email_log (date_add, email, subject, status) VALUES ('$date_add_log', '$email_send_to', '$email_subject', 'OK')";
    $result_email_log = mysql_query($sql_email_log) or die("Ошибка при записи в таблицу email_log. - ".mysql_error());
}
else 
{
    $sql_email_log = "INSERT INTO email_log (date_add, email, subject, status) VALUES ('$date_add_log', '$email_send_to', '$email_subject', 'ERROR')";
    $result_email_log = mysql_query($sql_email_log) or die("Ошибка при записи в таблицу email_log. - ".mysql_error());
}
//////////////////////////////////////////////////////

//////////////////////////////////////////////////////////////////////////////////////////////////////////////
/////////////////Перенаправление////////////////////////////////////
echo	("
			<script>alert('Письмо успешно отпрвленно клиенту');</script><script>javascript:window.location='../send_email.php'</script>
		");
///////////////////////////////////////////////////////