<?
session_start();
isset($_SESSION['login_admin']) or die("<script>javascript:window.location='index.php'</script>");

include("../connect.php");

$payment_id = $_GET['payment_id'];
$payment_id = htmlspecialchars($payment_id);
$payment_id = mysql_escape_string($payment_id);

/////////////////////////////Загрузка данных про платеж////////////////////////////////
$zapros_payment = "SELECT * FROM payments WHERE payment_id = '$payment_id';";
$requirest_payment = mysql_query($zapros_payment);
while($row_payment = mysql_fetch_array($requirest_payment)) 
	{
       $payment_status = $row_payment['status'];
       $payment_user_id = $row_payment['user_id'];
       $payment_price = $row_payment['price'];
       $payment_type = $row_payment['type'];
       $payment_error = $row_payment['payment_error'];
       $payment_info = $row_payment['payment_info'];
       $payment_tarif_name = $row_payment['tarif_name'];
       $payment_order_id = $row_payment['order_id'];
       $payment_system = $row_payment['payment_system'];
       $date_add = $row_payment['date_add'];
       $date_payment = $row_payment['date_payment'];
    }

if ($payment_type == "0") {
    $payment_type_print = "Покупка тарифного плана"; 
} elseif ($payment_type == "1") {
    $payment_type_print = "Покупка подарка"; 
}

switch ($payment_status)
    {
        case 0:
            $status_print = "Не оплаченный";
        break;

        case 1:
            $status_print = "Оплаченный";
        break;
    }
///////////////////////////////////////////////////////////////////////////////////////

$zapros = "SELECT * FROM clients WHERE user_id='".$payment_user_id."'";

$requirest = mysql_query($zapros);
while($row = mysql_fetch_array($requirest)) {
    $foto = "../".$row['foto'];	  
}

?>
<html>
<head>
	<meta charset="utf-8">
	<title>Админка</title>
	<link rel="stylesheet" href="./css/bootstrap.min.css" />
	<link rel="stylesheet" href="./css/font-awesome.min.css" />
	<script src="./js/jquery-1.11.3.min.js"></script>
	<script src="./js/bootstrap.min.js"></script>  
</head>

<?
$page_name = "payments";
include "menu.php";
?>


<body>

<div class="container" style="margin-top:40px;">
<div id="main">
	<div class="row" id="real-estates-detail">
		<div class="col-lg-4 col-md-4 col-xs-12">
			<div class="panel panel-default">
					<div class="panel-heading">
						<header class="panel-title">
							<div class="text-center">
								<strong>Payment id: <? echo $payment_id; ?></strong>
							</div>
						</header>
					</div>
					<div class="panel-body">
						<div class="text-center" id="author">
							<img height="250" width="250" src="<? echo $foto; ?>">	
							<hr>
							<h4>Статус: <b><? echo $status_print; ?></b></h4>
							<hr>
						</div>
					</div>
			</div>
		</div>
		<div class="col-lg-8 col-md-8 col-xs-12">
			<div class="panel">
				<ul id="myTab" class="nav nav-pills">
					<li class="active"><a href="#ticket" data-toggle="tab">Описание</a></li>
				</ul>
				<div class="panel-body">
					<div id="myTabContent" class="tab-content">
						<div class="tab-pane fade active in" id="ticket">
							<table class="table table-striped table-bordered">
									<tr><td class="active">Дата создания:</td><td><? echo $date_add; ?></td></tr>
									<tr><td class="active">ID клиента:</td><td><? echo $payment_user_id; ?></td></tr>
                                    <tr><td class="active">Платежная система:</td><td><? echo $payment_system; ?></td></tr>
									<tr><td class="active">Сумма:</td><td><? echo $payment_price; ?></td></tr>
                                    <tr><td class="active">Платежная система:</td><td><? echo $payment_system; ?></td></tr>
									<tr><td class="active">Тип заказа:</td><td><? echo $payment_type_print; ?></td></tr>
									<tr><td class="active">Описание заказа:</td><td><? echo $payment_info; ?></td></tr>
                                    <? if($payment_type == "0") echo('<tr><td class="active">Тарифный план:</td><td>' . $payment_tarif_name . '</td></tr>'); ?>
                                    <? if($payment_type == "1") echo('<tr><td class="active">ID заказа подарка:</td><td>' . $payment_order_id . '</td></tr>'); ?>
									<tr><td class="active">Дата оплаты:</td><td><? echo $date_payment; ?></td></tr>
                                    <tr><td class="active">Ошибка при попытке платежа:</td><td><? echo $payment_error; ?></td></tr>
							</table>
                        </div>
					</div>
				</div>
			</div>
		</div>
	</div>
	
</div>

</body>
</html>