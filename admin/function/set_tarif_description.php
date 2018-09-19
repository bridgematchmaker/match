<?
session_start();
isset($_SESSION['login_admin']) or die("<script>javascript:window.location='../index.php'</script>");

include ("../../connect.php");


////////////////Переменные////////////////
$description_free =  $_POST['free_description'];
$description_silver =  $_POST['silver_description'];
$description_gold =  $_POST['gold_description'];
$description_premium =  $_POST['premium_description'];
//////////////////////////////////////////


/////////////Фильтрация///////////////////
$description_free = mysql_escape_string($description_free);
$description_silver = mysql_escape_string($description_silver);
$description_gold  = mysql_escape_string($description_gold);
$description_premium = mysql_escape_string($description_premium);
/////////////////////////////////////////////


////////////////Вносим изменени¤ в DB//////////////
$sql_free = "UPDATE setting_tarif SET description='$description_free' WHERE tarif_name='free'";
$result_free = mysql_query($sql_free) or die("<script>alert('Ошибка при записи в тариф Free');</script><script>javascript:window.location='../tarif.php'</script>");

$sql_silver = "UPDATE setting_tarif SET description='$description_silver' WHERE tarif_name='silver'";
$result_silver = mysql_query($sql_silver) or die("<script>alert('Ошибка при записи в тариф Silver');</script><script>javascript:window.location='../tarif.php'</script>");

$sql_gold = "UPDATE setting_tarif SET description='$description_gold' WHERE tarif_name='gold'";
$result_gold = mysql_query($sql_gold) or die("<script>alert('Ошибка при записи в тариф Gold');</script><script>javascript:window.location='../tarif.php'</script>");

$sql_premium = "UPDATE setting_tarif SET description='$description_premium' WHERE tarif_name='premium'";
$result_premium = mysql_query($sql_premium) or die("<script>alert('Ошибка при записи в тариф Premium');</script><script>javascript:window.location='../tarif.php'</script>");
///////////////////////////////////////////////////////

/////////////////ѕеренаправление в стату///////////////
echo	("
			<script>alert('Данные успешно сохранены');</script><script>javascript:window.location='../tarif.php'</script>
		");
///////////////////////////////////////////////////////
?>

