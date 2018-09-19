<?
session_start();
isset($_SESSION['login_match']) or die("<script>javascript:window.location='../index.php'</script>");

include ("../../connect.php");


////////////////Переменные////////////////
$user_id = $_GET['user_id'];
$status_verification = $_GET['status_verification'];

/////////////Фильтрация///////////////////
$user_id = htmlspecialchars($user_id);
$user_id = mysql_escape_string($user_id);

//////////////////////////////////////////

if($status_verification == "1")
	{
		$sql = "UPDATE clients SET matchmaker_login='".$_SESSION['login_match']."', status_system='3' WHERE user_id='$user_id'";
	}
else
	{
		$sql = "UPDATE clients SET matchmaker_login='".$_SESSION['login_match']."', status_system='2' WHERE user_id='$user_id'";
	}



////////////////Вносим изменения в анкету//////////////
$result = mysql_query($sql) or die("<script>alert('Ошибка при записи в таблицу');</script><script>javascript:window.location='../client_profile.php?user_id=".$user_id."'</script>");
///////////////////////////////////////////////////////

/////////////////Перенаправление в анкету///////////////
echo	("
			<script>alert('Мачмекер успешно закреплен за пользователем');</script><script>javascript:window.location='../client_profile.php?user_id=".$user_id."'</script>
		");
///////////////////////////////////////////////////////
?>

