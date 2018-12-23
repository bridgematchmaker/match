<?
session_start();
isset($_SESSION['login_match']) or die("<script>javascript:window.location='../index.php'</script>");

include ("../../connect.php");


////////////////Переменные////////////////
$order_id = $_GET['order_id'];
$user_id = $_GET['user_id'];
$date_end = date("Y-m-d");

/////////////Фильтрация///////////////////
$order_id = htmlspecialchars($order_id);
$order_id = mysql_escape_string($order_id);

$user_id = htmlspecialchars($user_id);
$user_id = mysql_escape_string($user_id);

//////////////////////////////////////////

//////////////////////Вносим изменения в заказ///////////////////////////////
$sql = "UPDATE orders SET status='2', date_end='".$date_end."', match_login_processed='".$_SESSION['login_match']."' WHERE order_id='$order_id' AND type='2' AND user_id='$user_id'";
$result = mysql_query($sql) or die("<script>alert('Ошибка при записи в таблицу заказов');</script><script>javascript:window.location='../order.php?order_id=".$order_id."'</script>");
/////////////////////////////////////////////////////////////////////////////

/////////////////Перенаправление в анкету////////////////////////////////////
echo	("
			<script>alert('Заказ успешно выполнен');</script><script>javascript:window.location='../order.php?order_id=".$order_id."'</script>
		");
///////////////////////////////////////////////////////
?>