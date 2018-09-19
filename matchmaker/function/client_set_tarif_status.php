<?
session_start();
isset($_SESSION['login_match']) or die("<script>javascript:window.location='../index.php'</script>");

include ("../../connect.php");


////////////////Переменные////////////////
$user_id = $_POST['user_id'];
$status_tarif = $_POST['status_tarif'];
$date_tarif_set = date("Y-m-d");

/////////////Фильтрация///////////////////
$user_id = htmlspecialchars($user_id);
$user_id = mysql_escape_string($user_id);

$status_tarif = htmlspecialchars($status_tarif);
$status_tarif = mysql_escape_string($status_tarif);

//////////////////////////////////////////

if($status_tarif <> "999")
	{
		$sql = "UPDATE clients SET status_tarif='".$status_tarif."', date_tarif_set='".$date_tarif_set."' WHERE user_id='$user_id'";
	}
else
	{
		echo	("
					<script>alert('Тариф не выбран');</script><script>javascript:window.location='../client_profile.php?user_id=".$user_id."'</script>
				");
		exit();
	}



////////////////Вносим изменения в анкету//////////////
$result = mysql_query($sql) or die("<script>alert('Ошибка при записи в таблицу');</script><script>javascript:window.location='../client_profile.php?user_id=".$user_id."'</script>");
///////////////////////////////////////////////////////

/////////////////Перенаправление в анкету///////////////
echo	("
			<script>alert('Тариф успешно установлен');</script><script>javascript:window.location='../client_profile.php?user_id=".$user_id."'</script>
		");
///////////////////////////////////////////////////////
?>

