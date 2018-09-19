<?
session_start();
isset($_SESSION['login_match']) or die("<script>javascript:window.location='../index.php'</script>");

include ("../../connect.php");


////////////////Переменные////////////////
$id = $_GET['id'];
$user_id = $_GET['user_id'];


/////////////Фильтрация///////////////////
$id = htmlspecialchars($id);
$id = mysql_escape_string($id);

$user_id = htmlspecialchars($user_id);
$user_id = mysql_escape_string($user_id);


////////////////Удаляем фото из базы/////////////////////////////
$sql = "DELETE FROM clients_girl WHERE id='$id';";
$result = mysql_query($sql) or die("<script>alert('Ошибка при записи в таблицу');</script><script>javascript:window.location='../client_profile.php?user_id=".$user_id."'</script>");
/////////////////Перенаправление в анкету///////////////
echo	("
			<script>alert('Запись уделенна');</script><script>javascript:window.location='../client_profile.php?user_id=".$user_id."'</script>
		");
///////////////////////////////////////////////////////
?>