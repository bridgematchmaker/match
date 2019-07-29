<?php
include ("../../../connect.php");

if(empty($_GET['payment_id'])) 
	{ 
		echo("
			<script>alert('Fill in all required fields');</script>
			<script>javascript:window.location='".$_SERVER['HTTP_REFERER']."'</script>
		");
	    exit();
	} 

$payment_id = $_GET['payment_id'];

$payment_id = htmlspecialchars($payment_id);
$payment_id = mysql_escape_string($payment_id);


/////////////////Проверяем cуществует ли такой не завершенный платеж/////////////////////

$result_access = mysql_query("SELECT * FROM orders_tour WHERE payment_id = '$payment_id' AND status = '0';");
$num_access = mysql_num_rows($result_access);
if($num_access !== 1) 
	{ 
        echo("<script>javascript:window.location='".$_SERVER['HTTP_REFERER']."'</script>");
        die();
	}
///////////////////////////////////////////////////////////////////////////////////////


/////////////////////////////Загрузка данных про платеж////////////////////////////////
$zapros_payment = "SELECT * FROM orders_tour WHERE payment_id = '$payment_id';";
$requirest_payment = mysql_query($zapros_payment);
while($row_payment = mysql_fetch_array($requirest_payment)) 
	{
       $payment_price = $row_payment['tour_price'];
       $payment_info = "Order tour - " . $row_payment['tour_name'];
       $payment_system = $row_payment['payment_system'];
    }

$payment_amount = $payment_price * 100;
///////////////////////////////////////////////////////////////////////////////////////


///////////////////////////////PASTABANK////////////////////////////////////////////////////
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

$fields = $form->getRequest(array(
	'AutoDeposit' => 'true', // PHP serializes boolean values incorrectly, so send this as string
	'Payment' => array(
		'Mode' => 5
	),
	'Order' => array(
		'ID' 			=> $payment_id,
		'Amount'		=> $payment_amount, // In minor units, thus 100 equals 1.00 EUR
		'Currency'		=> 'EUR',
		'Description'	=> $payment_info
	),
	'Notification' => 'I\'m a teapot!'
), array(
	'Callback' 		=> 'https://bridgematchmaker.com/member/function/payment/callback_tour.php',
	'ErrorCallback'		=> 'https://bridgematchmaker.com/member/function/payment/error.php'
));

$action = 'https://demo.ipsp.lv/form/v2/';

?>

<form id='formPay' action="<?php echo $action; ?>" method="post">
	<?php foreach ($fields as $key => $value) { ?>
		<input type="hidden" name="<?php echo $key; ?>" value="<?php echo $value; ?>" />
	<?php } ?>
</form>
<script>document.getElementById('formPay').submit();</script>