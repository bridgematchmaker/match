<?
session_start();
isset($_SESSION['login_match']) or die("<script>javascript:window.location='../index.php'</script>");

include ("../../connect.php");


////////////////Переменные////////////////
$status_foto_set = $_GET['status_foto_set'];
$foto_id = $_GET['foto_id'];
$girl_id = $_GET['girl_id'];

/////////////Фильтрация///////////////////
$status_foto_set = htmlspecialchars($status_foto_set);
$status_foto_set = mysql_escape_string($status_foto_set);

$foto_id = htmlspecialchars($foto_id);
$foto_id = mysql_escape_string($foto_id);

$girl_id = htmlspecialchars($girl_id);
$girl_id = mysql_escape_string($girl_id);





//////////////////////////////////////////
$sql = "UPDATE girls_foto SET status_foto='".$status_foto_set."' WHERE foto_id='$foto_id'";
////////////////Вносим изменения в анкету//////////////
$result = mysql_query($sql) or die("<script>alert('Ошибка при записи в таблицу');</script><script>javascript:window.location='../order.php?order_id=".$order_id."'</script>");
///////////////////////////////////////////////////////

/////////////////Перенаправление в анкету///////////////
echo	("
			<script>javascript:window.location='../girl_profile.php?girl_id=".$girl_id."'</script>
		");
///////////////////////////////////////////////////////
?>

