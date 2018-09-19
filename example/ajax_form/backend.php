<?
include("./connect.php");


$text = $_POST['text']." - ".$_POST['status_like'];


//$sql = "INSERT INTO data (text) VALUES ('$text')";
//$result = mysql_query($sql) or die("<script>alert('Ошибка при записи в таблицу');</script>");

$result_ajax = array(
    	'answer' => "Данные добавленны в базу"
    ); 
echo json_encode($result_ajax);


?>