<?
session_start();
isset($_SESSION['login_match']) or die("<script>javascript:window.location='../index.php'</script>");

include ("../../connect.php");

if(empty($_POST['translator_first_name']) or empty($_POST['translator_last_name'])) 
	{ 
		echo("
			<script>alert('Заполните все обязательные поля');</script>
			<script>javascript:window.location='../translator_add.php'</script>
		");
	exit();
	} 


////////////////Переменные////////////////
$translator_match = $_POST['translator_match'];
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
$translator_date_add = date("Y-m-d");
$translator_foto = "uploads/translator/avatar.jpg";

/////////////Фильтрация///////////////////
$translator_match = htmlspecialchars($translator_match);
$translator_match = mysql_escape_string($translator_match);

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



/////////////SQL запрос//////////////////////
$sql = "INSERT INTO translators (translator_match, translator_first_name, translator_last_name, translator_email, translator_phone, translator_age, translator_level, translator_experience, agency, agency_email, agency_phone, translator_foto, translator_date_add) VALUES ('$translator_match', '$translator_first_name', '$translator_last_name', '$translator_email', '$translator_phone', '$translator_age', '$translator_level', '$translator_experience', '$agency', '$agency_email', '$agency_phone', '$translator_foto', '$translator_date_add')";
/////////////////////////////////////////////
$result = mysql_query($sql) or die("Ошибка при записи в базу");


///////////загружем id нового переводчика девушки//////////
$zapros = "SELECT * FROM translators WHERE translator_email='$translator_email';";
$requirest = mysql_query($zapros);
while($row = mysql_fetch_array($requirest)) { $translator_id = $row['translator_id']; }
//////////////////////////////////////////////////////////
echo "<script>alert('Профиль успешно создан');</script><script>javascript:window.location='../translator_profile.php?translator_id=".$translator_id."'</script>";			

?>