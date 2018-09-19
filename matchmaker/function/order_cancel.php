<?
session_start();
isset($_SESSION['login_match']) or die("<script>javascript:window.location='../index.php'</script>");

include ("../../connect.php");


////////////////Переменные////////////////
$order_id = $_GET['order_id'];
$user_id = $_GET['user_id'];
$type = $_GET['type'];
$date_end = date("Y-m-d");

/////////////Фильтрация///////////////////
$order_id = htmlspecialchars($order_id);
$order_id = mysql_escape_string($order_id);

$user_id = htmlspecialchars($user_id);
$user_id = mysql_escape_string($user_id);

$type = htmlspecialchars($type);
$type = mysql_escape_string($type);

//////////////////////////////////////////

////////////Загружаем баланс клиента/////////////////////////////////////////	
$zapros_balance = "SELECT * FROM clients_services WHERE client_id='".$user_id."'";	
$requirest_balance = mysql_query($zapros_balance);
while($row_balance = mysql_fetch_array($requirest_balance)) 
	{
		$letters = $row_balance['letters'];
		$skypes = $row_balance['skypes'];
		$gifts = $row_balance['gifts'];
		$advice_match = $row_balance['advice_match'];
		$assessment_match = $row_balance['assessment_match'];
	}
/////////////////////////////////////////////////////////////////////////////

/////////////Увеличиваем баланс в зависимости от типа заказа/////////////////
switch ($type) 
	{
		case 0:
			$letters = $letters+1;
		break;
			
		case 1:
			$skypes = $skypes+1;
		break;
		
		case 2:
			$gifts = $gifts+1;
		break;
		
		case 3:
			$advice_match = $advice_match+1;
		break;	
		
		case 4:
			$assessment_match = $assessment_match+1;
		break;	
	}
/////////////////////////////////////////////////////////////////////////////


////////////////Вносим изменения в баланс//////////////
$sql1 = "UPDATE clients_services SET letters='".$letters."', skypes='".$skypes."', gifts='".$gifts."', assessment_match='".$assessment_match."', advice_match='".$advice_match."' WHERE client_id='".$user_id."'";
$result1 = mysql_query($sql1) or die("<script>alert('Ошибка при записи в таблицу баланса');</script><script>javascript:window.location='../order.php?order_id=".$order_id."'</script>");
///////////////////////////////////////////////////////

///////////////Меняем статус заказа////////////////////
$sql2 = "UPDATE orders SET status='3', date_end='".$date_end."', match_login_processed='".$_SESSION['login_match']."' WHERE order_id='$order_id'";
$result2 = mysql_query($sql2) or die("<script>alert('Ошибка при записи в таблицу заказов');</script><script>javascript:window.location='../order.php?order_id=".$order_id."'</script>");
///////////////////////////////////////////////////////

/////////////////Перенаправление в анкету///////////////
echo	("
			<script>alert('Заказ успешно отменен, кредиты возвращены клиенту');</script><script>javascript:window.location='../order.php?order_id=".$order_id."'</script>
		");
///////////////////////////////////////////////////////
?>

