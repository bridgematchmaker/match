<?
session_start();
isset($_SESSION['login_match']) or die("<script>javascript:window.location='../index.php'</script>");

include ("../../connect.php");


////////////////Переменные////////////////
$girl_id = $_GET['girl_id'];
$foto_id = $_GET['foto_id'];

/////////////Фильтрация///////////////////
$girl_id = htmlspecialchars($girl_id);
$girl_id = mysql_escape_string($girl_id);

$foto_id = htmlspecialchars($foto_id);
$foto_id = mysql_escape_string($foto_id);

////////////////Удаляем старое фото с сервера//////////////
$zapros = "SELECT * FROM girls_foto WHERE girl_id='$girl_id' AND foto_id='$foto_id';";
$requirest = mysql_query($zapros);
while($row = mysql_fetch_array($requirest)) 
	{
		$old_foto = $row['foto'];
		unlink('../../'.$old_foto);
	}

////////////////Удаляем из базы/////////////////////////////
$sql = "DELETE FROM girls_foto WHERE girl_id='$girl_id' AND foto_id='$foto_id';";
$result = mysql_query($sql) or die("<script>alert('Ошибка при записи в таблицу');</script><script>javascript:window.location='../girl_profile.php?girl_id=".$girl_id."'</script>");
////////////////////////////////////////////////////////////

/////////////////Перенаправление в анкету///////////////
echo	("
			<script>alert('Фотография удалена');</script><script>javascript:window.location='../girl_profile.php?girl_id=".$girl_id."'</script>
		");
///////////////////////////////////////////////////////
?>

