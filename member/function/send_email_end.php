<?
session_start();
isset($_SESSION['email_client']) or die("<script>javascript:window.location='../../login.php'</script>");

include ("../../connect.php");
include ("../../lib/image-toolkit/AcImage.php");

////////////////Переменные////////////////

$date_add = date("Y-m-d");
$user_email = $_SESSION['email_client'];
$girl_id = $_POST['girl_id'];
$tarif_day = $_POST['tarif_day'];
$matchmaker_login = $_POST['matchmaker_login'];
$mail_text = $_POST['mail_text'];

/////////////Фильтрация///////////////////


$girl_id = htmlspecialchars($girl_id);
$girl_id = mysql_escape_string($girl_id);

$tarif_day = htmlspecialchars($tarif_day);
$tarif_day = mysql_escape_string($tarif_day);

$matchmaker_login = htmlspecialchars($matchmaker_login);
$matchmaker_login = mysql_escape_string($matchmaker_login);

$mail_text = htmlspecialchars($mail_text);
$mail_text = mysql_escape_string($mail_text);



///////////////////////////////////////////

$zapros_client = "SELECT * FROM clients WHERE email_client='".$_SESSION['email_client']."'";
//////////////////////////////Загрузка данных из базы////////////////////////
$requirest_client = mysql_query($zapros_client);
while($row_client = mysql_fetch_array($requirest_client)) 
	{
		$user_id = $row_client['user_id'];
	}


$description1 = "Клиент ID:".$user_id." отправил E-Mail для девушки ID:".$girl_id;
////////////Загружаем баланс клиента/////////////////////////////////////////	
$zapros_balance = "SELECT * FROM clients_services WHERE client_id='".$user_id."'";	
$requirest_balance = mysql_query($zapros_balance);
while($row_balance = mysql_fetch_array($requirest_balance)) 
	{
		$letters = $row_balance['letters'];
	}

///////////////Проверяем хватает ли кредитов для отправки////////////////////////////
if($letters < 1)
	{
		echo("<script>javascript:window.location='../msg.php?type=1&msg_id=1&redirect=0'</script>");
		exit();
	}
/////////////////////////////////////////////////////////////////////////////////////

///////////////Проверяем назначен ли мачмеккер///////////////////////////////////////
if($matchmaker_login == "None")
	{
		echo("<script>javascript:window.location='../msg.php?type=1&msg_id=6&redirect=0'</script>");
		exit();
	}
/////////////////////////////////////////////////////////////////////////////////////

///////////////Проверяем количество дней в тарифном плане////////////////////////////
if($tarif_day < 1)
	{
		echo("<script>javascript:window.location='../msg.php?type=1&msg_id=5&redirect=0'</script>");
		exit();
	}
/////////////////////////////////////////////////////////////////////////////////////

////////////////////Проверка анкеты девушки на существование///////////////////////////
$result_repeat = mysql_query("SELECT * FROM girls WHERE girl_id='$girl_id';");
$num = mysql_num_rows($result_repeat);
if($num !== 1) 
	{ 
		echo("
			<script>javascript:window.location='../msg.php?type=1&msg_id=3&redirect=0'</script>
		");
		exit();
	} 
///////////////////////////////////////////////////////////////////////////////////////

/////////////////Загружаем данные анкеты девушки///////////////////////////////////////
include("./girl_bd.php");
///////////////////////////////////////////////////////////////////////////////////////

/////////////////Проверяем доступность профиля девушки для клиента/////////////////////

$result_access = mysql_query("SELECT * FROM clients_girl WHERE girl_id='$girl_id' AND user_id='$user_id';");
$num_access = mysql_num_rows($result_access);
if($num_access !== 1) 
	{ 
		if($girl_gallery_status <> "1")
		{
				echo("
					<script>javascript:window.location='../msg.php?type=1&msg_id=4&redirect=0'</script>
					");
				exit();
		}
	} 

///////////////////////////////////////////////////////////////////////////////////////

$letters--; // Уменшаем кредиты




/////////////////////Проверяем не пустое ли сообщение///////////////////////
if($mail_text == "")
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
	copy($file['tmp_name'], '../../uploads/client/email/' . $name_foto);

	////////////////////////Ресайз фото////////////////////////
	$img = AcImage::createImage('../../uploads/client/email/' . $name_foto);
	$img->resizeByWidth(400);
	unlink('../../uploads/client/email/' . $name_foto);
	$img->save('../../uploads/client/email/' . $name_foto);
	///////////////////////////////////////////////////////////

	$foto = 'uploads/client/email/'.$name_foto;
	/////////////SQL запрос//////////////////////
	$sql_order = "INSERT INTO orders (user_id, user_email, girl_id, type, description1, mail_client, foto_client, date_add, status) VALUES ('".$GLOBALS['user_id']."', '".$GLOBALS['user_email']."', '".$GLOBALS['girl_id']."', '0', '".$GLOBALS['description1']."', '".$GLOBALS['mail_text']."', '$foto', '".$GLOBALS['date_add']."', '0')";
	$result_order = mysql_query($sql_order) or die("Ошибка при записи в таблицу order c фото");
	$sql_balance = "UPDATE clients_services SET letters='".$GLOBALS['letters']."' WHERE client_id='".$GLOBALS['user_id']."'";
	$result_balance = mysql_query($sql_balance) or die("Ошибка при записи в таблицу balance c фото");
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
		$sql_order = "INSERT INTO orders (user_id, user_email, girl_id, type, description1, mail_client, date_add, status) VALUES ('$user_id', '$user_email', '$girl_id', '0', '$description1', '$mail_text', '$date_add', '0')";
		$result_order = mysql_query($sql_order) or die("Ошибка при записи в таблицу order без фото");
		$sql_balance = "UPDATE clients_services SET letters='".$letters."' WHERE client_id='".$user_id."'";
		$result_balance = mysql_query($sql_balance) or die("Ошибка при записи в таблицу balance без фото");
		/////////////////////////////////////////////		
	}
////////////////////////////////////////////////////////////////////////////////////////////////////////////// 



/////////////////Перенаправление в анкету///////////////
echo	("
			<script>javascript:window.location='../msg.php?type=0&msg_id=0&redirect=0'</script>
		");
///////////////////////////////////////////////////////

?>