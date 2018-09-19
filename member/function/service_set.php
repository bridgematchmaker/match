<?
session_start();
isset($_SESSION['email_client']) or die("<script>javascript:window.location='../../login.php'</script>");

include ("../../connect.php");

////////////////Переменные////////////////
$client_id = $_POST['user_id'];
$check = $_POST['check'];



/////////////Фильтрация///////////////////
$client_id = htmlspecialchars($client_id);
$client_id = mysql_escape_string($client_id);

$check = htmlspecialchars($check);
$check = mysql_escape_string($check);



if($check == "")
	{
		echo("<script>alert('Please, choose the service - ".$check."');</script><script>javascript:window.location='../choose_service.php'</script>");
	}

if($check == "2")
	{
		$sql = "UPDATE clients SET service='2' WHERE user_id='$client_id'";
	}

if($check == "1")
	{
		$sql = "UPDATE clients SET service='1' WHERE user_id='$client_id'";
	}

////////////////Вносим изменения в анкету//////////////
$result = mysql_query($sql) or die("<script>alert('Ошибка при записи в таблицу');</script><script>javascript:window.location='../index.php'</script>");
///////////////////////////////////////////////////////

/////////////////Перенаправление в анкету///////////////
echo	("
			<script>javascript:window.location='../index.php'</script>
		");
///////////////////////////////////////////////////////

?>