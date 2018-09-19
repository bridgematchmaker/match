<?
session_start();
isset($_SESSION['login_admin']) or die("<script>javascript:window.location='../index.php'</script>");

include ("../../connect.php");
include ("../../lib/image-toolkit/AcImage.php");

if(empty($_POST['login']) or empty($_POST['password']) or empty($_POST['name']) or empty($_POST['email'])) 
	{ 
		echo("
			<script>alert('Заполните все обязательные поля');</script>
			<script>javascript:window.location='../match_add.php'</script>
		");
	exit();
	} 


////////////////Переменные////////////////
$login = $_POST['login'];
$password = $_POST['password'];
$name = $_POST['name'];
$email = $_POST['email'];
$skype = $_POST['skype'];
$age = $_POST['age'];
$country = $_POST['country'];
$description = $_POST['description'];
$phone = $_POST['phone'];
$time = $_POST['time'];
$rating = $_POST['rating'];
$meetings = $_POST['meetings'];
$answers = $_POST['answers'];
$status = $_POST['status'];
//////////////////////////////////////////


/////////////Фильтрация///////////////////
$login = htmlspecialchars($login);
$login = mysql_escape_string($login);

$password = htmlspecialchars($password);
$password = mysql_escape_string($password);

$name = htmlspecialchars($name);
$name = mysql_escape_string($name);

$email = htmlspecialchars($email);
$email = mysql_escape_string($email);

$skype = htmlspecialchars($skype);
$skype = mysql_escape_string($skype);

$age = htmlspecialchars($age);
$age = mysql_escape_string($age);

$phone = htmlspecialchars($phone);
$phone = mysql_escape_string($phone);

$time = htmlspecialchars($time);
$time = mysql_escape_string($time);

$country = htmlspecialchars($country);
$country = mysql_escape_string($country);

$description = htmlspecialchars($description);
$description = mysql_escape_string($description);

$answers = htmlspecialchars($answers);
$answers = mysql_escape_string($answers);

$meetings = htmlspecialchars($meetings);
$meetings = mysql_escape_string($meetings);

$rating = htmlspecialchars($rating);
$rating = mysql_escape_string($rating);

$status = htmlspecialchars($status);
$status = mysql_escape_string($status);
/////////////////////////////////////////////

//////////Проверка на повторы в базе/////////

$result_repeat_1 = mysql_query("SELECT * FROM matchmakers WHERE login='$login';");
$num_1 = mysql_num_rows($result_repeat_1);
if($num_1 > 0) 
	{ 
		echo("
			<script>alert('Пользователь с таким логином уже существует');</script>
			<script>javascript:window.location='../match_add.php'</script>
		");
	exit();
	} 
$result_repeat_2 = mysql_query("SELECT * FROM matchmakers WHERE email='$email';");

$num_2 = mysql_num_rows($result_repeat_2);
if($num_2 > 0) 
	{ 
		echo("
			<script>alert('Пользователь с таким E-Mail уже существует');</script>
			<script>javascript:window.location='../match_add.php'</script>
		");
	exit();
	} 

/////////////////////////////////////////////

///////////////MD5 PASSWORD//////////////////
$password_md5 = md5($password);
/////////////////////////////////////////////


function can_upload($file){
	// если имя пустое, значит файл не выбран
    if($file['name'] == '')
		return "<script>alert('No file');</script><script>javascript:window.location='../match_add.php'</script>";
	
	/* если размер файла 0, значит его не пропустили настройки 
	сервера из-за того, что он слишком большой */
	if($file['size'] == 0)
		return "<script>alert('Over max size');</script><script>javascript:window.location='../match_add.php'</script>";
	
	// разбиваем имя файла по точке и получаем массив
	$getMime = explode('.', $file['name']);
	// нас интересует последний элемент массива - расширение
	$mime = strtolower(end($getMime));
	// объявим массив допустимых расширений
	$types = array('jpg', 'png', 'gif', 'bmp', 'jpeg');
	
	// если расширение не входит в список допустимых - return
	if(!in_array($mime, $types))
		return "<script>alert('Error type');</script><script>javascript:window.location='../match_add.php'</script>";
	
	return true;
}
  
function make_upload($file){	
	// формируем уникальное имя картинки: случайное число и name
	$name_array = explode(".",$file['name']);
	$name_type = array_pop($name_array);
	$name_foto = time().".".$name_type;
	copy($file['tmp_name'], '../../uploads/match/' . $name_foto);

	////////////////////////Ресайз фото////////////////////////
	$img = AcImage::createImage('../../uploads/match/' . $name_foto);
	$img->cropCenter('4pr', '4pr'); // Manual - true-coder.ru/php/toolkit-dlya-resajza-i-kropa-izobrazhenij-na-php.html
	unlink('../../uploads/match/' . $name_foto);
	$img->save('../../uploads/match/' . $name_foto);
	///////////////////////////////////////////////////////////

	$foto = 'uploads/match/'.$name_foto;
	/////////////SQL запрос//////////////////////
	$sql = "INSERT INTO matchmakers ( login, pass, name, email, skype, age, country, description, foto, time, phone, rating, meetings, answers, status) VALUES ('".$GLOBALS['login']."', '".$GLOBALS['password_md5']."', '".$GLOBALS['name']."', '".$GLOBALS['email']."', '".$GLOBALS['skype']."', '".$GLOBALS['age']."', '".$GLOBALS['age']."', '".$GLOBALS['description']."', '$foto', '".$GLOBALS['time']."', '".$GLOBALS['phone']."', '".$GLOBALS['rating']."', '".$GLOBALS['meetings']."', '".$GLOBALS['answers']."', '".$GLOBALS['status']."')";
	/////////////////////////////////////////////
	$result = mysql_query($sql) or die("Ошибка при записи в базу");
}


if($_FILES['file']['name'] <> '')
	{
		// проверяем, можно ли загружать изображение
		$check = can_upload($_FILES['file']);
    
		if($check === true)
			{
				// загружаем изображение на сервер
				make_upload($_FILES['file']);	
				///////////загружем id нового мачмеккера//////////
				$zapros = "SELECT * FROM matchmakers WHERE login='".$login."'";
				$requirest = mysql_query($zapros);
				while($row = mysql_fetch_array($requirest)) { $match_id = $row['id']; }
				///////////////////////////////////////////
				echo "<script>alert('Профиль успешно создан');</script><script>javascript:window.location='../match_profile.php?match_id=".$match_id."'</script>";
			}
		else
			{
				// выводим сообщение об ошибке
				echo "<strong>$check</strong>";  
			}
		
    }
else
	{
		$foto = 'uploads/match/avatar.jpg';
		/////////////SQL запрос//////////////////////
		$sql = "INSERT INTO matchmakers ( login, pass, name, email, skype, age, country, description, foto, time, phone, rating, meetings, answers, status) VALUES ('$login', '$password_md5', '$name', '$email', '$skype', '$age', '$country', '$description', '$foto', '$time', '$phone', '$rating', '$meetings', '$answers', '$status')";
		/////////////////////////////////////////////
		$result = mysql_query($sql) or die("Ошибка при записи в базу");
		///////////загружем id нового мачмеккера//////////
		$zapros = "SELECT * FROM matchmakers WHERE login='".$login."'";
		$requirest = mysql_query($zapros);
		while($row = mysql_fetch_array($requirest)) { $match_id = $row['id']; }
		///////////////////////////////////////////
		echo "<script>alert('Профиль успешно создан');</script><script>javascript:window.location='../match_profile.php?match_id=".$match_id."'</script>";			
	}

	
?>