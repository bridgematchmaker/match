<?
session_start();
isset($_SESSION['login_admin']) or die("<script>javascript:window.location='../index.php'</script>");

include ("../../connect.php");


////////////////Переменные////////////////
$email_id =  $_POST['id'];
$email_subject =  $_POST['subject'];
$email_content =  $_POST['content'];
//////////////////////////////////////////


/////////////Фильтрация///////////////////
$email_id = htmlspecialchars($email_id);
$email_id = mysql_escape_string($email_id);

$email_subject = mysql_escape_string($email_subject);
$email_content = mysql_escape_string($email_content);
/////////////////////////////////////////////


////////////////Вносим изменения в DB//////////////////
$sql_free = "UPDATE email_templates SET subject='$email_subject', content='$email_content' WHERE id='$email_id'";
$result_free = mysql_query($sql_free) or die("<script>alert('Ошибка при записи в шаблон письма');</script><script>javascript:window.location='../email_templates.php'</script>");

///////////////////////////////////////////////////////

/////////////////ѕеренаправление в стату///////////////
echo	("
			<script>alert('Данные успешно сохранены');</script><script>javascript:window.location='../email_templates.php'</script>
		");
///////////////////////////////////////////////////////
?>

