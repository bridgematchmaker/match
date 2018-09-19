<?
session_start();
isset($_SESSION['login_match']) or die("<script>javascript:window.location='../index.php'</script>");

include ("../../connect.php");


////////////////Переменные/////////////////////////////////////////////////////
$order_id = $_POST['order_id'];
$mail_girl = $_POST['mail_girl'];
$date_end = date("Y-m-d");


/////////////Фильтрация////////////////////////////////////////////////////////
$order_id = htmlspecialchars($order_id);
$order_id = mysql_escape_string($order_id);

$mail_girl = htmlspecialchars($mail_girl);
$mail_girl = mysql_escape_string($mail_girl);

//////////////////////////////////////////////////////////////////////////////

////////////////Загрузка данных заказа////////////////////////////////////////
$zapros_order = "SELECT * FROM orders WHERE order_id='".$order_id."'";

$requirest_order = mysql_query($zapros_order);
while($row_order = mysql_fetch_array($requirest_order)) 
	{
		$user_id = $row_order['user_id'];
		$girl_id = $row_order['girl_id'];
		$user_email = $row_order['user_email'];
		$foto_client = $row_order['foto_client'];
	}
/////////////////////////////////////////////////////////////////////////////


//////////////////////Загрузка данных мужика из базы/////////////////////////
$zapros_client = "SELECT * FROM clients WHERE user_id='".$user_id."'";

$requirest_client = mysql_query($zapros_client);
while($row_client = mysql_fetch_array($requirest_client)) 
	{
		$client_first_name = $row_client['first_name'];
		$client_last_name = $row_client['last_name'];
		$client_avatar = "http://".$_SERVER['SERVER_NAME']."/".$row_client['foto'];
	}
/////////////////////////////////////////////////////////////////////////////

//////////////////////Загрузка данных девушки из базы////////////////////////
$zapros_girl = "SELECT * FROM girls WHERE girl_id='".$girl_id."'";

$requirest_girl = mysql_query($zapros_girl);
while($row_girl = mysql_fetch_array($requirest_girl)) 
	{
		$girl_first_name = $row_girl['first_name'];
		$girl_last_name = $row_girl['last_name'];
		$girl_avatar = "http://".$_SERVER['SERVER_NAME']."/".$row_girl['foto'];
		$girl_email = $row_girl['question45'];
		$girl_country = $row_girl['country'];
		$girl_city = $row_girl['city'];
		
	}
/////////////////////////////////////////////////////////////////////////////

//////////////////Загрузка данных мачмеккера/////////////////////////////////
$zapros_match = "SELECT * FROM matchmakers WHERE login='".$_SESSION['login_match']."'";


$requirest_match = mysql_query($zapros_match);
while($row_match = mysql_fetch_array($requirest_match)) 
	{
	  $match_name = $row_match['name'];
	  $match_email = $row_match['email'];
	}
/////////////////////////////////////////////////////////////////////////////

/////////////////////////Отправка письма//////////////////////////////////////////////////////////////////////

	$email_name = "auto_email_8"; // Название шаблона письма
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
	
	/////Тема///////
	$email_subject  = str_replace("{first_name}", $first_name, $email_subject);
	$email_subject  = str_replace("{user_id}", $user_id, $email_subject);
	$email_subject  = str_replace("{girl_id}", $girl_id, $email_subject);
	$email_subject  = str_replace("{order_id}", $order_id, $email_subject);

	/////Тело///////
	$email_content = str_replace("{first_name}", $first_name, $email_content);
	$email_content = str_replace("{email}", $email_client, $email_content);
	$email_content = str_replace("{girl_avatar}", $girl_avatar, $email_content);
	$email_content = str_replace("{user_id}", $user_id, $email_content);
	$email_content = str_replace("{girl_id}", $girl_id, $email_content);
	$email_content = str_replace("{girl_first_name}", $girl_first_name, $email_content);
	$email_content = str_replace("{girl_country}", $girl_country, $email_content);
	$email_content = str_replace("{girl_city}", $girl_city, $email_content);
	$email_content = str_replace("{order_id}", $order_id, $email_content);
	$email_content = str_replace("{mail_girl}", $mail_girl, $email_content);
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


//////////////////////Вносим изменения в заказ///////////////////////////////
$sql = "UPDATE orders SET mail_girl='".$mail_girl."', status='2', date_end='".$date_end."', match_login_processed='".$_SESSION['login_match']."' WHERE order_id='$order_id'";
$result = mysql_query($sql) or die("<script>alert('Ошибка при записи в таблицу заказов');</script><script>javascript:window.location='../order.php?order_id=".$order_id."'</script>");
/////////////////////////////////////////////////////////////////////////////

/////////////////Перенаправление в анкету////////////////////////////////////
echo	("
			<script>alert('Письмо успешно отпрвленно клиенту. Заказ выполнен');</script><script>javascript:window.location='../order.php?order_id=".$order_id."'</script>
		");
///////////////////////////////////////////////////////
?>

