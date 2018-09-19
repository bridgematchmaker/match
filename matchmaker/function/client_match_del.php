<?
session_start();
isset($_SESSION['login_match']) or die("<script>javascript:window.location='../index.php'</script>");

include ("../../connect.php");


////////////////Переменные////////////////
$user_id = $_GET['user_id'];

/////////////Фильтрация///////////////////
$user_id = htmlspecialchars($user_id);
$user_id = mysql_escape_string($user_id);

//////////////////////////////////////////

$sql = "UPDATE clients SET matchmaker_login='None', status_system='1' WHERE user_id='$user_id'";


////////////////Вносим изменения в анкету//////////////
$result = mysql_query($sql) or die("<script>alert('Ошибка при записи в таблицу');</script><script>javascript:window.location='../client_profile.php?user_id=".$user_id."'</script>");
///////////////////////////////////////////////////////

/////////////////Перенаправление в анкету///////////////
echo	("
			<script>alert('Мачмекер откреплен от профиля');</script><script>javascript:window.location='../client_profile.php?user_id=".$user_id."'</script>
		");
///////////////////////////////////////////////////////
?>

