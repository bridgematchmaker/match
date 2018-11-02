<?
session_start();
isset($_SESSION['login_match']) or die("<script>javascript:window.location='../index.php'</script>");

include ("../../connect.php");


////////////////Переменные////////////////
$girl_id = $_POST['girl_id'];
$user_id = $_POST['user_id'];
$conformity = $_POST['conformity'];
$date_add = date("Y-m-d");

/////////////Фильтрация///////////////////
$girl_id = htmlspecialchars($girl_id);
$girl_id = mysql_escape_string($girl_id);

$conformity = htmlspecialchars($conformity);
$conformity = mysql_escape_string($conformity);


//////////Проверка на существование девушки в базе/////////

$result_repeat = mysql_query("SELECT * FROM girls WHERE girl_id='$girl_id';");
$num = mysql_num_rows($result_repeat);
if($num < 1) 
	{ 
		echo("
			<script>alert('Девушки с таким ID нет в базе');</script>
			<script>javascript:window.location='../client_profile.php?user_id=".$user_id."'</script>
		");
	exit();
	} 

$result_repeat2 = mysql_query("SELECT * FROM clients_girl WHERE girl_id='$girl_id' AND user_id='$user_id';");
$num2 = mysql_num_rows($result_repeat2);
if($num2 > 0) 
	{ 
		echo("
			<script>alert('Девушка с таким ID прикрепленна к клиенту');</script>
			<script>javascript:window.location='../client_profile.php?user_id=".$user_id."'</script>
		");
	exit();
	} 
/////////////////////////////////////////////////////////////

//////////////////////Загрузка данных мужика из базы/////////////////////////
$zapros_client = "SELECT * FROM clients WHERE user_id='".$user_id."'";

$requirest_client = mysql_query($zapros_client);
while($row_client = mysql_fetch_array($requirest_client)) 
	{
		$user_email = $row_client['email_client'];
	}
/////////////////////////////////////////////////////////////////////////////

///////////////////////Загружаем данные девушки//////////////////
$zapros_girl = "SELECT * FROM girls WHERE girl_id='$girl_id';";
$requirest_girl = mysql_query($zapros_girl);
while($row_girl = mysql_fetch_array($requirest_girl)) { 
	$girl_name = $row_girl['first_name']; 
	$girl_avatar = "http://".$_SERVER['SERVER_NAME']."/".$row_girl['foto'];
	$girl_country = $row_girl['country'];
	$girl_city = $row_girl['city'];
}
/////////////////////////////////////////////////////////////

//////////////////Загрузка данных мачмеккера/////////////////////////////////
$zapros_match = "SELECT * FROM matchmakers WHERE login='".$_SESSION['login_match']."'";


$requirest_match = mysql_query($zapros_match);
while($row_match = mysql_fetch_array($requirest_match)) 
	{
	  $match_name = $row_match['name'];
	  $match_email = $row_match['email'];
	}
/////////////////////////////////////////////////////////////////////////////


////////////////Вносим изменения в анкету//////////////
$sql = "INSERT INTO clients_girl (user_id,girl_id,girl_name,conformity,date_add) VALUES ('$user_id', '$girl_id', '$girl_name', '$conformity', '$date_add')";
$result = mysql_query($sql) or die("<script>alert('Ошибка при записи в таблицу');</script><script>javascript:window.location='../client_profile.php?user_id=".$user_id."'</script>");
///////////////////////////////////////////////////////

/////////////////////////Отправка письма//////////////////////////////////////////////////////////////////////

	$email_name = "auto_email_10"; // Название шаблона письма
	$email_send_to = $user_email; // Получатель письма
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
	$email_content = str_replace("{girl_avatar}", $girl_avatar, $email_content);
	$email_content = str_replace("{user_id}", $user_id, $email_content);
	$email_content = str_replace("{girl_id}", $girl_id, $email_content);
	$email_content = str_replace("{girl_first_name}", $girl_name, $email_content);
	$email_content = str_replace("{girl_country}", $girl_country, $email_content);
	$email_content = str_replace("{girl_city}", $girl_city, $email_content);
	$email_content = str_replace("{match_name}", $match_name, $email_content);
	$email_content = str_replace("{match_email}", $match_email, $email_content);
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
			<script>alert('Девушка добавлена');</script><script>javascript:window.location='../client_profile.php?user_id=".$user_id."'</script>
		");
///////////////////////////////////////////////////////
?>

