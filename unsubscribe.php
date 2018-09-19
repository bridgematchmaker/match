<?php 
include("./connect.php");

if(empty($_GET['email']))
	{ 
		echo("<script>javascript:window.location='./index.php'</script>");
		exit();
	} 
	
$email= $_GET['email'];

/////////////Фильтрация///////////////////

$email = htmlspecialchars($email);
$email = mysql_escape_string($email);


//////////Проверка ключа/////////////////////
$result_repeat = mysql_query("SELECT * FROM clients WHERE email_client='$email';");
$num = mysql_num_rows($result_repeat);
	if($num > 0) 
		{ 
			$sql = "UPDATE clients SET status_email='0' WHERE email_client='$email'";
			$result = mysql_query($sql) or die("<script>alert('Error');</script><script>javascript:window.location='./index.php'</script>");
			
		} 
/////////////////////////////////////////////

echo "<script>alert('You are unsubscribed from newsletters');</script><script>javascript:window.location='./index.php'</script>";	
	
//////////////////////////////////////////////////////////////////////////////////////////
 
?>