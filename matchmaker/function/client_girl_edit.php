<?
session_start();
isset($_SESSION['login_match']) or die("<script>javascript:window.location='../index.php'</script>");

include ("../../connect.php");


////////////////Переменные////////////////
$id = $_POST['id'];
$user_id = $_POST['user_id'];
$conformity = $_POST['conformity'];

/////////////Фильтрация///////////////////
$id = htmlspecialchars($id);
$id = mysql_escape_string($id);

$conformity = htmlspecialchars($conformity);
$conformity = mysql_escape_string($conformity);



////////////////Вносим изменения в анкету//////////////
$sql = "UPDATE clients_girl SET conformity='".$conformity."' WHERE id='$id'";
$result = mysql_query($sql) or die("<script>alert('Ошибка при записи в таблицу');</script><script>javascript:window.location='../client_profile.php?user_id=".$user_id."'</script>");
///////////////////////////////////////////////////////

/////////////////Перенаправление в анкету///////////////
echo	("
			<script>alert('Девушка добавлена');</script><script>javascript:window.location='../client_profile.php?user_id=".$user_id."'</script>
		");
///////////////////////////////////////////////////////
?>

