<?
session_start();
isset($_SESSION['email_client']) or die("<script>javascript:window.location='../../login.php'</script>");

include ("../../connect.php");
include ("../../lib/image-toolkit/AcImage.php");

////////////////Переменные////////////////

$date_add = date("Y-m-d G:i:s");
$user_email = $_SESSION['email_client'];
$user_id = $_POST['user_id'];
$matchmaker_login = $_POST['matchmaker_login'];
$question = $_POST['question'];

/////////////Фильтрация///////////////////


$user_email = htmlspecialchars($user_email);
$user_email = mysql_escape_string($user_email);

$user_id = htmlspecialchars($user_id);
$user_id = mysql_escape_string($user_id);

$matchmaker_login = htmlspecialchars($matchmaker_login);
$matchmaker_login = mysql_escape_string($matchmaker_login);

$question = htmlspecialchars($question);
$question = mysql_escape_string($question);


///////////////////////////////////////////


/////////////////////Проверяем не пустое ли сообщение///////////////////////
if($question == "")
	{
		echo("<script>javascript:window.location='../msg.php?type=1&msg_id=2&redirect=99&load_url=".$_SERVER['HTTP_REFERER']."'</script>");
		exit();
	}
////////////////////////////////////////////////////////////////////////////


function can_upload($file){
	// если имя пустое, значит файл не выбран
    if($file['name'] == '')
		return "<script>alert('No file');</script><script>javascript:window.location='".$_SERVER['HTTP_REFERER']."'</script>";
	
	// если размер файла 0, значит его не пропустили настройки сервера из-за того, что он слишком большой 
	
	if($file['size'] == 0)
		return "<script>alert('Over max size photo');</script><script>javascript:window.location='".$_SERVER['HTTP_REFERER']."'</script>";
	
	// разбиваем имя файла по точке и получаем массив
	$getMime = explode('.', $file['name']);
	// нас интересует последний элемент массива - расширение
	$mime = strtolower(end($getMime));
	// объявим массив допустимых расширений
	$types = array('jpg', 'png', 'gif', 'bmp', 'jpeg');
	
	// если расширение не входит в список допустимых - return
	if(!in_array($mime, $types))
		return "<script>alert('Error photo type');</script><script>javascript:window.location='".$_SERVER['HTTP_REFERER']."'</script>";
	
	return true;
}

function make_upload($file){	
	// формируем уникальное имя картинки: случайное число и name
	$name_array = explode(".",$file['name']);
	$name_type = array_pop($name_array);
	$name_foto = time().".".$name_type;
	copy($file['tmp_name'], '../../uploads/client/ticket/' . $name_foto);

	////////////////////////Ресайз фото////////////////////////
	$img = AcImage::createImage('../../uploads/client/ticket/' . $name_foto);
	$img->resizeByWidth(400);
	unlink('../../uploads/client/ticket/' . $name_foto);
	$img->save('../../uploads/client/ticket/' . $name_foto);
	///////////////////////////////////////////////////////////

	$foto = 'uploads/client/ticket/'.$name_foto;
	/////////////SQL запрос//////////////////////
	$sql_ticket = "INSERT INTO tickets (date_add, user_id, user_email, user_foto, matchmaker_login, question, status) VALUES ('".$GLOBALS['date_add']."', '".$GLOBALS['user_id']."', '".$GLOBALS['user_email']."', '$foto', '".$GLOBALS['matchmaker_login']."', '".$GLOBALS['question']."', '0')";
	$result_ticket = mysql_query($sql_ticket) or die("Ошибка при записи в таблицу tickets c фото");
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
		/////////////SQL запрос//////////////////////
		$sql_ticket = "INSERT INTO tickets (date_add, user_id, user_email, matchmaker_login, question, status) VALUES ('$date_add', '$user_id', '$user_email', '$matchmaker_login', '$question', '0')";
		$result_ticket = mysql_query($sql_ticket) or die("Ошибка при записи в таблицу tickets без фото");
		/////////////////////////////////////////////		
	}
////////////////////////////////////////////////////////////////////////////////////////////////////////////// 



/////////////////Перенаправление в анкету///////////////
echo("<script>javascript:window.location='../msg.php?type=0&msg_id=7&redirect=99&load_url=".$_SERVER['HTTP_REFERER']."'</script>");
///////////////////////////////////////////////////////

?>