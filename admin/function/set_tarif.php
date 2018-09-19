<?
session_start();
isset($_SESSION['login_admin']) or die("<script>javascript:window.location='../index.php'</script>");

include ("../../connect.php");


////////////////Переменные////////////////
$tarif_name = $_POST['tarif'];
$tarif_day = $_POST['days'];
$tarif_price = $_POST['price'];
$tarif_letters = $_POST['letters'];
$tarif_skypes = $_POST['skypes'];
$tarif_gifts = $_POST['gifts'];
$tarif_advice_match = $_POST['advice_match'];
$tarif_assessment_match = $_POST['assessment_match'];
//////////////////////////////////////////


/////////////Фильтрация///////////////////

$tarif_name = htmlspecialchars($tarif_name);
$tarif_name = mysql_escape_string($tarif_name);

$tarif_day = htmlspecialchars($tarif_day);
$tarif_day = mysql_escape_string($tarif_day);
$tarif_day = preg_replace("/[^0-9]/", '', $tarif_day);

$tarif_price = htmlspecialchars($tarif_price);
$tarif_price = mysql_escape_string($tarif_price);
$tarif_price = preg_replace("/[^0-9]/", '', $tarif_price);

$tarif_letters = htmlspecialchars($tarif_letters);
$tarif_letters = mysql_escape_string($tarif_letters);
$tarif_letters = preg_replace("/[^0-9]/", '', $tarif_letters);

$tarif_skypes = htmlspecialchars($tarif_skypes);
$tarif_skypes = mysql_escape_string($tarif_skypes);
$tarif_skypes = preg_replace("/[^0-9]/", '', $tarif_skypes);

$tarif_gifts = htmlspecialchars($tarif_gifts);
$tarif_gifts = mysql_escape_string($tarif_gifts);
$tarif_gifts = preg_replace("/[^0-9]/", '', $tarif_gifts);

$tarif_advice_match = htmlspecialchars($tarif_advice_match);
$tarif_advice_match = mysql_escape_string($tarif_advice_match);
$tarif_advice_match = preg_replace("/[^0-9]/", '', $tarif_advice_match);

$tarif_assessment_match = htmlspecialchars($tarif_assessment_match);
$tarif_assessment_match = mysql_escape_string($tarif_assessment_match);
$tarif_assessment_match = preg_replace("/[^0-9]/", '', $tarif_assessment_match);

/////////////////////////////////////////////


////////////////¬носим изменени¤ в анкету//////////////
$sql = "UPDATE setting_tarif SET tarif_day='$tarif_day', tarif_price='$tarif_price', tarif_letters='$tarif_letters', tarif_skypes='$tarif_skypes', tarif_gifts='$tarif_gifts', tarif_advice_match='$tarif_advice_match', tarif_assessment_match='$tarif_assessment_match' WHERE tarif_name='$tarif_name'";
$result = mysql_query($sql) or die("<script>alert('Ошибка при записи в таблицу');</script><script>javascript:window.location='../tarif.php'</script>");
///////////////////////////////////////////////////////

/////////////////ѕеренаправление в стату///////////////
echo	("
			<script>alert('Данные успешно сохранены');</script><script>javascript:window.location='../tarif.php'</script>
		");
///////////////////////////////////////////////////////
?>

