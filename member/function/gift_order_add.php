<?
session_start();
isset($_SESSION['email_client']) or die("<script>javascript:window.location='../../login.php'</script>");

include ("../../connect.php");

////////////////Переменные////////////////
$pay_system = $_POST['pay'];
$girl_id = $_POST['girl_id'];
$gift_id = $_POST['gift_id'];
$delivery = $_POST['delivery'];
$video_report = $_POST['video_report'];

if($video_report == "") {
	$video_report = "No";
}

$result_id = mysql_query("SELECT * FROM payments;");
$id = mysql_num_rows($result_id);
$id++;
$rand = str_replace(" ", "", microtime());
$payment_id =  $id . '_' . $rand;
$type = 1;
$status = 0;


$gift_id = htmlspecialchars($gift_id);
$gift_id = mysql_escape_string($gift_id);

$girl_id = htmlspecialchars($girl_id);
$girl_id = mysql_escape_string($girl_id);

$pay_system = htmlspecialchars($pay_system);
$pay_system = mysql_escape_string($pay_system);

$delivery = htmlspecialchars($delivery);
$delivery = mysql_escape_string($delivery);

$video_report = htmlspecialchars($video_report);
$video_report = mysql_escape_string($video_report);

//////////////////////////////Загрузка данных клиента из базы////////////////////////
$zapros_client = "SELECT * FROM clients WHERE email_client='".$_SESSION['email_client']."'";
$requirest_client = mysql_query($zapros_client);
while($row_client = mysql_fetch_array($requirest_client)) 
	{
        $user_id = $row_client['user_id'];
        $email_client = $row_client['email_client'];
		$first_name = $row_client['first_name'];
		$last_name = $row_client['last_name'];
        $matchmaker_login = $row_client['matchmaker_login'];
    }
//////////////////////////////////////////////////////////////////////////////////////

/////////////////Загружаем данные подарка//////////////////////////////////////////////
$zapros_gift = "SELECT * FROM setting_gifts WHERE gift_id='$gift_id'";
$result_gift = mysql_query($zapros_gift);
while ($row_gift = mysql_fetch_assoc($result_gift)) 
    {	
        $gift_name = $row_gift['gift_name'];
        $gift_price = $row_gift['gift_price'];
        $gift_description = $row_gift['gift_description'];
        $gift_foto = $row_gift['gift_foto'];
    }
///////////////////////////////////////////////////////////////////////////////////////

////////////Загружаем баланс клиента/////////////////////////////////////////	
$zapros_balance = "SELECT * FROM clients_services WHERE client_id='".$user_id."'";	
$requirest_balance = mysql_query($zapros_balance);
while($row_balance = mysql_fetch_array($requirest_balance)) 
	{
		$gifts = $row_balance['gifts'];
	}

///////////////Проверяем хватает ли кредитов для отправки////////////////////////////
if($gifts < 1)
	{
		echo("<script>javascript:window.location='../msg.php?type=1&msg_id=1&redirect=0'</script>");
		exit();
	}
/////////////////////////////////////////////////////////////////////////////////////
$gifts--;
$description1 = "Клиент ID:".$user_id." заказал Подарок (ID:$gift_id - $gift_name) для девушки ID:".$girl_id;
$description2 = $payment_id;
/////////////SQL запрос//////////////////////
$sql_order = "INSERT INTO orders (user_id, user_email, girl_id, type, description1, description2, gift_delivery, gift_video_report, status) VALUES ('$user_id', '$email_client', '$girl_id', '-2', '$description1', '$description2', '$delivery', '$video_report', '0')";
$result_order = mysql_query($sql_order) or die("Ошибка при записи в таблицу order");
$sql_balance = "UPDATE clients_services SET gifts='".$gifts."' WHERE client_id='".$user_id."'";
$result_balance = mysql_query($sql_balance) or die("Ошибка при записи в таблицу balance");
/////////////////////////////////////////////

/////////////////Загружаем id заказ//////////////////////////////////////////////
$zapros_order = "SELECT * FROM orders WHERE description2='$description2'";
$result_order = mysql_query($zapros_order);
while ($row_order = mysql_fetch_assoc($result_order)) 
    {	
        $order_id = $row_order['order_id'];
    }
///////////////////////////////////////////////////////////////////////////////////

$payment_info = "Order of the gift";

////////////////////Расчет стоимости подарка/////////////////
if ($delivery == "Yes") {
    $price = $gift_price + 12;
    if ($video_report == "Yes") {
        $price = $price + ($gift_price * 0.1);
    }
} else {
    $price = $gift_price;
}
//////////////////////////////////////////////////////////////

$sql = "INSERT INTO payments (payment_id, order_id, user_id, price, type, payment_info, payment_system, status) VALUES ('$payment_id', '$order_id', '$user_id', '$price', '$type', '$payment_info', '$pay_system', '$status');";
$result = mysql_query($sql) or die("<script>alert('Error in payment');</script><script>javascript:window.location='".$_SERVER['HTTP_REFERER']."'</script>");



/////////////////Перенаправление в анкету///////////////
echo	("
			<script>javascript:window.location='../pay.php?payment_id=$payment_id'</script>
		");
///////////////////////////////////////////////////////

