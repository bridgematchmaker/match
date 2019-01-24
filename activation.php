<?php 
include("./connect.php");


if(empty($_GET['id']) or empty($_GET['key'])) 
	{ 
		echo("
			<script>javascript:window.location='./login.php?logout'</script>
		");
	exit();
	} 
	
$id = $_GET['id'];
$key = $_GET['key'];

/////////////Фильтрация///////////////////
$id = htmlspecialchars($id);
$id = mysql_escape_string($id);
$id = preg_replace("/[^0-9]/", '', $id);

$key = htmlspecialchars($key);
$key = mysql_escape_string($key);


//////////Проверка ключа/////////////////////
$result_repeat = mysql_query("SELECT * FROM clients WHERE user_id='$id';");
$num = mysql_num_rows($result_repeat);
	if($num > 0) 
		{ 
			$zapros_id = "SELECT * FROM clients WHERE user_id='$id'";
			$requirest_id = mysql_query($zapros_id);
			while($row = mysql_fetch_array($requirest_id)) 
				{ 
					$valid_key = md5($row['password']);
					$status_system = $row['status_system'];
					$first_name = $row['first_name'];
					$last_name = $row['last_name'];
					$email_client = $row['email_client'];
				}
			if(($key == $valid_key) AND ($status_system == "0")) 
				{
					$validation = "1";
				}
		} 
/////////////////////////////////////////////

////////////////////////Запись в базу и отправка письма///////////////////////////////////
if($validation == "1")
	{
		/////////////////////////Отправка письма//////////////////////////////////////////////////////////////////////
		
			$email_name = "auto_email_1"; // Название шаблона письма
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

			include("./mail_config.php");	
			
			//////////////Подстановка макросов////////////////////////
			$email_content = str_replace("{admin_email}", $admin_email, $email_content);
			$email_content = str_replace("{first_name}", $first_name, $email_content);
			$email_content = str_replace("{email}", $email_client, $email_content);
			$email_content = str_replace("{unsubscribe_link}", $unsubscribe_link, $email_content);
			//////////////////////////////////////////////////////////

			require './lib/PHPMailer/PHPMailerAutoload.php';
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
		
		
		$sql = "UPDATE clients SET status_system='1', status_email='1' WHERE user_id='$id'";
		$result = mysql_query($sql) or die("<script>alert('Error DB');</script><script>javascript:window.location='./login.php'</script>");
		echo "<script>alert('Profile is activated');</script><script>javascript:window.location='./member/choose_service.php'</script>";	
	}
else
	{
		echo "<script>alert('Invalid activation key');</script><script>javascript:window.location='./member/activation_profile.php'</script>";	
	}
//////////////////////////////////////////////////////////////////////////////////////////
 
?>