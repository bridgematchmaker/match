<?
session_start();
isset($_SESSION['login_admin']) or die("<script>javascript:window.location='../index.php'</script>");

include ("../../connect.php");


////////////////Переменные////////////////
$header = $_POST['header'];
$message = $_POST['message'];
$date_add = date("Y-m-d");

/////////////Фильтрация///////////////////
$header = htmlspecialchars($header);
$header = mysql_escape_string($header);

//$message = htmlspecialchars($message);
$message = mysql_escape_string($message);



////////////////Вносим изменения в анкету//////////////
$sql = "INSERT INTO notifications (header,message,date_add) VALUES ('$header', '$message', '$date_add')";
$result = mysql_query($sql) or die("<script>alert('Ошибка при записи в таблицу');</script><script>javascript:window.location='../notifications.php'</script>");
///////////////////////////////////////////////////////

/////////////////Перенаправление в анкету///////////////
echo	("
			<script>alert('Уведомление добавлено');</script><script>javascript:window.location='../notifications.php'</script>
		");
///////////////////////////////////////////////////////

?>