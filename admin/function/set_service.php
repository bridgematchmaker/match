<?
session_start();
isset($_SESSION['login_admin']) or die("<script>javascript:window.location='../index.php'</script>");

include ("../../connect.php");


////////////////Переменные////////////////
$service_letters = $_POST['letters'];
$service_skypes = $_POST['skypes'];
$service_gifts = $_POST['gifts'];
$service_advice_match = $_POST['advice_match'];
$service_assessment_match = $_POST['assessment_match'];
//////////////////////////////////////////


/////////////Фильтрация///////////////////

$service_letters = htmlspecialchars($service_letters);
$service_letters = mysql_escape_string($service_letters);
$service_letters = preg_replace("/[^0-9]/", '', $service_letters);

$service_skypes = htmlspecialchars($service_skypes);
$service_skypes = mysql_escape_string($service_skypes);
$service_skypes = preg_replace("/[^0-9]/", '', $service_skypes);

$service_gifts = htmlspecialchars($service_gifts);
$service_gifts = mysql_escape_string($service_gifts);
$service_gifts = preg_replace("/[^0-9]/", '', $service_gifts);

$service_advice_match = htmlspecialchars($service_advice_match);
$service_advice_match = mysql_escape_string($service_advice_match);
$service_advice_match = preg_replace("/[^0-9]/", '', $service_advice_match);

$service_assessment_match = htmlspecialchars($service_assessment_match);
$service_assessment_match = mysql_escape_string($service_assessment_match);
$service_assessment_match = preg_replace("/[^0-9]/", '', $service_assessment_match);
/////////////////////////////////////////////


////////////////¬носим изменени¤ в анкету//////////////
$sql = "UPDATE setting_service SET letters='$service_letters', skypes='$service_skypes', gifts='$service_gifts', advice_match='$service_advice_match', assessment_match='$service_assessment_match' WHERE id='1'";
$result = mysql_query($sql) or die("<script>alert('Ошибка при записи в таблицу');</script><script>javascript:window.location='../tarif.php'</script>");
///////////////////////////////////////////////////////

/////////////////ѕеренаправление в стату///////////////
echo	("
			<script>alert('Данные успешно сохранены');</script><script>javascript:window.location='../tarif.php'</script>
		");
///////////////////////////////////////////////////////
?>

