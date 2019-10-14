<?php 

include ("../connect.php");

////////////////Переменные////////////////
$first_name = $_POST['first_name'];
$last_name = $_POST['last_name'];
$phone = '+' . $_POST['phone_code'];
$messenger = $_POST['messenger_list'];
$pay_system = $_POST['payments_list'];
$city = $_POST['city_list'];
$tour_price = $_POST['package_list'];
$status = 0;
$datePost = $_POST['date'];
$dateArray = explode('.', $datePost);
$tour_date = $dateArray[2] . '-' . $dateArray[1] . '-' . $dateArray[0];
$now_date = date("Y-m-d");
$date_add = date("Y-m-d G:i:s");

$result_id = mysql_query("SELECT * FROM orders_tour;");
$id = mysql_num_rows($result_id);
$id++;
$rand = str_replace(" ", "", microtime());
$payment_id =  $id . '_' . $rand;


/////////////Фильтрация///////////////////
$first_name = htmlspecialchars($first_name);
$first_name = mysql_escape_string($first_name);

$last_name = htmlspecialchars($last_name);
$last_name = mysql_escape_string($last_name);

$phone = htmlspecialchars($phone);
$phone = mysql_escape_string($phone);

$messenger = htmlspecialchars($messenger);
$messenger = mysql_escape_string($messenger);

$pay_system = htmlspecialchars($pay_system);
$pay_system = mysql_escape_string($pay_system);

$city = htmlspecialchars($city);
$city = mysql_escape_string($city);

$tour_price = htmlspecialchars($tour_price);
$tour_price = mysql_escape_string($tour_price);



/////////////////Проверяем cуществует ли такой тур//////////////////////////////////
$result_access = mysql_query("SELECT * FROM setting_tours WHERE price = '$tour_price';");
$num_access = mysql_num_rows($result_access);
if($num_access !== 1) 
	{ 
		echo("
				<script>javascript:window.location='../index.php'</script>
			");
		exit();
	}
///////////////////////////////////////////////////////////////////////////////////////


//////////////////////////////Загрузка данных тура из базы////////////////////////
$zapros_client = "SELECT * FROM setting_tours WHERE price='$tour_price'";
$requirest_client = mysql_query($zapros_client);
while($row_client = mysql_fetch_array($requirest_client)) 
	{
		$tour_name = $row_client['name'];
    }
//////////////////////////////////////////////////////////////////////////////////////

$dela_time = (strtotime ($tour_date)-strtotime ($now_date))/(60*60*24);
if ($dela_time > 30) {
	$tour_price = $tour_price * 0.95;
}



$sql = "INSERT INTO orders_tour (payment_id, first_name, last_name, phone, messenger, pay_system, city, tour_date, tour_price, tour_name, status) 
		VALUES ('$payment_id', '$first_name', '$last_name', '$phone', '$messenger', '$pay_system', '$city', '$tour_date', '$tour_price', '$tour_name', '$status');";
$result = mysql_query($sql) or die("<script>alert('Error in payment');</script><script>javascript:window.location='".$_SERVER['HTTP_REFERER']."'</script>");



/////////////////Перенаправление в анкету///////////////
echo	("
			<script>javascript:window.location='../member/function/payment/crypt/paykassa_tour_send.php?payment_id=$payment_id'</script>
		");
///////////////////////////////////////////////////////

