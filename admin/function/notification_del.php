<?
session_start();
isset($_SESSION['login_admin']) or die("<script>javascript:window.location='../index.php'</script>");

include ("../../connect.php");


////////////////Переменные////////////////
$id = $_GET['id'];


/////////////Фильтрация///////////////////
$id = htmlspecialchars($id);
$id = mysql_escape_string($id);


////////////////Удаляем фото из базы/////////////////////////////
$sql = "DELETE FROM notifications WHERE id='$id';";
$result = mysql_query($sql) or die("<script>alert('Ошибка при записи в таблицу');</script><script>javascript:window.location='../notifications.php'</script>");

$sql2 = "DELETE FROM notifications_status WHERE msg_id='$id';";
$result2 = mysql_query($sql2) or die("<script>alert('Ошибка при записи в таблицу');</script><script>javascript:window.location='../notifications.php'</script>");
/////////////////Перенаправление в анкету///////////////
echo	("
			<script>alert('Запись уделенна');</script><script>javascript:window.location='../notifications.php'</script>
		");
///////////////////////////////////////////////////////
?>