<?
session_start();
isset($_SESSION['login_match']) or die("<script>javascript:window.location='../index.php'</script>");

include ("../../connect.php");


////////////////Переменные////////////////
$user_id = $_POST['user_id'];
$letters = $_POST['letters'];
$skypes = $_POST['skypes'];
$gifts = $_POST['gifts'];
$assessment_match = $_POST['assessment_match'];
$advice_match = $_POST['advice_match'];




/////////////Фильтрация///////////////////
$user_id = htmlspecialchars($user_id);
$user_id = mysql_escape_string($user_id);

$letters = htmlspecialchars($letters);
$letters = mysql_escape_string($letters);

$skypes = htmlspecialchars($skypes);
$skypes = mysql_escape_string($skypes);

$gifts = htmlspecialchars($gifts);
$gifts = mysql_escape_string($gifts);

$assessment_match = htmlspecialchars($assessment_match);
$assessment_match = mysql_escape_string($assessment_match);

$advice_match = htmlspecialchars($advice_match);
$advice_match = mysql_escape_string($advice_match);

//////////////////////////////////////////

$sql = "UPDATE clients_services SET letters='".$letters."', skypes='".$skypes."', gifts='".$gifts."', assessment_match='".$assessment_match."', advice_match='".$advice_match."' WHERE client_id='".$user_id."'";


////////////////Вносим изменения в анкету//////////////
$result = mysql_query($sql) or die("<script>alert('Ошибка при записи в таблицу');</script><script>javascript:window.location='../client_profile.php?user_id=".$user_id."'</script>");
///////////////////////////////////////////////////////

/////////////////Перенаправление в анкету///////////////
echo	("
			<script>alert('Баланс успешно отредактирован');</script><script>javascript:window.location='../client_profile.php?user_id=".$user_id."'</script>
		");
///////////////////////////////////////////////////////
?>

