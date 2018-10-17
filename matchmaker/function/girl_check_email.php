<?
session_start();
isset($_SESSION['login_match']) or die("<script>javascript:window.location='../index.php'</script>");

include ("../../connect.php");

$email = trim($_POST['email']);
$email = htmlspecialchars($email);
$email = mysql_escape_string($email);

//////////Проверка на повторы в базе/////////

$result_repeat = mysql_query("SELECT * FROM girls WHERE question45='$email';");

$num = mysql_num_rows($result_repeat);
if($num > 0) 
	{ 
		echo("on");
    } else {
        echo("off");
    }

/////////////////////////////////////////////