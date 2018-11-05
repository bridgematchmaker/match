<?
session_start();
isset($_SESSION['login_admin']) or die("<script>javascript:window.location='../index.php'</script>");

include ("../../connect.php");

$question1_price = $_POST['question1_price'];
$question2_price = $_POST['question2_price'];
$question3_price = $_POST['question3_price'];
$question4_price = $_POST['question4_price'];
$question5_price = $_POST['question5_price'];
$question6_price = $_POST['question6_price'];
$question7_price = $_POST['question7_price'];
$question8_price = $_POST['question8_price'];
$question9_price = $_POST['question9_price'];
$question10_price = $_POST['question10_price'];
$question11_price = $_POST['question11_price'];
$question12_price = $_POST['question12_price'];
$question13_price = $_POST['question13_price'];


/////////////Фильтрация///////////////////
$question1_price = mysql_escape_string($question1_price);
$question2_price = mysql_escape_string($question2_price);
$question3_price = mysql_escape_string($question3_price);
$question4_price = mysql_escape_string($question4_price);
$question5_price = mysql_escape_string($question5_price);
$question6_price = mysql_escape_string($question6_price);
$question7_price = mysql_escape_string($question7_price);
$question8_price = mysql_escape_string($question8_price);
$question9_price = mysql_escape_string($question9_price);
$question10_price = mysql_escape_string($question10_price);
$question11_price = mysql_escape_string($question11_price);
$question12_price = mysql_escape_string($question12_price);
$question13_price = mysql_escape_string($question13_price);

$sql = "UPDATE request_tour_price SET question1_price='$question1_price', question2_price='$question2_price', question3_price='$question3_price', question4_price='$question4_price', question5_price='$question5_price', question6_price='$question6_price', question7_price='$question7_price', question8_price='$question8_price', question9_price='$question9_price', question10_price='$question10_price', question11_price='$question11_price', question12_price='$question12_price', question13_price='$question13_price' WHERE id=1";
$result = mysql_query($sql) or die("<script>alert('Ошибка при записи');</script><script>javascript:window.location='../request_tour_price.php'</script>");

/////////////////ѕеренаправление в стату///////////////
echo	("
			<script>alert('Данные успешно сохранены');</script><script>javascript:window.location='../request_tour_price.php'</script>
		");
///////////////////////////////////////////////////////
?>