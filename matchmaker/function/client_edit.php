<?
session_start();
isset($_SESSION['login_match']) or die("<script>javascript:window.location='../index.php'</script>");

include ("../../connect.php");


////////////////Переменные////////////////
$user_id = $_POST['user_id'];
$first_name = $_POST['first_name'];
$last_name = $_POST['last_name'];
$email_client = $_POST['email_client'];
$telefon = $_POST['telefon'];

/////////////Фильтрация///////////////////
$user_id = htmlspecialchars($user_id);
$user_id = mysql_escape_string($user_id);

$first_name = htmlspecialchars($first_name);
$first_name = mysql_escape_string($first_name);

$last_name = htmlspecialchars($last_name);
$last_name = mysql_escape_string($last_name);

$email_client = htmlspecialchars($email_client);
$email_client = mysql_escape_string($email_client);

$telefon = htmlspecialchars($telefon);
$telefon = mysql_escape_string($telefon);

/////////////////////////////////////////////

//////////Проверка на повторы в базе/////////

$zapros = "SELECT * FROM clients WHERE user_id='".$user_id."'";
$requirest = mysql_query($zapros);
while($row = mysql_fetch_array($requirest)) 
	{
		$old_email = $row['email_client'];
	}
if($old_email <> $email_client)
	{
		$result_repeat = mysql_query("SELECT * FROM clients WHERE email_client='$email_client';");
		$num = mysql_num_rows($result_repeat);
		if($num > 0) 
			{ 
				echo("
						<script>alert('Пользователь с таким E-Mail уже существует');</script>
						<script>javascript:window.location='../client_profile.php?user_id=".$user_id."'</script>
				");
				exit();
			} 
	}
/////////////////////////////////////////////

//////////////////////////////////////////

$sql = "UPDATE clients SET first_name='".$first_name."', last_name='".$last_name."', email_client='".$email_client."', telefon='".$telefon."' WHERE user_id='".$user_id."'";


////////////////Вносим изменения в анкету//////////////
$result = mysql_query($sql) or die("<script>alert('Ошибка при записи в таблицу');</script><script>javascript:window.location='../client_profile.php?user_id=".$user_id."'</script>");
///////////////////////////////////////////////////////

/////////////////Перенаправление в анкету///////////////
echo	("
			<script>alert('Профиль успешно отредактирован');</script><script>javascript:window.location='../client_profile.php?user_id=".$user_id."'</script>
		");
///////////////////////////////////////////////////////
?>

