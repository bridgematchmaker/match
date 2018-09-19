<?
session_start();
isset($_SESSION['email_client']) or die("<script>javascript:window.location='../../login.php'</script>");

include ("../../connect.php");

////////////////Переменные////////////////
$client_id = $_POST['user_id'];
$msg_id = $_POST['msg_id'];
$date_read = date("Y-m-d");

/////////////Фильтрация///////////////////
$client_id = htmlspecialchars($client_id);
$client_id = mysql_escape_string($client_id);

$msg_id = htmlspecialchars($msg_id);
$msg_id = mysql_escape_string($msg_id);

$sql = "INSERT INTO notifications_status (client_id,msg_id,date_read) VALUES ('$client_id', '$msg_id', '$date_read')";
$result = mysql_query($sql) or die("");

?>