<?
session_start();
isset($_SESSION['email_client']) or die("<script>javascript:window.location='../login.php'</script>");
?>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1" />
        <meta name="description" content="Something There">
        <meta name="author" content="">
        <title>BridgeMatchmaker</title>

        <link href="https://fonts.googleapis.com/css?family=Open+Sans:400,600" rel="stylesheet">
        <!-- Bootstrap -->
        <link href="assets/css/bootstrap.min.css" rel="stylesheet" type="text/css">
        <!-- Font Awesome -->
        <link href="assets/css/font-awesome.min.css" rel="stylesheet" type="text/css">
        <!-- Owl Carousel -->
        <link href="assets/css/owl.carousel.min.css" rel="stylesheet" type="text/css">
        <!-- Main Style -->
        <link href="assets/css/jquery.mCustomScrollbar.min.css" rel="stylesheet" type="text/css">

        <link href="assets/css/select2.css" rel="stylesheet" type="text/css">
        <link href="assets/css/select2-conf.css" rel="stylesheet" type="text/css">
        <link href="assets/css/style.css" rel="stylesheet" type="text/css">
        <!--Style Content Page-->
        <link href="assets/css/style.payment.css" rel="stylesheet" type="text/css">
        <!-- Favicon -->
        <link rel="icon" href="" type="image/png" />

    </head>

<body>
<?
include("../connect.php");
include("./function/user_bd.php");
include("./function/user_check.php");

$page_menu_name = "Orders and Payments";

$quantity=15; // Количество записей на странице
$limit=5; // Ограничиваем количество ссылок, которые будут выводиться перед и после текущей страницы
$page = $_GET[page];


// Если значение page= не является числом, то показываем
// пользователю первую страницу
if(!is_numeric($page)) $page=1;

// Если пользователь вручную поменяет в адресной строке значение page= на нуль,
// то мы определим это и поменяем на единицу, то-есть отправим на первую
// страницу, чтобы избежать ошибки
if ($page<1) $page=1;

// Узнаем количество всех доступных записей 
$result_count = mysql_query("SELECT * FROM payments WHERE user_id='$user_id';");
$num = mysql_num_rows($result_count);


// Вычисляем количество страниц, чтобы знать сколько ссылок выводить
$pages = $num/$quantity;

// Округляем полученное число страниц в большую сторону
$pages = ceil($pages);


// Здесь мы увеличиваем число страниц на единицу чтобы начальное значение было
// равно единице, а не нулю. Значение page= будет
// совпадать с цифрой в ссылке, которую будут видеть посетители
$pages++; 

// Если значение page= больше числа страниц, то выводим первую страницу
if ($page>$pages) $page = 1;

// Переменная $list указывает с какой записи начинать выводить данные.
// Если это число не определено, то будем выводить
// с самого начала, то-есть с нулевой записи
if (!isset($list)) $list=0;

// Чтобы у нас значение page= в адресе ссылки совпадало с номером
// страницы мы будем его увеличивать на единицу при выводе ссылок, а
// здесь наоборот уменьшаем чтобы ничего не нарушить.
$list=--$page*$quantity;

$page_zapros = "SELECT * FROM payments WHERE user_id='$user_id' ORDER BY id DESC LIMIT $quantity OFFSET $list;";



require "./header.php";
?>
<div class="site-wrapper">
    <div class="container">
        <div class="row">
			<? require "./menu.php"; ?>
			
			<!-- Main Page Content (start)-->
            <div class="main-content col-md-9">
            <div class="row">
                    <div class="col-lg-11">
                        <h3 class="page-title text-gray">
                            Orders and Payments
                        </h3>
                        <p class="text-dark text-sbold">
                            The information in the table contains all the orders that you used sorted by date of use. Tab  "Purchase" contains information about your purchase If you have  difficulty in finding the order you need, use the filters above.
                        </p>

                        <div class="payment-block">
                            <ul class="block-btn">
                                <li><a href="./orders.php">Orders</a></li>
                                <li><a href="./payments.php" class="active">Payments</a></li>
                            </ul>
                            <div class="payment-inner">
                                <div class="row">
                                   <!-- <div class="col-lg-5">
                                       <div class="filter-block">
                                           <p>Order type</p>
                                           <select name="orderType" >
                                               <option value="1">type1</option>
                                               <option value="2">type2</option>
                                               <option value="3">type3</option>
                                               <option value="4">type4</option>
                                           </select>
                                       </div>
                                   </div>
                                   <div class="col-lg-5 mt-2 mt-lg-0">
                                       <div class="filter-block">
                                           <p>Order status</p>
                                           <select name="orderStatus" >
                                               <option value="1">Completed</option>
                                               <option value="2">Pending</option>
                                           </select>
                                       </div>
                                   </div>
                                   <div class="col-lg-2 mt-2 mt-lg-0">
                                       <a href="#" class="btn-gray">Filter</a>
                                   </div> -->
                                    <div class="col-12 mt-3">
                                        <div class="table-responsive">
                                            <table class="table  table-custom">
                                                <thead>
                                                <tr>
                                                    <th>Payment  ID</th>
                                                    <th>Payment info</th>
                                                    <th>Price</th>
                                                    <th>Order status</th>
                                                    <th>Payment  Created</th>
                                                    <th>Payment  Finishing</th>
                                                </tr>
                                                </thead>
                                                <tbody>
                                                <?
                                                    // Делаем запрос подставляя значения переменных $quantity и $list
							                        $result = mysql_query($page_zapros);

                                                    // Считаем количество полученных записей
                                                    $num_result = mysql_num_rows($result);

                                                    for ($i = 0; $i<$num_result; $i++) 
                                                    {
                                                
                                                        $row = mysql_fetch_array($result);
                                                    
                                                        //////////////////////Загружаем данные пользователей/////////////////////////   
                                                        $payment_id = $row['payment_id'];
                                                        $payment_system = $row['payment_system'];
                                                        $payment_date_add = $row['date_add'];
                                                        $payment_date_payment = $row['date_payment'];
                                                        $payment_price = $row['price'];
                                                        $payment_type = $row['type'];
                                                        $payment_status = $row['status'];
                                                        $payment_info = $row['payment_info'];

                                                        if ($payment_date_payment == "0000-00-00 00:00:00") {
                                                            $payment_date_payment ="";
                                                        }
                                                            
                                                        switch ($payment_status)
                                                            {
                                                                case 0:
                                                                    $payment_status_print = "Unpaid (<a href='./pay.php?payment_id=$payment_id'>PAY</a>)";
                                                                break;

                                                                case 1:
                                                                    $payment_status_print = "Completed";
                                                                break;
                                                            }
                                                        
                                                        

                                                        echo("
                                                            <tr>
                                                                <td>$payment_id</td>
                                                                <td>$payment_info</td>
                                                                <td>$payment_price EUR</td>
                                                                <td>$payment_status_print</td>
                                                                <td>$payment_date_add</td>
                                                                <td>$payment_date_payment</td>
                                                            </tr>
                                                            ");
                                                    }
                                                     
                                                ?>
                                                </tbody>
                                            </table>
                                        </div>

                                    </div>
                                    <div class="col-12">
                                        <ul class="pagination">
                                            <li class="pr-3"> Pages</li>
                                            <?
                                                // На данном этапе номер текущей страницы = $page+1
                                                $_this = $page+1;
                                                // Узнаем с какой ссылки начинать вывод
                                                $start = $_this-$limit;

                                                // Узнаем номер последней ссылки для вывода
                                                $end = $_this+$limit;

                                                // Выводим ссылки на все страницы
                                                // Начальное число $j в нашем случае должно равнятся единице, а не нулю
                                                for ($j = 1; $j<$pages; $j++) 
                                                    {
                                                        // Выводим ссылки только в том случае, если их номер больше или равен
                                                        // начальному значению, и меньше или равен конечному значению
                                                        if ($j>=$start && $j<=$end) 
                                                            {
                                                                // Ссылка на текущую страницу выделяется жирным
                                                                if ($j==($page+1)) echo '<li><a class="active" href="' . $_SERVER['SCRIPT_NAME'] . '?page=' . $j . '">' . $j . '</a></li>';
                                                                // Ссылки на остальные страницы
                                                                else echo '<li><a href="' . $_SERVER['SCRIPT_NAME'] . '?page=' . $j . '">' . $j . '</a></li>';
                                                            }
                                                    }

                                            ?>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
			<!-- Main Page Content (end)-->
        </div>
    </div>
</div>

<? require "footer.php";?>

<!-- Site Scripts (start)-->
    <script src="assets/js/jquery.min.js"></script>
    <script src="assets/js/owl.carousel.min.js"></script>
    <script src="assets/js/bootstrap.min.js"></script>
    <script src="assets/js/jquery.mousewheel.min.js"></script>
    <script src="assets/js/jquery.mousewheel-3.0.6.min.js"></script>
    <script src="assets/js/jquery.mCustomScrollbar.min.js"></script>
	<script src="assets/js/select2_2.min.js"></script>
	<script src="assets/js/select2.js"></script>
    <script src="assets/js/custom.js"></script>
<!-- Site Scripts (end)-->

</body>

</html>