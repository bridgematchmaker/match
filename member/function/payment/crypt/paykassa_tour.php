<?php
require_once('paykassa_sci.class.php'); // подключаем класс для работы с SCI, скачать можно по ссылке

include ("../../../../connect.php");
$paykassa_merchant_id = '3998';
$paykassa_merchant_password = 'TzD8diNgWSHbnkMg4OKQ';

$paykassa = new PayKassaSCI(
    $paykassa_merchant_id,      // идентификатор магазина
    $paykassa_merchant_password // пароль магазина
);

$res = $paykassa->sci_confirm_order();

if ($res['error']) {        // $res['error'] - true если ошибка
    die($res['message']); 	// $res['message'] - текст сообщения об ошибке
    // действия в случае ошибки
} else {
    // действия в случае успеха
    $id = $res["data"]["order_id"];        // уникальный числовой идентификатор платежа в вашей системе, пример: 150800
    $transaction = $res["data"]["transaction"]; // номер транзакции в системе paykassa: 96401
    $hash = $res["data"]["hash"];               // hash, пример: bde834a2f48143f733fcc9684e...
    $currency = $res["data"]["currency"];       // валюта платежа, пример: DASH
    $system = $res["data"]["system"];           // система, пример: Dash
    $address = $res["data"]["address"];         // адрес криптовалютного кошелька, пример: Xybb9RNvdMx8vq7z24srfr1FQCAFbFGWLg
    $partial = $res["data"]["partial"];         // настройка приема недоплаты или переплаты, 'yes' - принимать, 'no' - не принимать
    $amount = (float)$res["data"]["amount"];    // сумма счета, пример: 1.0000000


    $payment_id = $id;

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
  
    echo $id.'|success'; // обязательно, для подтверждения зачисления платежа
}
