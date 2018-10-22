<?
session_start();
isset($_SESSION['login_match']) or die("<script>javascript:window.location='../index.php'</script>");

include ("../../connect.php");


////////////////Переменные////////////////
$girl_id = $_GET['girl_id'];


/////////////Фильтрация///////////////////
$girl_id = htmlspecialchars($girl_id);
$girl_id = mysql_escape_string($girl_id);


////////////////Удаляем аватар с сервера///////////////////
$zapros_avatar = "SELECT * FROM girls WHERE girl_id='$girl_id';";
$requirest_avatar = mysql_query($zapros_avatar);
while($row_avatar = mysql_fetch_array($requirest_avatar)) 
	{
		$old_foto_avatar = $row_avatar['foto'];
		unlink('../../'.$old_foto_avatar);
	}


////////////////Удаляем фото с сервера/////////////////////
$zapros = "SELECT * FROM girls_foto WHERE girl_id='$girl_id';";
$requirest = mysql_query($zapros);
while($row = mysql_fetch_array($requirest)) 
	{
		$old_foto = $row['foto'];
		unlink('../../'.$old_foto);
	}

////////////////Удаляем из базы/////////////////////////////
$sql0 = "DELETE FROM girls_foto WHERE girl_id='$girl_id';";
$result0 = mysql_query($sql0) or die("<script>alert('Ошибка при записи в таблицу');</script><script>javascript:window.location='../girl_profile.php?girl_id=".$girl_id."'</script>");

$sql2 = "DELETE FROM clients_girl WHERE girl_id='$girl_id';";
$result2 = mysql_query($sql2) or die("<script>alert('Ошибка при записи в таблицу');</script><script>javascript:window.location='../girl_profile.php?girl_id=".$girl_id."'</script>");

$sql3 = "DELETE FROM girls WHERE girl_id='$girl_id';";
$result3 = mysql_query($sql3) or die("<script>alert('Ошибка при записи в таблицу');</script><script>javascript:window.location='../girl_profile.php?girl_id=".$girl_id."'</script>");
/////////////////Перенаправление в анкету///////////////
echo	("
			<script>alert('Анкета уделенна');</script><script>javascript:window.location='../girls.php'</script>
		");
///////////////////////////////////////////////////////
?>

