<?
include ("./connect.php");

if(empty($_POST['name']) or empty($_POST['email']) or empty($_POST['phone']) or empty($_POST['birthday']) or empty($_POST['marital_status']) or empty($_POST['message'])) 
	{ 
		echo("
			<script>alert('Заполните все поля');</script>
			<script>javascript:window.location='./index.html'</script>
		");
	exit();
	} 


////////////////Переменные////////////////
$name = $_POST['name'];
$email = $_POST['email'];
$phone = $_POST['phone'];
$birthday = $_POST['birthday'];
$marital_status = $_POST['marital_status'];
$message = $_POST['message'];
$date_add = date("Y-m-d");


/////////////Фильтрация///////////////////
$name = htmlspecialchars($name);
$name = mysql_escape_string($name);

$email = htmlspecialchars($email);
$email = mysql_escape_string($email);

$phone = htmlspecialchars($phone);
$phone = mysql_escape_string($phone);

$birthday = htmlspecialchars($birthday);
$birthday = mysql_escape_string($birthday);

$marital_status = htmlspecialchars($marital_status);
$marital_status = mysql_escape_string($marital_status);

$message = htmlspecialchars($message);
$message = mysql_escape_string($message);

/////////////////////////////////////////////

//////////Проверка на повторы в базе/////////

$result_repeat = mysql_query("SELECT * FROM girls_invite WHERE email='$email';");

$num = mysql_num_rows($result_repeat);
if($num > 0) 
	{ 
		echo("
			<script>alert('Вы уже подали заявку');</script>
			<script>javascript:window.location='./index.html'</script>
		");
	exit();
	} 

/////////////////////////////////////////////

/////////////SQL запрос//////////////////////
$sql = "INSERT INTO girls_invite (name, email, phone, birthday, marital_status, message, date_add) VALUES ('$name', '$email', '$phone', '$birthday', '$marital_status', '$message', '$date_add')";
/////////////////////////////////////////////
$result = mysql_query($sql) or die("Ошибка при записи в базу");
echo("
			<script>alert('Ваша заявка успешно отправленна');</script>
			<script>javascript:window.location='./index.html'</script>
	");


 ?>