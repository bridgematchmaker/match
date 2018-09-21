<?
session_start();
isset($_SESSION['email_client']) or die("<script>javascript:window.location='../../login.php'</script>");

include ("../../connect.php");

$user_name = $_POST['user_name'];
$email = $_POST['email'];
$message = $_POST['message'];
$user_id = $_POST['user_id'];

/////////////Фильтрация///////////////////
$user_name = htmlspecialchars($user_name);
$user_name = mysql_escape_string($user_name);

$email = htmlspecialchars($email);
$email = mysql_escape_string($email);

$message = htmlspecialchars($message);
$message = mysql_escape_string($message);

$user_id = htmlspecialchars($user_id);
$user_id = mysql_escape_string($user_id);


/////////////////////////Отправка письма//////////////////////////////////////////////////////////////////////


$email_send_to = "support@bridgematchmaker.com"; // Получатель письма

$email_subject = "Сообщение 'Contact US'. Клиент (ID - $user_id)";
$email_content = "Имя - $user_name <br> E-Mail - $email <br> Сообщение - $message";

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
$mail->addReplyTo($mail_replyto_email, $mail_replyto_name); // кому ответить
$mail->addAddress($email_send_to);  // получатель

$mail->Subject = $email_subject; // Тема письма
$mail->msgHTML($email_content); // Текст письма
//$mail->send(); // Отправка письма

$email_subject = mysql_escape_string($email_subject);
//////////////Логируем отправку//////////////////////
$date_add_log = date("Y-m-d G:i:s");
if ($mail->send()) {
    $sql_email_log = "INSERT INTO email_log (date_add, email, subject, status) VALUES ('$date_add_log', '$email_send_to', '$email_subject', 'OK')";
    $result_email_log = mysql_query($sql_email_log) or die("Ошибка при записи в таблицу email_log");
}
else 
{
    $sql_email_log = "INSERT INTO email_log (date_add, email, subject, status) VALUES ('$date_add_log', '$email_send_to', '$email_subject', 'ERROR')";
    $result_email_log = mysql_query($sql_email_log) or die("Ошибка при записи в таблицу email_log");
}
//////////////////////////////////////////////////////

//////////////////////////////////////////////////////////////////////////////////////////////////////////////

/////////////////Перенаправление в анкету///////////////
echo	("
			<script>javascript:window.location='../msg.php?type=0&msg_id=7&redirect=0'</script>
		");
///////////////////////////////////////////////////////

?>