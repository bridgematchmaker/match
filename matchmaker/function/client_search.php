<?
session_start();
isset($_SESSION['login_match']) or die("<script>javascript:window.location='../index.php'</script>");

include ("../../connect.php");


////////////////Переменные////////////////
$search_type = $_POST['search_type'];
$search = $_POST['search'];


/////////////Фильтрация///////////////////
$search_type = htmlspecialchars($search_type);
$search_type = mysql_escape_string($search_type);

$search = htmlspecialchars($search);
$search = mysql_escape_string($search);
//////////////////////////////////////////

switch ($search_type)
	{
		case id:
			$sql = "SELECT * FROM clients WHERE user_id='$search';";
		break;
		
		case email:
			$sql = "SELECT * FROM clients WHERE email_client='$search';";
		break;
		
		case phone:
			$sql = "SELECT * FROM clients WHERE telefon='$search';";
		break;

	}

$result_repeat = mysql_query($sql);
$num = mysql_num_rows($result_repeat);
if($num < 1) 
	{ 
		echo("
			<script>alert('Поиск не дал результатов');</script>
			<script>javascript:window.location='../clients.php'</script>
		");
	exit();
	} 	

///////////////////Поиск User ID///////////////////////
$result = mysql_query($sql);
while($row = mysql_fetch_array($result)) 
	{
		$user_id = $row['user_id'];
	}
///////////////////////////////////////////////////////

/////////////////Перенаправление в анкету///////////////
echo	("
			<script>javascript:window.location='../client_profile.php?user_id=".$user_id."'</script>
		");
///////////////////////////////////////////////////////
?>

