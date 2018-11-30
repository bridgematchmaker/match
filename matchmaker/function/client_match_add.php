<?
session_start();
isset($_SESSION['login_match']) or die("<script>javascript:window.location='../index.php'</script>");

include ("../../connect.php");


////////////////Переменные////////////////
$user_id = $_GET['user_id'];
$status_verification = $_GET['status_verification'];

/////////////Фильтрация///////////////////
$user_id = htmlspecialchars($user_id);
$user_id = mysql_escape_string($user_id);

//////////////////////////////////////////

if($status_verification == "1")
	{
		$sql = "UPDATE clients SET matchmaker_login='".$_SESSION['login_match']."', status_system='3' WHERE user_id='$user_id'";
	}
else
	{
		$sql = "UPDATE clients SET matchmaker_login='".$_SESSION['login_match']."', status_system='2' WHERE user_id='$user_id'";
	}



////////////////Вносим изменения в анкету//////////////
$result = mysql_query($sql) or die("<script>alert('Ошибка при записи в таблицу');</script><script>javascript:window.location='../client_profile.php?user_id=".$user_id."'</script>");
///////////////////////////////////////////////////////


//////////////////Загрузка данных мачмеккера/////////////////////////////////
$zapros_match = "SELECT * FROM matchmakers WHERE login='".$_SESSION['login_match']."'";


$requirest_match = mysql_query($zapros_match);
while($row_match = mysql_fetch_array($requirest_match)) 
	{
	  $match_name = $row_match['name'];
	  $match_email = $row_match['email'];
	  $match_foto = $row_match['foto'];
	  $match_skype = $row_match['skype'];
	  $match_phone = $row_match['phone']; 
	  $match_avatar = "http://".$_SERVER['SERVER_NAME']."/".$row_match['foto'];

	}
/////////////////////////////////////////////////////////////////////////////

//////////////////////Загрузка данных мужика из базы/////////////////////////
$zapros_client = "SELECT * FROM clients WHERE user_id='".$user_id."'";

$requirest_client = mysql_query($zapros_client);
while($row_client = mysql_fetch_array($requirest_client)) 
	{
		$client_first_name = $row_client['first_name'];
		$client_last_name = $row_client['last_name'];
		$email_client = $row_client['email_client'];
		$client_avatar = "http://".$_SERVER['SERVER_NAME']."/".$row_client['foto'];
	}
/////////////////////////////////////////////////////////////////////////////


/////////////////////////Отправка письма//////////////////////////////////////////////////////////////////////

$email_name = "auto_email_3"; // Название шаблона письма
$email_send_to = $email_client; // Получатель письма
$unsubscribe_link = "http://".$_SERVER['SERVER_NAME']."/unsubscribe.php?email=".$email_send_to;

/////////////Загружаем шаблон письма/////////////////////
$zapros_email = "SELECT * FROM email_templates WHERE name='$email_name'";
$result_email = mysql_query($zapros_email);
while ($row_email = mysql_fetch_assoc($result_email)) 
	{ 
		$email_subject = $row_email['subject'];
		$email_content = $row_email['content'];
	}
/////////////////////////////////////////////////////////

include("../../mail_config.php");	

//////////////Подстановка макросов////////////////////////


/////Тело///////
$email_content = str_replace("{first_name}", $client_first_name, $email_content);
$email_content = str_replace("{email}", $email_client, $email_content);
$email_content = str_replace("{user_id}", $user_id, $email_content);
$email_content = str_replace("{match_name}", $match_name, $email_content);
$email_content = str_replace("{match_avatar}", $match_avatar, $email_content);
$email_content = str_replace("{match_email}", $match_email, $email_content);
$email_content = str_replace("{match_skype}", $match_skype, $email_content);
$email_content = str_replace("{match_phone}", $match_phone, $email_content);
$email_content = str_replace("{unsubscribe_link}", $unsubscribe_link, $email_content);
//////////////////////////////////////////////////////////

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

/////////////////Перенаправление в анкету///////////////
echo	("
			<script>alert('Мачмекер успешно закреплен за пользователем');</script><script>javascript:window.location='../client_profile.php?user_id=".$user_id."'</script>
		");
///////////////////////////////////////////////////////
?>

