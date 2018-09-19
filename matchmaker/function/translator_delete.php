<?
session_start();
isset($_SESSION['login_match']) or die("<script>javascript:window.location='../index.php'</script>");

include ("../../connect.php");


////////////////Переменные////////////////
$translator_id = $_GET['translator_id'];


/////////////Фильтрация///////////////////
$translator_id = htmlspecialchars($translator_id);
$translator_id = mysql_escape_string($translator_id);


////////////////Удаляем аватар с сервера///////////////////
$zapros_avatar = "SELECT * FROM translators WHERE translator_id='$translator_id';";
$requirest_avatar = mysql_query($zapros_avatar);
while($row_avatar = mysql_fetch_array($requirest_avatar)) 
	{
		$translator_foto = $row_avatar['translator_foto'];
		if($translator_foto <> "uploads/translator/avatar.jpg")
			{
				unlink('../../'.$translator_foto);
			}	
	}

////////////////Удаляем из базы/////////////////////////////
$sql = "DELETE FROM translators WHERE translator_id='$translator_id';";
$result = mysql_query($sql) or die("<script>alert('Ошибка при записи в таблицу');</script><script>javascript:window.location='../translator_profile.php?translator_id=".$translator_id."'</script>");
/////////////////Перенаправление в анкету///////////////
echo	("
			<script>alert('Анкета уделенна');</script><script>javascript:window.location='../translators.php'</script>
		");
///////////////////////////////////////////////////////
?>

