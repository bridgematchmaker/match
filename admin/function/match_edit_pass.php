<?
session_start();
isset($_SESSION['login_admin']) or die("<script>javascript:window.location='../index.php'</script>");



include ("../../connect.php");


////////////////Переменные////////////////
$match_id = $_POST['match_id'];
$login = $_POST['login'];
$password = $_POST['password'];

if($password == "")
	{
		echo("<script>alert('Укажите пароль');</script><script>javascript:window.location='../match_profile.php?match_id=".$match_id."'</script>");
		exit();
	}


/////////////Фильтрация///////////////////

$match_id = htmlspecialchars($match_id);
$match_id = mysql_escape_string($match_id);

$name = htmlspecialchars($name);
$name = mysql_escape_string($name);

$password = htmlspecialchars($password);
$password = mysql_escape_string($password);

$password_md5 = md5($password);


////////////////Вносим изменения в анкету//////////////
$sql = "UPDATE matchmakers SET pass='$password_md5' WHERE login='$login' AND id='$match_id'";
$result = mysql_query($sql) or die("<script>alert('Ошибка при записи в таблицу');</script><script>javascript:window.location='../match_profile.php?match_id=".$match_id."'</script>");
///////////////////////////////////////////////////////

/////////////////Перенаправление в стату///////////////
echo	("
			<script>javascript:window.location='../match_profile.php?match_id=".$match_id."'</script>
		");
///////////////////////////////////////////////////////
?>