<?
session_start();
isset($_SESSION['login_match']) or die("<script>javascript:window.location='../index.php'</script>");

include ("../../connect.php");


////////////////Переменные////////////////
$id = $_GET['id'];


/////////////Фильтрация///////////////////
$id = htmlspecialchars($id);
$id = mysql_escape_string($id);



////////////////Удаляем из базы/////////////////////////////
$sql0 = "DELETE FROM girls_invite WHERE id='$id';";
$result0 = mysql_query($sql0) or die("<script>alert('Ошибка при записи в таблицу');</script><script>javascript:window.location='../girls_invite.php'</script>");


/////////////////Перенаправление в анкету///////////////
echo	("
			<script>alert('Заявка уделенна');</script><script>javascript:window.location='../girls_invite.php'</script>
		");
///////////////////////////////////////////////////////
?>

