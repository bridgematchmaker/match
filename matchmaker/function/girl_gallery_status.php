<?
session_start();
isset($_SESSION['login_match']) or die("<script>javascript:window.location='../index.php'</script>");

include ("../../connect.php");


////////////////Переменные////////////////
$girl_id = $_GET['girl_id'];
$gallery_status = $_GET['gallery_status'];

/////////////Фильтрация///////////////////
$girl_id = htmlspecialchars($girl_id);
$girl_id = mysql_escape_string($girl_id);

$gallery_status = htmlspecialchars($gallery_status);
$gallery_status = mysql_escape_string($gallery_status);

//////////////////////////////////////////
if($gallery_status == "0") { $sql = "UPDATE girls SET gallery_status='0' WHERE girl_id='$girl_id'"; }
if($gallery_status == "1") { $sql = "UPDATE girls SET gallery_status='1' WHERE girl_id='$girl_id'"; }
////////////////Вносим изменения в анкету//////////////
$result = mysql_query($sql) or die("<script>alert('Ошибка при записи в таблицу');</script><script>javascript:window.location='../girl_profile.php?girl_id=".$girl_id."'</script>");
///////////////////////////////////////////////////////

/////////////////Перенаправление в анкету///////////////
echo	("
			<script>alert('Стутус общей галереи изменен');</script><script>javascript:window.location='../girl_profile.php?girl_id=".$girl_id."'</script>
		");
///////////////////////////////////////////////////////
?>

