<?
session_start();
isset($_SESSION['login_match']) or die("<script>javascript:window.location='../index.php'</script>");

include ("../../connect.php");


////////////////Переменные////////////////
$order_id = $_POST['order_id'];
$skype_link = $_POST['skype_link'];

/////////////Фильтрация///////////////////
$order_id = htmlspecialchars($order_id);
$order_id = mysql_escape_string($order_id);

$skype_link = htmlspecialchars($skype_link);
$skype_link = mysql_escape_string($skype_link);


//////////////////////////////////////////

//////////////////////Вносим изменения в заказ///////////////////////////////
$sql = "UPDATE orders SET status='1', skype_link='".$skype_link."' WHERE order_id='$order_id' AND type='1'";
$result = mysql_query($sql) or die("<script>alert('Ошибка при записи в таблицу заказов');</script><script>javascript:window.location='../order.php?order_id=".$order_id."'</script>");
/////////////////////////////////////////////////////////////////////////////

/////////////////Перенаправление в анкету////////////////////////////////////
echo	("
			<script>alert('Сссылка на конференцию установленна');</script><script>javascript:window.location='../order.php?order_id=".$order_id."'</script>
		");
///////////////////////////////////////////////////////
?>