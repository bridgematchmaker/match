<?
session_start();
isset($_SESSION['email_client']) or die("<script>javascript:window.location='../../../login.php'</script>");

include ("../../../../connect.php");

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
        echo("<script>javascript:window.location='../../../index.php'</script>");
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

///////////////////////////////////////////////////////////////////////////////////////

///////////////CONVERT TO BTC/////////////////////
$convert_url = "https://blockchain.info/tobtc?currency=EUR&value=$payment_price";
$payment_amount = file_get_contents($convert_url);
//////////////////////////////////////////////////


///////////////////////////////PAYKASSA////////////////////////////////////////////////////
require_once('paykassa_sci.class.php'); //подключаем класс для работы с SCI, скачать можно по ссылке

    $paykassa_merchant_id = '3993';
    $paykassa_merchant_password = 'CL9rDMM0ZpamuRJuUOsv';

    $amount = $payment_amount;
    $system = 'bitcoin';
    $currency = 'BTC';
    $order_id = $payment_id;
    $comment = $payment_info;

    $paykassa = new PayKassaSCI(
        $paykassa_merchant_id,       // идентификатор магазина
        $paykassa_merchant_password  // пароль магазина
    );

    $system_id = [
        "bitcoin" => 11, // поддерживаемые валюты BTC
        "ethereum" => 12, // поддерживаемые валюты ETH
        "litecoin" => 14, // поддерживаемые валюты LTC
        "dogecoin" => 15, // поддерживаемые валюты DOGE
        "dash" => 16, // поддерживаемые валюты DASH
        "bitcoincash" => 18, // поддерживаемые валюты BCH
        "zcash" => 19, // поддерживаемые валюты ZEC
        "monero" => 20, // поддерживаемые валюты XMR
        "ethereumclassic" => 21, // поддерживаемые валюты ETC
        "ripple" => 22, // поддерживаемые валюты XRP
        "neo" => 23, // поддерживаемые валюты NEO
        "gas" => 24, // поддерживаемые валюты GAS
        "bitcoinsv" => 25, // поддерживаемые валюты BSV
        "waves" => 26, // поддерживаемые валюты WAVES
        "tron" => 27, // поддерживаемые валюты TRX
        "stellar" => 28, // поддерживаемые валюты XLM
    ];

    $res = $paykassa->sci_create_order(
        $amount,    // обязательный параметр, сумма платежа, пример: 1.0433
        $currency,  // обязательный параметр, валюта, пример: BTC
        $order_id,  // обязательный параметр, уникальный числовой идентификатор платежа в вашей системе, пример: 150800
        $comment,   // обязательный параметр, текстовый комментарй платежа, пример: Заказ услуги #150800
        $system_id[$system] // обязательный параметр, указав его Вас минуя мерчант переадресует на платежную систему, пример: 12 - Ethereum
    );

    if ($res['error']) {        // $res['error'] - true если ошибка
        echo $res['message'];   // $res['message'] - текст сообщения об ошибке
        // действия в случае ошибки
    } else {
        // формирование формы платежа
?>
    <form id='formPay' action="<?php echo $res["data"]["url"]; ?>" method="POST">
    </form>
    <script>document.getElementById('formPay').submit();</script>
<? } ?>