<?
session_start();
isset($_SESSION['login_admin']) or die("<script>javascript:window.location='../index.php'</script>");

include ("../../connect.php");

////////////////Переменные////////////////
$match_id = $_GET['match_id'];


/////////////Фильтрация///////////////////

$match_id = htmlspecialchars($match_id);
$match_id = mysql_escape_string($match_id);

////////////////Удаляем анкету//////////////
$sql = "DELETE FROM matchmakers WHERE id='$match_id'";
$result = mysql_query($sql) or die("<script>alert('Ошибка при записи в таблицу');</script><script>javascript:window.location='../match.php'</script>");
///////////////////////////////////////////////////////

/////////////////Перенаправление в таблицу мачмекеров///////////////
echo	("
			<script>alert('Пользователь удален');</script><script>javascript:window.location='../match.php'</script>
		");
///////////////////////////////////////////////////////


?>