<?
session_start();
isset($_SESSION['login_match']) or die("<script>javascript:window.location='../index.php'</script>");

include ("../../connect.php");


////////////////Переменные////////////////
$girl_id = $_POST['girl_id'];
$user_id = $_POST['user_id'];
$conformity = $_POST['conformity'];
$date_add = date("Y-m-d");

/////////////Фильтрация///////////////////
$girl_id = htmlspecialchars($girl_id);
$girl_id = mysql_escape_string($girl_id);

$conformity = htmlspecialchars($conformity);
$conformity = mysql_escape_string($conformity);


//////////Проверка на существование девушки в базе/////////

$result_repeat = mysql_query("SELECT * FROM girls WHERE girl_id='$girl_id';");
$num = mysql_num_rows($result_repeat);
if($num < 1) 
	{ 
		echo("
			<script>alert('Девушки с таким ID нет в базе');</script>
			<script>javascript:window.location='../client_profile.php?user_id=".$user_id."'</script>
		");
	exit();
	} 

$result_repeat2 = mysql_query("SELECT * FROM clients_girl WHERE girl_id='$girl_id' AND user_id='$user_id';");
$num2 = mysql_num_rows($result_repeat2);
if($num2 > 0) 
	{ 
		echo("
			<script>alert('Девушка с таким ID прикрепленна к клиенту');</script>
			<script>javascript:window.location='../client_profile.php?user_id=".$user_id."'</script>
		");
	exit();
	} 
/////////////////////////////////////////////////////////////

///////////////////////Загружаем Имя девушки//////////////////
$zapros_girl = "SELECT * FROM girls WHERE girl_id='$girl_id';";
$requirest_girl = mysql_query($zapros_girl);
while($row_girl = mysql_fetch_array($requirest_girl)) { $girl_name = $row_girl['first_name']; }
/////////////////////////////////////////////////////////////


////////////////Вносим изменения в анкету//////////////
$sql = "INSERT INTO clients_girl (user_id,girl_id,girl_name,conformity,date_add) VALUES ('$user_id', '$girl_id', '$girl_name', '$conformity', '$date_add')";
$result = mysql_query($sql) or die("<script>alert('Ошибка при записи в таблицу');</script><script>javascript:window.location='../client_profile.php?user_id=".$user_id."'</script>");
///////////////////////////////////////////////////////

/////////////////Перенаправление в анкету///////////////
echo	("
			<script>alert('Девушка добавлена');</script><script>javascript:window.location='../client_profile.php?user_id=".$user_id."'</script>
		");
///////////////////////////////////////////////////////
?>

