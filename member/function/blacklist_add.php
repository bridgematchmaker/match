<?
session_start();
isset($_SESSION['email_client']) or die("<script>javascript:window.location='../../login.php'</script>");

include ("../../connect.php");

////////////////Переменные////////////////
$girl_id = $_GET['girl_id'];
$user_id = $_GET['user_id'];
$conformity = '0';
$date_add = date("Y-m-d");

/////////////Фильтрация///////////////////
$girl_id = htmlspecialchars($girl_id);
$girl_id = mysql_escape_string($girl_id);

$user_id = htmlspecialchars($user_id);
$user_id = mysql_escape_string($user_id);

$conformity = htmlspecialchars($conformity);
$conformity = mysql_escape_string($conformity);


//////////Проверка на существование девушки в базе/////////

$result_repeat = mysql_query("SELECT * FROM girls WHERE girl_id='$girl_id';");
$num = mysql_num_rows($result_repeat);
if($num < 1) 
	{ 
		echo("
				<script>javascript:window.location='".$_SERVER['HTTP_REFERER']."'</script>
			");
	exit();
	} 

///////////////////////Загружаем Имя девушки//////////////////
$zapros_girl = "SELECT * FROM girls WHERE girl_id='$girl_id';";
$requirest_girl = mysql_query($zapros_girl);
while($row_girl = mysql_fetch_array($requirest_girl)) { $girl_name = $row_girl['first_name']; }
/////////////////////////////////////////////////////////////


$result_repeat2 = mysql_query("SELECT * FROM clients_girl WHERE girl_id='$girl_id' AND user_id='$user_id';");
$num2 = mysql_num_rows($result_repeat2);

///////Если анкета есть в таблице
if($num2 > 0) 
	{ 
		$sql = "UPDATE clients_girl SET conformity='".$conformity."', date_add='".$date_add."', girl_status='2' WHERE girl_id='$girl_id' AND user_id='$user_id';";
		$result = mysql_query($sql) or die("<script>javascript:window.location='".$_SERVER['HTTP_REFERER']."'</script>");
	} 
	
///////Если анкеты нет в таблице
if($num2 == 0) 
	{ 
		$sql = "INSERT INTO clients_girl (user_id,girl_id,girl_name,conformity,date_add,girl_status) VALUES ('$user_id', '$girl_id', '$girl_name', '$conformity', '$date_add', '2')";
		$result = mysql_query($sql) or die("<script>javascript:window.location='".$_SERVER['HTTP_REFERER']."'</script>");
	} 
/////////////////////////////////////////////////////////////



/////////////////Перенаправление назад/////////////////
echo	("
			<script>javascript:window.location='".$_SERVER['HTTP_REFERER']."'</script>
		");
///////////////////////////////////////////////////////
?>