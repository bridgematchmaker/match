<?php 
include("../connect.php");

if(empty($_POST['id']) or empty($_POST['key']) or empty($_POST['password'])) 
	{ 
		echo("<script>javascript:window.location='../index.php'</script>");
		exit();
	} 
	
$id = $_POST['id'];
$key = $_POST['key'];
$new_password = $_POST['password'];

/////////////Фильтрация///////////////////
$id = htmlspecialchars($id);
$id = mysql_escape_string($id);
$id = preg_replace("/[^0-9]/", '', $id);

$key = htmlspecialchars($key);
$key = mysql_escape_string($key);

$new_password = htmlspecialchars($new_password);
$new_password = mysql_escape_string($new_password);

$new_password = md5($new_password);


//////////Проверка ключа/////////////////////
$result_repeat = mysql_query("SELECT * FROM clients WHERE user_id='$id';");
$num = mysql_num_rows($result_repeat);
	if($num > 0) 
		{ 
			$zapros_id = "SELECT * FROM clients WHERE user_id='$id'";
			$requirest_id = mysql_query($zapros_id);
			while($row = mysql_fetch_array($requirest_id)) 
				{ 
					$valid_key = md5($row['password']);
					$status_system = $row['status_system'];
					$first_name = $row['first_name'];
					$last_name = $row['last_name'];
					$email_client = $row['email_client'];
				}
			if($key == $valid_key) 
				{
					$validation = "1";
				}
		} 
/////////////////////////////////////////////

////////////////////////Запись в базу/////////////////////////////////
if($validation == "1")
	{
		$sql = "UPDATE clients SET password='$new_password' WHERE user_id='$id'";
		$result = mysql_query($sql) or die("<script>alert('Error');</script><script>javascript:window.location='./index.php'</script>");
	}

echo("<script>alert('New password is set');</script><script>javascript:window.location='../login.php'</script>");

?>