<?
session_start();
isset($_SESSION['email_client']) or die("<script>javascript:window.location='../../login.php'</script>");

include ("../../connect.php");

include ("../../lib/image-toolkit/AcImage.php");

if(empty($_POST['first_name']) or empty($_POST['last_name']) or empty($_POST['birthday']) or empty($_POST['country']) or empty($_POST['email_client']) or empty($_POST['password']) or empty($_POST['telefon'])) 
	{ 
		echo("
			<script>alert('Fill in all required fields');</script>
			<script>javascript:window.location='../my_profile.php'</script>
		");
	exit();
	} 


////////////////Переменные////////////////
$user_id = $_POST['user_id'];
$first_name = $_POST['first_name'];
$last_name = $_POST['last_name'];
$country = $_POST['country'];
$birthday = $_POST['birthday'];
$email_client = $_POST['email_client'];
$password = $_POST['password'];
$telefon = $_POST['telefon'];


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
$zapros = "SELECT * FROM clients WHERE user_id='".$user_id."'";
$requirest = mysql_query($zapros);
while($row = mysql_fetch_array($requirest)) 
	{
		$old_email = $row['email_client'];
		$old_password = $row['password'];
	}
if($old_email <> $email_client)
	{
		$result_repeat = mysql_query("SELECT * FROM clients WHERE email_client='$email_client';");
		$num = mysql_num_rows($result_repeat);
		if($num > 0) 
			{ 
				echo("
						<script>alert('User with such E-Mail already exists');</script>
						<script>javascript:window.location='../my_profile.php'</script>
				");
				exit();
			}
		else
			{
				$status_logout = "1";
			}
	}
if($old_password == $password)
	{
		$password_set = $password;
	}
else
	{
		$password_set = $password_md5;
	}
/////////////////////////////////////////////



function can_upload($file){
	// если имя пустое, значит файл не выбран
    if($file['name'] == '')
		return "<script>alert('No file');</script><script>javascript:window.location='../registration.php'</script>";
	
	/* если размер файла 0, значит его не пропустили настройки 
	сервера из-за того, что он слишком большой */
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
	copy($file['tmp_name'], '../../uploads/client/' . $name_foto);

	////////////////////////Ресайз фото////////////////////////
	$img = AcImage::createImage('../../uploads/client/' . $name_foto);
	$img->cropCenter('4pr', '4pr'); // Manual - true-coder.ru/php/toolkit-dlya-resajza-i-kropa-izobrazhenij-na-php.html
	$img->resize(250, 250);
	unlink('../../uploads/client/' . $name_foto);
	$img->save('../../uploads/client/' . $name_foto);
	///////////////////////////////////////////////////////////

	$foto = 'uploads/client/'.$name_foto;
	/////////////SQL запрос//////////////////////
	$sql = "UPDATE clients SET email_client='".$GLOBALS['email_client']."', password='".$GLOBALS['password_set']."', first_name='".$GLOBALS['first_name']."', last_name='".$GLOBALS['last_name']."', country='".$GLOBALS['country']."', telefon='".$GLOBALS['telefon']."', foto='$foto', birthday='".$GLOBALS['birthday']."' WHERE user_id='".$GLOBALS['user_id']."'";
	$result = mysql_query($sql) or die("Ошибка при записи в базу client c фото");
	/////////////////////////////////////////////
	
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
		$sql = "UPDATE clients SET email_client='$email_client', password='$password_set', first_name='$first_name', last_name='$last_name', country='$country', telefon='$telefon', birthday='$birthday' WHERE user_id='$user_id'";
		$result = mysql_query($sql) or die("Ошибка при записи в таблицу clients без фото");
		/////////////////////////////////////////////		
	}
////////////////////////////////////////////////////////////////////////////////////////////////////////////// 

///////////////////////Создаем запись в таблице QUESTIONS/////////////////////////////////////////////////////
$sql_questions = "UPDATE questions SET question1='$question1', question2='$question2', question3='$question3', question4='$question4', question5='$question5', question6='$question6', question7='$question7', question8='$question8', question9='$question9', question10='$question10', question11='$question11', question12='$question12', question13='$question13', question14='$question14', question15='$question15'  WHERE client_id='$user_id'";
$result_questions = mysql_query($sql_questions) or die("Ошибка при записи в таблицу questions");
//////////////////////////////////////////////////////////////////////////////////////////////////////////////

if($status_logout == "1")
	{
		echo "<script>javascript:window.location='../../login.php?logout'</script>";	
	}
else
	{
		echo "<script>javascript:window.location='../index.php'</script>";
	}

?>