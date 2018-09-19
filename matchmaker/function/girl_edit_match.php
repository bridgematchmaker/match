<?
session_start();
isset($_SESSION['login_match']) or die("<script>javascript:window.location='../index.php'</script>");

include ("../../connect.php");
$girl_id = $_POST['girl_id'];




////////////////Переменные////////////////

$dreams = $_POST['dreams'];
$meeting = $_POST['meeting'];



//////////////////////////////////////////


/////////////Фильтрация///////////////////
$dreams = htmlspecialchars($dreams);
$dreams = mysql_escape_string($dreams);

$meeting = htmlspecialchars($meeting);
$meeting = mysql_escape_string($meeting);




/////////////SQL запрос//////////////////////
$sql = "UPDATE girls SET dreams='".$dreams."', meeting='".$meeting."' WHERE girl_id='".$girl_id."'";
/////////////////////////////////////////////
$result = mysql_query($sql) or die("Ошибка при записи в базу");
///////////////////////////////////////////
echo "<script>alert('Профиль успешно отредактирован');</script><script>javascript:window.location='../girl_profile.php?girl_id=".$girl_id."'</script>";			

	
?>