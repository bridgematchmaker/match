<?
session_start();
isset($_SESSION['email_client']) or die("<script>javascript:window.location='../../login.php'</script>");

include ("../../connect.php");

////////////////Переменные////////////////
$tarif_name = $_POST['service'];
$pay_system = $_POST['pay'];

$result_id = mysql_query("SELECT * FROM payments;");
$id = mysql_num_rows($result_id);
$id++;
$rand = str_replace(" ", "", microtime());
$payment_id =  $id . '_' . $rand;
$type = 0;
$status = 0;

/////////////Фильтрация///////////////////
$tarif_name = htmlspecialchars($tarif_name);
$tarif_name = mysql_escape_string($tarif_name);

$pay_system = htmlspecialchars($pay_system);
$pay_system = mysql_escape_string($pay_system);


//////////////////////////////Загрузка данных клиента из базы////////////////////////
$zapros_client = "SELECT * FROM clients WHERE email_client='".$_SESSION['email_client']."'";
$requirest_client = mysql_query($zapros_client);
while($row_client = mysql_fetch_array($requirest_client)) 
	{
		$user_id = $row_client['user_id'];
		$first_name = $row_client['first_name'];
		$last_name = $row_client['last_name'];
		$country = $row_client['country'];
		$telefon = $row_client['telefon'];
    }
//////////////////////////////////////////////////////////////////////////////////////

/////////////////Проверяем cуществует ли такой тариф//////////////////////////////////

$result_access = mysql_query("SELECT * FROM setting_tarif WHERE tarif_name = '$tarif_name';");
$num_access = mysql_num_rows($result_access);
if($num_access !== 1) 
	{ 
		echo("
				<script>javascript:window.location='../index.php'</script>
			");
		exit();
	}
///////////////////////////////////////////////////////////////////////////////////////

/////////////////////////////Загрузка данных про тариф////////////////////////////////
$zapros_tarif = "SELECT * FROM setting_tarif WHERE tarif_name = '$tarif_name';";
$requirest_tarif = mysql_query($zapros_tarif);
while($row_tarif = mysql_fetch_array($requirest_tarif)) 
	{
		
       $tarif_day = $row_tarif['tarif_day'];
       $tarif_price = $row_tarif['tarif_price'];
       $tarif_description = $row_tarif['description'];
	}
///////////////////////////////////////////////////////////////////////////////////////

$tarif_name = strtoupper($tarif_name);
$payment_info = "Заказ тарфиного плана: $tarif_name";

$sql = "INSERT INTO payments (payment_id, tarif_name, user_id, price, type, payment_info, status) VALUES ('$payment_id', '$tarif_name', '$user_id', '$tarif_price', '$type', '$payment_info', '$status');";
$result = mysql_query($sql) or die("<script>alert('Error in payment');</script><script>javascript:window.location='".$_SERVER['HTTP_REFERER']."'</script>");



/////////////////Перенаправление в анкету///////////////
echo	("
			<script>javascript:window.location='../index.php?payment=$payment_id'</script>
		");
///////////////////////////////////////////////////////
