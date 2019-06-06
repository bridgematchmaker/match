<?
session_start();
isset($_SESSION['email_client']) or die("<script>javascript:window.location='../../../login.php'</script>");

include ("../../../connect.php");
require('ecommerce.php');

$configs = array(
	'ecom-demo' => array(
		'merchant_id'	=> '3720000',
		'gateway_key'	=> './ecom-demo_gateway.pem',
		'merchant_key'	=> './ecom-demo_merchant.pem',
		'key_index'		=> 1
	),
);

$ecom = new Ecommerce($configs['ecom-demo']);
$form = new EcommerceFORM($ecom);
$response = $form->getResponse($_POST);
$payment_id = $response->Order->ID;

//////////////////////////////Загрузка данных клиента из базы////////////////////////
$zapros_client = "SELECT * FROM clients WHERE email_client='".$_SESSION['email_client']."'";
$requirest_client = mysql_query($zapros_client);
while($row_client = mysql_fetch_array($requirest_client)) 
	{
		$user_id = $row_client['user_id'];
    }
//////////////////////////////////////////////////////////////////////////////////////

/////////////////Проверяем cуществует ли такой не завершенный платеж/////////////////////

$result_access = mysql_query("SELECT * FROM payments WHERE payment_id = '$payment_id' AND status = '0' AND user_id = '$user_id';");
$num_access = mysql_num_rows($result_access);
if($num_access !== 1) 
	{ 
        echo("<script>javascript:window.location='../../index.php'</script>");
        die();
	}
///////////////////////////////////////////////////////////////////////////////////////


/////////////////////////////Загрузка данных про платеж////////////////////////////////
$zapros_payment = "SELECT * FROM payments WHERE payment_id = '$payment_id';";
$requirest_payment = mysql_query($zapros_payment);
while($row_payment = mysql_fetch_array($requirest_payment)) 
	{
       $payment_price = $row_payment['price'];
       $payment_type = $row_payment['type'];
       $payment_info = $row_payment['payment_info'];
       $payment_tarif_name = $row_payment['tarif_name'];
       $payment_order_id = $row_payment['order_id'];
       $payment_system = $row_payment['payment_system'];
    }

$payment_amount = $payment_price * 100;

if ($payment_type == 0) {
	/////////Загрузка данных про тариф////////////////////////////////
	$zapros_tarif = "SELECT * FROM setting_tarif WHERE tarif_name = '$payment_tarif_name';";
	$requirest_tarif = mysql_query($zapros_tarif);
	while($row_tarif = mysql_fetch_array($requirest_tarif)) 
		{
			$tarif_letters = $row_tarif['tarif_letters'];
			$tarif_skypes = $row_tarif['tarif_skypes'];
			$tarif_gifts = $row_tarif['tarif_gifts'];
			$tarif_advice_match = $row_tarif['tarif_advice_match'];
			$tarif_assessment_match = $row_tarif['tarif_assessment_match'];
		}
	//////////////////////////////////////////////////////////////////

	$date_tarif_set = date("Y-m-d");
	if ($payment_tarif_name == "SILVER") { $status_tarif = '1'; }
	if ($payment_tarif_name == "GOLD") { $status_tarif = '2'; }
	if ($payment_tarif_name == "PREMIUM") { $status_tarif = '3'; }

	$sql_tarif = "UPDATE clients SET status_tarif='".$status_tarif."', date_tarif_set='".$date_tarif_set."' WHERE user_id='$user_id'";
	$result = mysql_query($sql_tarif);

	//////////Загружаем баланс клиента///////////////////////////////	
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
	/////////////////////////////////////////////////////////////////

	$letters = $letters + $tarif_letters;
	$skypes = $skypes + $tarif_skypes;
	$gifts = $gifts + $tarif_gifts;
	$advice_match = $advice_match + $tarif_advice_match;
	$assessment_match = $assessment_match + $tarif_assessment_match;

	//////////////Вносим изменения в баланс//////////////
	$sql_balance = "UPDATE clients_services SET letters='".$letters."', skypes='".$skypes."', gifts='".$gifts."', assessment_match='".$assessment_match."', advice_match='".$advice_match."' WHERE client_id='".$user_id."'";
	$result_balance = mysql_query($sql_balance);
	/////////////////////////////////////////////////////
	
	$date_payment = date("Y-m-d G:i:s");
	$sql_payment = "UPDATE payments SET status = '1', date_payment = '$date_payment', payment_error = ''  WHERE payment_id = '$payment_id';";
	$result = mysql_query($sql_payment);

	echo("
				<script>javascript:window.location='../../msg.php?type=0&msg_id=10&redirect=0'</script>
		");
	exit();
	

}

if ($payment_type == 1) {
	$sql_order = "UPDATE orders SET type = '2', date_add = '$date_add' WHERE order_id = '$payment_order_id';";
	$result = mysql_query($sql_order);
	$date_payment = date("Y-m-d G:i:s");
	$sql_payment = "UPDATE payments SET status = '1', date_payment = '$date_payment', payment_error = ''  WHERE payment_id = '$payment_id';";
	$result = mysql_query($sql_payment);

	echo("
				<script>javascript:window.location='../../msg.php?type=0&msg_id=10&redirect=0'</script>
		");
	exit();
}
