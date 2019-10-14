<?php
require_once('paykassa_sci.class.php'); // подключаем класс для работы с SCI, скачать можно по ссылке

include ("../../../../connect.php");
$paykassa_merchant_id = '3993';
$paykassa_merchant_password = 'CL9rDMM0ZpamuRJuUOsv';

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

    $result_access = mysql_query("SELECT * FROM payments WHERE payment_id = '$payment_id' AND status = '0';");
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
        $user_id = $row_payment['user_id'];
        }


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
    }

    if ($payment_type == 1) {
        $sql_order = "UPDATE orders SET type = '2', date_add = '$date_add' WHERE order_id = '$payment_order_id';";
        $result = mysql_query($sql_order);
        $date_payment = date("Y-m-d G:i:s");
        $sql_payment = "UPDATE payments SET status = '1', date_payment = '$date_payment', payment_error = ''  WHERE payment_id = '$payment_id';";
        $result = mysql_query($sql_payment);
    }

    echo $id.'|success'; // обязательно, для подтверждения зачисления платежа
}
