<?
session_start();
isset($_SESSION['email_client']) or die("<script>javascript:window.location='../../login.php'</script>");

include ("../../connect.php");
include ("../../lib/image-toolkit/AcImage.php");

////////////////Переменные////////////////

$date_add = date("Y-m-d");
$date_skype = $_POST['date_skype'];
$time_skype = $_POST['time_skype'];
$user_email = $_SESSION['email_client'];
$user_skype = $_POST['user_skype'];
$girl_id = $_POST['girl_id'];
$tarif_day = $_POST['tarif_day'];
$matchmaker_login = $_POST['matchmaker_login'];
$description2 = $_POST['description2'];

/////////////Фильтрация///////////////////


$girl_id = htmlspecialchars($girl_id);
$girl_id = mysql_escape_string($girl_id);

$tarif_day = htmlspecialchars($tarif_day);
$tarif_day = mysql_escape_string($tarif_day);

$matchmaker_login = htmlspecialchars($matchmaker_login);
$matchmaker_login = mysql_escape_string($matchmaker_login);

$description2 = htmlspecialchars($description2);
$description2 = mysql_escape_string($description2);

$date_skype = htmlspecialchars($date_skype);
$date_skype = mysql_escape_string($date_skype);

$time_skype = htmlspecialchars($time_skype);
$time_skype = mysql_escape_string($time_skype);

$user_skype = htmlspecialchars($user_skype);
$user_skype = mysql_escape_string($user_skype);

$skype_time = $date_skype . ' ' . $time_skype;

///////////////////////////////////////////

$zapros_client = "SELECT * FROM clients WHERE email_client='".$_SESSION['email_client']."'";
//////////////////////////////Загрузка данных из базы////////////////////////
$requirest_client = mysql_query($zapros_client);
while($row_client = mysql_fetch_array($requirest_client)) 
	{
		$user_id = $row_client['user_id'];
	}


$description1 = "Клиент ID:".$user_id." заказал Skype для девушки ID:".$girl_id;


////////////////////Проверка не занято ли это время////////////////////////////////////
$result_repeat = mysql_query("SELECT * FROM orders WHERE user_id='$user_id' AND status='1' AND skype_time='$skype_time';");
$num = mysql_num_rows($result_repeat);
if($num > 0) 
	{ 
		echo("
			<script>javascript:window.location='../msg.php?type=1&msg_id=8&redirect=0'</script>
		");
		exit();
	} 
///////////////////////////////////////////////////////////////////////////////////////

////////////Загружаем баланс клиента/////////////////////////////////////////	
$zapros_balance = "SELECT * FROM clients_services WHERE client_id='".$user_id."'";	
$requirest_balance = mysql_query($zapros_balance);
while($row_balance = mysql_fetch_array($requirest_balance)) 
	{
		$skypes = $row_balance['skypes'];
	}

///////////////Проверяем хватает ли кредитов для отправки////////////////////////////
if($skypes < 1)
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

$skypes--; // Уменшаем кредиты


/////////////SQL запрос//////////////////////
$sql_order = "INSERT INTO orders (user_id, user_email, user_skype, skype_time, girl_id, type, description1, description2, date_add, status) VALUES ('$user_id', '$user_email', '$user_skype', '$skype_time', '$girl_id', '1', '$description1', '$description2', '$date_add', '1')";
$result_order = mysql_query($sql_order) or die("Ошибка при записи в таблицу order");
$sql_balance = "UPDATE clients_services SET skypes='".$skypes."' WHERE client_id='".$user_id."'";
$result_balance = mysql_query($sql_balance) or die("Ошибка при записи в таблицу balance");
/////////////////////////////////////////////

/////////////////Перенаправление в анкету///////////////
echo	("
			<script>javascript:window.location='../msg.php?type=0&msg_id=9&redirect=0'</script>
		");
///////////////////////////////////////////////////////
