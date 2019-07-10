<?
session_start();
isset($_SESSION['login_admin']) or die("<script>javascript:window.location='../index.php'</script>");

include ("../../connect.php");


////////////////Переменные////////////////
$basic_description =  $_POST['basic_description'];
$basic_price =  $_POST['basic_price'];
$comfort_description =  $_POST['comfort_description'];
$comfort_price =  $_POST['comfort_price'];
$luxe_description =  $_POST['luxe_description'];
$luxe_price =  $_POST['luxe_price'];
//////////////////////////////////////////


/////////////Фильтрация///////////////////
$basic_description = mysql_escape_string($basic_description);
$comfort_description = mysql_escape_string($comfort_description);
$luxe_description = mysql_escape_string($luxe_description);
$basic_price = mysql_escape_string($basic_price);
$comfort_price = mysql_escape_string($comfort_price);
$luxe_price = mysql_escape_string($luxe_price);
/////////////////////////////////////////////


////////////////Вносим изменени¤ в DB//////////////
$sql_free = "UPDATE setting_tours SET description='$basic_description', price='$basic_price' WHERE name='Basic'";
$result_free = mysql_query($sql_free) or die("<script>alert('Ошибка при записи в тур Basic');</script><script>javascript:window.location='../tour.php'</script>");

$sql_free = "UPDATE setting_tours SET description='$comfort_description', price='$comfort_price' WHERE name='Comfort'";
$result_free = mysql_query($sql_free) or die("<script>alert('Ошибка при записи в тур Comfort');</script><script>javascript:window.location='../tour.php'</script>");

$sql_free = "UPDATE setting_tours SET description='$luxe_description', price='$luxe_price' WHERE name='Luxe'";
$result_free = mysql_query($sql_free) or die("<script>alert('Ошибка при записи в тур Luxe');</script><script>javascript:window.location='../tour.php'</script>");
///////////////////////////////////////////////////////

/////////////////ѕеренаправление в стату///////////////
echo	("
			<script>alert('Данные успешно сохранены');</script><script>javascript:window.location='../tour.php'</script>
		");
///////////////////////////////////////////////////////
?>

