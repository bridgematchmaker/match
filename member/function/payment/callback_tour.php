<?
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


/////////////////Проверяем cуществует ли такой не завершенный платеж/////////////////////

$result_access = mysql_query("SELECT * FROM orders_tour WHERE payment_id = '$payment_id' AND status = '0';");
$num_access = mysql_num_rows($result_access);
if($num_access !== 1) 
	{ 
        echo("<script>javascript:window.location='../../../index.php'</script>");
        die();
	}
///////////////////////////////////////////////////////////////////////////////////////

$date_payment = date("Y-m-d G:i:s");
$sql_payment = "UPDATE orders_tour SET status = '1', date_pay = '$date_payment' WHERE payment_id = '$payment_id';";
$result = mysql_query($sql_payment);

echo("
        <script>alert('Payment is successful);</script>
        <script>javascript:window.location='../../../index.php'</script>
    ");
exit();
