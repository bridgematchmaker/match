<?
session_start();
isset($_SESSION['email_client']) or die("<script>javascript:window.location='../../login.php'</script>");

include ("../../connect.php");

$zapros = "SELECT * FROM clients WHERE email_client='".$_SESSION['email_client']."'";

//////////////////////////////Загрузка данных из базы////////////////////////
$requirest = mysql_query($zapros);
while($row = mysql_fetch_array($requirest)) 
	{
		$user_id = $row['user_id'];
    }


////////////////Переменные////////////////
$foto_id = $_GET['foto_id'];

/////////////Фильтрация///////////////////

$foto_id = htmlspecialchars($foto_id);
$foto_id = mysql_escape_string($foto_id);


////////////////Удаляем старое фото с сервера//////////////
$zapros = "SELECT * FROM clients_foto WHERE user_id='$user_id' AND foto_id='$foto_id';";
$requirest = mysql_query($zapros);
while($row = mysql_fetch_array($requirest)) 
	{
		$old_foto = $row['foto'];
		unlink('../../'.$old_foto);
	}

////////////////Удаляем из базы/////////////////////////////
$sql = "DELETE FROM clients_foto WHERE user_id='$user_id' AND foto_id='$foto_id';";
$result = mysql_query($sql) or die("<script>alert('Error database');</script><script>javascript:window.location='../my_fotos.php'</script>");
////////////////////////////////////////////////////////////

/////////////////Перенаправление в анкету///////////////
echo	("
			<script>javascript:window.location='../my_fotos.php'</script>
		");
///////////////////////////////////////////////////////
    
?>