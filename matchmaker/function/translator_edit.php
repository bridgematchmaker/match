<?
session_start();
isset($_SESSION['login_match']) or die("<script>javascript:window.location='../index.php'</script>");

include ("../../connect.php");


////////////////Переменные////////////////
$translator_id = $_POST['translator_id'];
$translator_first_name = $_POST['translator_first_name'];
$translator_last_name = $_POST['translator_last_name'];
$translator_email = $_POST['translator_email'];
$translator_phone = $_POST['translator_phone'];
$translator_age = $_POST['translator_age'];
$translator_level = $_POST['translator_level'];
$translator_experience = $_POST['translator_experience'];
$agency = $_POST['agency'];
$agency_email = $_POST['agency_email'];
$agency_phone = $_POST['agency_phone'];

/////////////Фильтрация///////////////////
$translator_id = htmlspecialchars($translator_id);
$translator_id = mysql_escape_string($translator_id);

$translator_first_name = htmlspecialchars($translator_first_name);
$translator_first_name = mysql_escape_string($translator_first_name);

$translator_last_name = htmlspecialchars($translator_last_name);
$translator_last_name = mysql_escape_string($translator_last_name);

$translator_email = htmlspecialchars($translator_email);
$translator_email = mysql_escape_string($translator_email);

$translator_phone = htmlspecialchars($translator_phone);
$translator_phone = mysql_escape_string($translator_phone);

$translator_age = htmlspecialchars($translator_age);
$translator_age = mysql_escape_string($translator_age);

$translator_level = htmlspecialchars($translator_level);
$translator_level = mysql_escape_string($translator_level);

$translator_experience = htmlspecialchars($translator_experience);
$translator_experience = mysql_escape_string($translator_experience);

$agency = htmlspecialchars($agency);
$agency = mysql_escape_string($agency);

$agency_email = htmlspecialchars($agency_email);
$agency_email = mysql_escape_string($agency_email);

$agency_phone = htmlspecialchars($agency_phone);
$agency_phone = mysql_escape_string($agency_phone);
/////////////////////////////////////////////


//////////////////////////////////////////

$sql = "UPDATE translators SET translator_first_name='".$translator_first_name."', translator_last_name='".$translator_last_name."', translator_email='".$translator_email."', translator_phone='".$translator_phone."', translator_age='".$translator_age."', translator_level='".$translator_level."', translator_experience='".$translator_experience."', agency='".$agency."', agency_email='".$agency_email."', agency_phone='".$agency_phone."' WHERE translator_id='".$translator_id."'";


////////////////Вносим изменения в анкету//////////////
$result = mysql_query($sql) or die("<script>alert('Ошибка при записи в таблицу');</script><script>javascript:window.location='../translator_profile.php?translator_id=".$translator_id."'</script>");
///////////////////////////////////////////////////////

/////////////////Перенаправление в анкету///////////////
echo	("
			<script>alert('Профиль успешно отредактирован');</script><script>javascript:window.location='../translator_profile.php?translator_id=".$translator_id."'</script>
		");
///////////////////////////////////////////////////////
?>

