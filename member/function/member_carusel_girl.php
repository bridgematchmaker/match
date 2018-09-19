<?
session_start();
isset($_SESSION['email_client']) or die("<script>javascript:window.location='../../login.php'</script>");

include ("../../connect.php");

////////////////Переменные////////////////
$client_id = $_POST['user_id'];
$girl_id = $_POST['girl_id'];
$status_like = $_POST['status_like'];
$date_add = date("Y-m-d");

/////////////Фильтрация///////////////////
$client_id = htmlspecialchars($client_id);
$client_id = mysql_escape_string($client_id);

$girl_id = htmlspecialchars($girl_id);
$girl_id = mysql_escape_string($girl_id);

$status_like = htmlspecialchars($status_like);
$status_like = mysql_escape_string($status_like);


//////////Проверка на существование девушки в базе/////////

//Девушки с таким ID нет в базе
$result_repeat = mysql_query("SELECT * FROM girls WHERE girl_id='$girl_id';");
$num = mysql_num_rows($result_repeat);
if($num < 1) 
	{ 
	exit();
	} 

//Девушка с таким ID прикрепленна к клиенту
$result_repeat2 = mysql_query("SELECT * FROM clients_girl WHERE girl_id='$girl_id' AND user_id='$client_id';");
$num2 = mysql_num_rows($result_repeat2);
if($num2 > 0) 
	{ 
	exit();
	} 
/////////////////////////////////////////////////////////////

///////////////////////Загружаем Имя девушки//////////////////
$zapros_girl = "SELECT * FROM girls WHERE girl_id='$girl_id';";
$requirest_girl = mysql_query($zapros_girl);
while($row_girl = mysql_fetch_array($requirest_girl)) { $girl_name = $row_girl['first_name']; }
/////////////////////////////////////////////////////////////


if($status_like == "1")
	{
		//$sql = "INSERT INTO clients_girl (user_id,girl_id,girl_name,conformity,date_add,girl_status) VALUES ('$client_id', '$girl_id', '$girl_name', '0', '$date_add', '1')";
		//$result = mysql_query($sql) or die("");
	}

if($status_like == "0")
	{
		$sql = "INSERT INTO clients_girl (user_id,girl_id,girl_name,conformity,date_add,girl_status) VALUES ('$client_id', '$girl_id', '$girl_name', '1', '$date_add', '2')";
		$result = mysql_query($sql) or die("");
	}


?>