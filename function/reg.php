<?php 
include("../connect.php");
include ("../lib/image-toolkit/AcImage.php");

if(empty($_POST['first_name']) or empty($_POST['last_name']) or empty($_POST['birthday']) or empty($_POST['country']) or empty($_POST['email_client']) or empty($_POST['password']) or empty($_POST['telefon'])) 
	{ 
		echo("
			<script>alert('Fill in all required fields');</script>
			<script>javascript:window.location='../registration.php'</script>
		");
	exit();
	} 


////////////////Переменные////////////////
$first_name = $_POST['first_name'];
$last_name = $_POST['last_name'];
$country = $_POST['country'];
$birthday = $_POST['birthday'];
$email_client = $_POST['email_client'];
$password = $_POST['password'];
$telefon = $_POST['telefon'];
$utm_source = $_POST['utm_source'];

$date_add = date("Y-m-d");
$date_tarif_set = date("Y-m-d");
$status_tarif = "0";
$tarif_name = "free";

$question1 = $_POST['question1'];
$question2 = $_POST['question2'];
$question3 = $_POST['question3'];
$question4 = $_POST['question4'];
$question5 = $_POST['question5'];
$question6 = $_POST['question6'];
$question7 = $_POST['question7'];
$question8 = $_POST['question8'];
$question9 = $_POST['question9'];
$question10 = $_POST['question10'];
$question11 = $_POST['question11'];
$question12 = $_POST['question12'];
$question13 = $_POST['question13'];
$question14 = $_POST['question14'];
$question15 = $_POST['question15'];
$question16 = $_POST['question16'];
$question51 = $_POST['question51'];

$languages_speak_arr = $_POST['languages_speak_arr'];
$Count_languages_speak_arr = count($languages_speak_arr);
for($i=0; $i < $Count_languages_speak_arr; $i++)
  {
     $question50 = $languages_speak_arr[$i]."; ".$question50;
  }


//////////////////////////////////////////

/////////////Фильтрация///////////////////
$first_name = htmlspecialchars($first_name);
$first_name = mysql_escape_string($first_name);

$last_name = htmlspecialchars($last_name);
$last_name = mysql_escape_string($last_name);

$country = htmlspecialchars($country);
$country = mysql_escape_string($country);

$birthday = htmlspecialchars($birthday);
$birthday = mysql_escape_string($birthday);

$email_client = htmlspecialchars($email_client);
$email_client = mysql_escape_string($email_client);

$password = htmlspecialchars($password);
$password = mysql_escape_string($password);
$password_md5 = md5($password);

$telefon = htmlspecialchars($telefon);
$telefon = mysql_escape_string($telefon);

$utm_source = htmlspecialchars($utm_source);
$utm_source = mysql_escape_string($utm_source);

$question1 = htmlspecialchars($question1);
$question1 = mysql_escape_string($question1);

$question2 = htmlspecialchars($question2);
$question2 = mysql_escape_string($question2);

$question3 = htmlspecialchars($question3);
$question3 = mysql_escape_string($question3);

$question4 = htmlspecialchars($question4);
$question4 = mysql_escape_string($question4);

$question5 = htmlspecialchars($question5);
$question5 = mysql_escape_string($question5);

$question6 = htmlspecialchars($question6);
$question6 = mysql_escape_string($question6);

$question7 = htmlspecialchars($question7);
$question7 = mysql_escape_string($question7);

$question8 = htmlspecialchars($question8);
$question8 = mysql_escape_string($question8);

$question9 = htmlspecialchars($question9);
$question9 = mysql_escape_string($question9);

$question10 = htmlspecialchars($question10);
$question10 = mysql_escape_string($question10);

$question11 = htmlspecialchars($question11);
$question11 = mysql_escape_string($question11);

$question12 = htmlspecialchars($question12);
$question12 = mysql_escape_string($question12);

$question13 = htmlspecialchars($question13);
$question13 = mysql_escape_string($question13);

$question14 = htmlspecialchars($question14);
$question14 = mysql_escape_string($question14);

$question15 = htmlspecialchars($question15);
$question15 = mysql_escape_string($question15);

$question16 = htmlspecialchars($question16);
$question16 = mysql_escape_string($question16);

$question51 = htmlspecialchars($question51);
$question51 = mysql_escape_string($question51);


//////////Проверка на повторы в базе/////////
$result_repeat = mysql_query("SELECT * FROM clients WHERE email_client='$email_client';");
$num = mysql_num_rows($result_repeat);
	if($num > 0) 
		{ 
			echo("
					<script>alert('User with such E-Mail already exists');</script>
					<script>javascript:window.location='../registration.php'</script>
				");
			exit();
		} 
/////////////////////////////////////////////


function can_upload($file){
	// если имя пустое, значит файл не выбран
    if($file['name'] == '')
		return "<script>alert('No file');</script><script>javascript:window.location='../registration.php'</script>";
	
	// если размер файла 0, значит его не пропустили настройки сервера из-за того, что он слишком большой 
	
	if($file['size'] == 0)
		return "<script>alert('Over max size photo');</script><script>javascript:window.location='../registration.php'</script>";
	
	// разбиваем имя файла по точке и получаем массив
	$getMime = explode('.', $file['name']);
	// нас интересует последний элемент массива - расширение
	$mime = strtolower(end($getMime));
	// объявим массив допустимых расширений
	$types = array('jpg', 'png', 'gif', 'bmp', 'jpeg');
	
	// если расширение не входит в список допустимых - return
	if(!in_array($mime, $types))
		return "<script>alert('Error avatar type');</script><script>javascript:window.location='../registration.php'</script>";
	
	return true;
}

function make_upload($file){	
	// формируем уникальное имя картинки: случайное число и name
	$name_array = explode(".",$file['name']);
	$name_type = array_pop($name_array);
	$name_foto = time().".".$name_type;
	copy($file['tmp_name'], '../uploads/client/' . $name_foto);

	////////////////////////Ресайз фото////////////////////////
	$img = AcImage::createImage('../uploads/client/' . $name_foto);
	$img->cropCenter('4pr', '4pr'); // Manual - true-coder.ru/php/toolkit-dlya-resajza-i-kropa-izobrazhenij-na-php.html
	$img->resize(250, 250);
	unlink('../uploads/client/' . $name_foto);
	$img->save('../uploads/client/' . $name_foto);
	///////////////////////////////////////////////////////////

	$foto = 'uploads/client/'.$name_foto;
	/////////////SQL запрос//////////////////////
	$sql = "INSERT INTO clients (email_client, password, first_name, last_name, country, telefon, foto, status_tarif, birthday, date_reg, date_tarif_set, utm_source) VALUES ('".$GLOBALS['email_client']."', '".$GLOBALS['password_md5']."', '".$GLOBALS['first_name']."', '".$GLOBALS['last_name']."', '".$GLOBALS['country']."', '".$GLOBALS['telefon']."', '$foto', '".$GLOBALS['status_tarif']."', '".$GLOBALS['birthday']."', '".$GLOBALS['date_add']."', '".$GLOBALS['date_tarif_set']."', '".$GLOBALS['utm_source']."')";
	/////////////////////////////////////////////
	$result = mysql_query($sql) or die("Ошибка при записи в базу client c фото");
}


//////////////////////////////////////Проверяем добавил ли фото клиент////////////////////////////////////////
if($_FILES['file']['name'] <> '')
	{
		// проверяем, можно ли загружать изображение
		$check = can_upload($_FILES['file']);
    
		if($check === true)
			{
				// загружаем изображение на сервер и добавляем пользователя в базу
				make_upload($_FILES['file']);	
			}
		else
			{
				// выводим сообщение об ошибке файла
				echo "<strong>$check</strong>"; 
				exit();
			}
		
    }
else
	{
		$foto = 'uploads/client/avatar.jpg';
		/////////////SQL запрос//////////////////////
		$sql = "INSERT INTO clients (email_client, password, first_name, last_name, country, telefon, foto, status_tarif, birthday, date_reg, date_tarif_set, utm_source) VALUES ('$email_client', '$password_md5', '$first_name', '$last_name', '$country', '$telefon', '$foto', '$status_tarif', '$birthday', '$date_add', '$date_tarif_set', '$utm_source')";
		$result = mysql_query($sql) or die("Ошибка при записи в таблицу clients без фото");
		/////////////////////////////////////////////		
	}
////////////////////////////////////////////////////////////////////////////////////////////////////////////// 

///////////////////////////////Загружем id нового клиента/////////////////////////////////////////////////////
$zapros_id = "SELECT * FROM clients WHERE email_client='".$email_client."'";
$requirest_id = mysql_query($zapros_id);
while($row = mysql_fetch_array($requirest_id)) { $user_id = $row['user_id']; }
//////////////////////////////////////////////////////////////////////////////////////////////////////////////

///////////////////////Создаем запись в таблице QUESTIONS/////////////////////////////////////////////////////
$sql_questions = "INSERT INTO questions (client_id, question1, question2, question3, question4, question5, question6, question7, question8, question9, question10, question11, question12, question13, question14, question15, question16, question50, question51) VALUES ('$user_id', '$question1', '$question2', '$question3', '$question4', '$question5', '$question6', '$question7', '$question8', '$question9', '$question10', '$question11', '$question12', '$question13', '$question14', '$question15', '$question16', '$question50', '$question51')";
$result_questions = mysql_query($sql_questions) or die("Ошибка при записи в таблицу questions");
//////////////////////////////////////////////////////////////////////////////////////////////////////////////

//////////////////////Загружаем квоты по тарифу///////////////////////////////////////////////////////////////
$zapros_tarif = "SELECT * FROM setting_tarif WHERE tarif_name='$tarif_name'";
$requirest_tarif = mysql_query($zapros_tarif);
while($row_tarif = mysql_fetch_array($requirest_tarif)) 
	{
		$letters = $row_tarif['tarif_letters'];
		$skypes = $row_tarif['tarif_skypes'];
		$gifts = $row_tarif['tarif_gifts'];
		$advice_match = $row_tarif['tarif_advice_match'];
		$assessment_match = $row_tarif['tarif_assessment_match'];
	}
//////////////////////////////////////////////////////////////////////////////////////////////////////////////

///////////////////////Создаем запись в таблице clients_services//////////////////////////////////////////////
$sql_clients_services = "INSERT INTO clients_services (client_id, letters, skypes, gifts, advice_match, assessment_match) VALUES ('$user_id', '$letters', '$skypes', '$gifts', '$advice_match', '$assessment_match')";
$result_clients_services = mysql_query($sql_clients_services) or die("Ошибка при записи в таблицу clients_services");
//////////////////////////////////////////////////////////////////////////////////////////////////////////////


/////////////////////////Отправка письма//////////////////////////////////////////////////////////////////////

	$email_name = "auto_email_0"; // Название шаблона письма
	$email_send_to = $email_client; // Получатель письма
	$activation_key = md5($password_md5); // Код активации
	$activation_link = "http://".$_SERVER['SERVER_NAME']."/activation.php?id=".$user_id."&key=".$activation_key;
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
	$email_content = str_replace("{email}", $email_client, $email_content);
	$email_content = str_replace("{activation_key}", $activation_key, $email_content);
	$email_content = str_replace("{activation_link}", $activation_link, $email_content);
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

////////////////////////Редирект если все прошло успешно//////////////////////////////////////////////////////
echo "
		<form id='formLogin' action='../success_register.php' method='post'>
			<input name='login' type='hidden' value='".$email_client."'>
			<input name='pass' type='hidden' value='".$password."'>
		</form>
		<script>document.getElementById('formLogin').submit();</script>
	";	
//////////////////////////////////////////////////////////////////////////////////////////////////////////////
 
 ?>