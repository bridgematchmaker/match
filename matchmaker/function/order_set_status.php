<?
session_start();
isset($_SESSION['login_match']) or die("<script>javascript:window.location='../index.php'</script>");

include ("../../connect.php");


////////////////Переменные////////////////
$order_id = $_POST['order_id'];
$status = $_POST['status'];
$date_end = date("Y-m-d");

/////////////Фильтрация///////////////////
$order_id = htmlspecialchars($order_id);
$order_id = mysql_escape_string($order_id);

$status = htmlspecialchars($status);
$status = mysql_escape_string($status);

//////////////////////////////////////////
if(($status == 2) or ($status == 3))
	{
		$sql = "UPDATE orders SET status='".$status."', date_end='".$date_end."', match_login_processed='".$_SESSION['login_match']."' WHERE order_id='$order_id'";
	}
else
	{
		$sql = "UPDATE orders SET status='".$status."' WHERE order_id='$order_id'";
	}




////////////////Вносим изменения в анкету//////////////
$result = mysql_query($sql) or die("<script>alert('Ошибка при записи в таблицу');</script><script>javascript:window.location='../order.php?order_id=".$order_id."'</script>");
///////////////////////////////////////////////////////

/////////////////Перенаправление в анкету///////////////
echo	("
			<script>alert('Статус успешно установлен');</script><script>javascript:window.location='../order.php?order_id=".$order_id."'</script>
		");
///////////////////////////////////////////////////////
?>

