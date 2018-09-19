<?
session_start();
isset($_SESSION['login_match']) or die("<script>javascript:window.location='../index.php'</script>");

include ("../../connect.php");


////////////////Переменные////////////////
$user_id = $_GET['user_id'];
$status_system = $_GET['status_system'];

/////////////Фильтрация///////////////////
$user_id = htmlspecialchars($user_id);
$user_id = mysql_escape_string($user_id);

//////////////////////////////////////////

if($status_system == "2")
	{
		$sql = "UPDATE clients SET status_system='3', status_verification='1' WHERE user_id='$user_id'";
	}
else
	{
		$sql = "UPDATE clients SET status_verification='1' WHERE user_id='$user_id'";
	}



////////////////Вносим изменения в анкету//////////////
$result = mysql_query($sql) or die("<script>alert('Ошибка при записи в таблицу');</script><script>javascript:window.location='../client_profile.php?user_id=".$user_id."'</script>");
///////////////////////////////////////////////////////

/////////////////Перенаправление в анкету///////////////
echo	("
			<script>alert('Пользователь прошел модерацию');</script><script>javascript:window.location='../client_profile.php?user_id=".$user_id."'</script>
		");
///////////////////////////////////////////////////////
?>

