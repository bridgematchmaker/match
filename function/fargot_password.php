<?php 
include("../connect.php");

if(empty($_POST['email']) or (empty($_POST['g-recaptcha-response'])))
	{ 
		echo("<script>javascript:window.location='../forgot.php'</script>");
		exit();
	} 
	
$email = $_POST['email'];

/////////////Фильтрация///////////////////

$email = htmlspecialchars($email);
$email = mysql_escape_string($email);


//////////Проверка ключа/////////////////////
$result_repeat = mysql_query("SELECT * FROM clients WHERE email_client='$email';");
$num = mysql_num_rows($result_repeat);
	if($num > 0) 
		{ 
			$zapros_id = "SELECT * FROM clients WHERE email_client='$email';";
			$requirest_id = mysql_query($zapros_id);
			while($row = mysql_fetch_array($requirest_id)) 
				{ 
					$recovery_key = md5($row['password']);
					$user_id = $row['user_id'];
					$first_name = $row['first_name'];
				}
		}
	else
		{
			echo("<script>javascript:window.location='../forgot.php'</script>");
			exit();
		}
/////////////////////////////////////////////
	
//////////////////////////////////////////////////////////////////////////////////////////
 

/////////////////////////Отправка письма//////////////////////////////////////////////////////////////////////

	$email_name = "auto_email_9"; // Название шаблона письма
	$email_send_to = $email; // Получатель письма
	$reset_link = "http://".$_SERVER['SERVER_NAME']."/set_password.php?id=".$user_id."&key=".$recovery_key;
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

	include("../mail_config.php");	
	
	//////////////Подстановка макросов////////////////////////
	$email_content = str_replace("{admin_email}", $admin_email, $email_content);
	$email_content = str_replace("{first_name}", $first_name, $email_content);
	$email_content = str_replace("{email}", $email, $email_content);
	$email_content = str_replace("{reset_link}", $reset_link, $email_content);
	$email_content = str_replace("{unsubscribe_link}", $unsubscribe_link, $email_content);
	$email_content = str_replace("{user_id}", $user_id, $email_content);
	//////////////////////////////////////////////////////////

	require '../lib/PHPMailer/PHPMailerAutoload.php';
	$mail = new PHPMailer(); // инициализация класса
	
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

echo("<script>javascript:window.location='../forgot_end.php'</script>");

 ?>