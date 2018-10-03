<?
session_start();
isset($_SESSION['login_admin']) or die("<script>javascript:window.location='../index.php'</script>");

include ("../../connect.php");


////////////////Переменные////////////////
$match_id = $_POST['match_id'];
$login = $_POST['login'];
$name = $_POST['name'];
$email = $_POST['email'];
$skype = $_POST['skype'];
$age = $_POST['age'];
$phone = $_POST['phone'];
$time = $_POST['time'];
$country = $_POST['country'];
$description = $_POST['description'];
$status = $_POST['status'];
$rating = $_POST['rating'];
$meetings = $_POST['meetings'];
$answers = $_POST['answers'];
//////////////////////////////////////////


/////////////Фильтрация///////////////////

$match_id = htmlspecialchars($match_id);
$match_id = mysql_escape_string($match_id);

$name = htmlspecialchars($name);
$name = mysql_escape_string($name);

$email = htmlspecialchars($email);
$email = mysql_escape_string($email);

$phone = htmlspecialchars($phone);
$phone = mysql_escape_string($phone);

$time = htmlspecialchars($time);
$time = mysql_escape_string($time);

$skype = htmlspecialchars($skype);
$skype = mysql_escape_string($skype);

$age = htmlspecialchars($age);
$age = mysql_escape_string($age);

$country = htmlspecialchars($country);
$country = mysql_escape_string($country);

$description = htmlspecialchars($description);
$description = mysql_escape_string($description);

$answers = htmlspecialchars($answers);
$answers = mysql_escape_string($answers);

$meetings = htmlspecialchars($meetings);
$meetings = mysql_escape_string($meetings);

$rating = htmlspecialchars($rating);
$rating = mysql_escape_string($rating);
/////////////////////////////////////////////


////////////////Вносим изменения в анкету//////////////
$sql = "UPDATE matchmakers SET name='$name', email='$email', skype='$skype', age='$age', phone='$phone', time='$time', country='$country', description='$description', rating='$rating', meetings='$meetings', answers='$answers' WHERE login='$login'";
$result = mysql_query($sql) or die("<script>alert('Ошибка при записи в таблицу');</script><script>javascript:window.location='../match_profile.php?match_id=".$match_id."'</script>");
///////////////////////////////////////////////////////

/////////////////ѕеренаправление в стату///////////////
echo	("
			<script>javascript:window.location='../match_profile.php?match_id=".$match_id."'</script>
		");
///////////////////////////////////////////////////////
?>

