<!-- Выставление счета на оплату, получение адреса для оплаты -->
<?php
    require_once('paykassa_sci.class.php'); //подключаем класс для работы с SCI, скачать можно по ссылке

    $paykassa_merchant_id = '3993';
    $paykassa_merchant_password = 'CL9rDMM0ZpamuRJuUOsv';

    $amount = 0.0001;
    $system = 'bitcoin';
    $currency = 'BTC';
    $order_id = $payment_id;
    $comment = 'comment';

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
<?php } ?>
<!-- /.Выставление счета на оплату, получение адреса для оплаты -->