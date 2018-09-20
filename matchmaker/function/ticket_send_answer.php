<?
session_start();
isset($_SESSION['login_match']) or die("<script>javascript:window.location='../index.php'</script>");

include ("../../connect.php");


////////////////Переменные/////////////////////////////////////////////////////
$ticket_id = $_POST['ticket_id'];
$answer = $_POST['answer'];
$date_end = date("Y-m-d G:i:s");


/////////////Фильтрация////////////////////////////////////////////////////////
$ticket_id = htmlspecialchars($ticket_id);
$ticket_id = mysql_escape_string($ticket_id);

$answer = htmlspecialchars($answer);
$answer = mysql_escape_string($answer);
//////////////////////////////////////////////////////////////////////////////


//////////////////////Вносим изменения в базу/////////////////////////////////
$sql = "UPDATE tickets SET answer='".$answer."', status='1', date_end='".$date_end."' WHERE ticket_id='$ticket_id'";
$result = mysql_query($sql) or die("<script>alert('Ошибка при записи в базу');</script><script>javascript:window.location='../ticket.php?ticket_id=".$ticket_id."'</script>");
/////////////////////////////////////////////////////////////////////////////

/////////////////Перенаправление в тикет////////////////////////////////////
echo	("
			<script>alert('Ответ отправлен клиенту');</script><script>javascript:window.location='../ticket.php?ticket_id=".$ticket_id."'</script>
		");
////////////////////////////////////////////////////////////////////////////