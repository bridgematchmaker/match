<?
session_start();
isset($_SESSION['email_client']) or die("<script>javascript:window.location='../../login.php'</script>");

include ("../../connect.php");


////////////////Переменные////////////////
$girl_id = $_GET['girl_id'];
$user_id = $_GET['user_id'];


/////////////Фильтрация///////////////////
$girl_id = htmlspecialchars($girl_id);
$girl_id = mysql_escape_string($girl_id);

$user_id = htmlspecialchars($user_id);
$user_id = mysql_escape_string($user_id);


////////////////Удаляем фото из базы/////////////////////////////
$sql = "DELETE FROM clients_girl WHERE user_id='$user_id' AND girl_id='$girl_id' AND girl_status='2';";
$result = mysql_query($sql) or die("<script>alert('Ошибка при записи в таблицу');</script><script>javascript:window.location='".$_SERVER['HTTP_REFERER']."'</script>");
/////////////////Перенаправление в анкету///////////////
echo	("
			<script>javascript:window.location='".$_SERVER['HTTP_REFERER']."'</script>
		");
///////////////////////////////////////////////////////
?>