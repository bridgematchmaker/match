<?
session_start();
isset($_SESSION['login_match']) or die("<script>javascript:window.location='../index.php'</script>");

include ("../../connect.php");


////////////////Переменные////////////////
$feed_id = $_GET['feed_id'];


/////////////Фильтрация///////////////////
$feed_id = htmlspecialchars($feed_id);
$$feed_id = mysql_escape_string($feed_id);


////////////////Удаляем фото с сервера///////////////////
$zapros = "SELECT * FROM feeds WHERE id='$feed_id';";
$requirest = mysql_query($zapros);
while($row = mysql_fetch_array($requirest)) 
	{
		$foto = $row['foto'];
		$waiting_foto = $row['waiting_foto'];	
		$present_foto = $row['present_foto'];
		$relation_foto = $row['relation_foto'];
	}

if($foto <> "")
{
    unlink('../../'.$foto);
}

if($waiting_foto <> "")
{
    unlink('../../'.$waiting_foto);
}

if($relation_foto <> "")
{
    unlink('../../'.$relation_foto);
}

if($present_foto <> "")
{
    unlink('../../'.$present_foto);
}

////////////////Удаляем из базы/////////////////////////////
$sql = "DELETE FROM feeds WHERE id='$feed_id';";
$result = mysql_query($sql) or die("<script>alert('Ошибка при записи в таблицу');</script><script>javascript:window.location='../feed.php?feed_id=".$feed_id."'</script>");
/////////////////Перенаправление в анкету///////////////
echo	("
			<script>alert('Событие уделенно');</script><script>javascript:window.location='../feeds.php'</script>
		");
///////////////////////////////////////////////////////
?>

