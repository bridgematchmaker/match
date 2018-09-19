<?
session_start();
isset($_SESSION['login_match']) or die("<script>javascript:window.location='../index.php'</script>");

include ("../../connect.php");


////////////////ѕеременные////////////////
$login = $_POST['login'];
$name = $_POST['name'];
$email = $_POST['email'];
$phone = $_POST['phone'];
$time = $_POST['time'];
$skype = $_POST['skype'];
$age = $_POST['age'];
$country = $_POST['country'];
$description = $_POST['description'];
$rating = $_POST['rating'];
$meetings = $_POST['meetings'];
$answers = $_POST['answers'];
//////////////////////////////////////////


/////////////‘ильтраци¤///////////////////
$name = htmlspecialchars($name);
$name = mysql_escape_string($name);


$email = htmlspecialchars($email);
$email = mysql_escape_string($email);



$skype = htmlspecialchars($skype);
$skype = mysql_escape_string($skype);


$age = htmlspecialchars($age);
$age = mysql_escape_string($age);

$phone = htmlspecialchars($phone);
$phone = mysql_escape_string($phone);

$time = htmlspecialchars($time);
$time = mysql_escape_string($time);


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


////////////////¬носим изменени¤ в анкету//////////////
$sql = "UPDATE matchmakers SET name='$name', email='$email', skype='$skype', age='$age', phone='$phone', time='$time', country='$country', description='$description', rating='$rating', meetings='$meetings', answers='$answers' WHERE login='$login'";
$result = mysql_query($sql) or die("<script>alert('ќшибка при записи в таблицу matchmakers');</script><script>javascript:window.location='../match.php'</script>");
///////////////////////////////////////////////////////

/////////////////ѕеренаправление в стату///////////////
echo	("
			<script>javascript:window.location='../match.php'</script>
		");
///////////////////////////////////////////////////////
?>

