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
			$sql = "SELECT * FROM girls WHERE girl_id='$search';";
		break;
		
		case email:
			$sql = "SELECT * FROM girls WHERE question45='$search';";
		break;
		
		case phone:
			$sql = "SELECT * FROM girls WHERE question44='$search';";
		break;
	}

$result_repeat = mysql_query($sql);
$num = mysql_num_rows($result_repeat);
if($num < 1) 
	{ 
		echo("
			<script>alert('Поиск не дал результатов');</script>
			<script>javascript:window.location='../girls.php'</script>
		");
	exit();
	} 	

///////////////////Поиск Girl ID///////////////////////
$result = mysql_query($sql);
while($row = mysql_fetch_array($result)) 
	{
		$girl_id = $row['girl_id'];
	}
///////////////////////////////////////////////////////

/////////////////Перенаправление в анкету///////////////
echo	("
			<script>javascript:window.location='../girl_profile.php?girl_id=".$girl_id."'</script>
		");
///////////////////////////////////////////////////////
?>

