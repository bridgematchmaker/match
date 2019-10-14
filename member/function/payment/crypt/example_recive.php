<?php
require_once('paykassa_sci.class.php'); // подключаем класс для работы с SCI, скачать можно по ссылке

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



    // ваш код...
    $data = implode('|', $_POST);
    $data_str = '-------INDEX-------' . PHP_EOL . $data . PHP_EOL . '--------------'  . PHP_EOL;
    file_put_contents("debug.txt", $data_str, FILE_APPEND);


    echo $id.'|success'; // обязательно, для подтверждения зачисления платежа
}


