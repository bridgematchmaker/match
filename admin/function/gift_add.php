<?
session_start();
isset($_SESSION['login_admin']) or die("<script>javascript:window.location='../index.php'</script>");

include ("../../connect.php");
include ("../../lib/image-toolkit/AcImage.php");

if(empty($_POST['gift_name']) or empty($_POST['gift_description'])) 
	{ 
		echo("
			<script>alert('Заполните все поля');</script>
			<script>javascript:window.location='../gifts.php'</script>
		");
	exit();
	} 


////////////////Переменные////////////////
$gift_name = $_POST['gift_name'];
$gift_description = $_POST['gift_description'];

/////////////Фильтрация///////////////////
$gift_name = htmlspecialchars($gift_name);
$gift_name = mysql_escape_string($gift_name);


$gift_description = mysql_escape_string($gift_description);



function can_upload($file){
	// если имя пустое, значит файл не выбран
    if($file['name'] == '')
		return "<script>alert('No file');</script><script>javascript:window.location='../gifts.php'</script>";
	
	/* если размер файла 0, значит его не пропустили настройки 
	сервера из-за того, что он слишком большой */
	if($file['size'] == 0)
		return "<script>alert('Over max size');</script><script>javascript:window.location='../gifts.php'</script>";
	
	// разбиваем имя файла по точке и получаем массив
	$getMime = explode('.', $file['name']);
	// нас интересует последний элемент массива - расширение
	$mime = strtolower(end($getMime));
	// объявим массив допустимых расширений
	$types = array('jpg', 'png', 'gif', 'bmp', 'jpeg');
	
	// если расширение не входит в список допустимых - return
	if(!in_array($mime, $types))
		return "<script>alert('Error type');</script><script>javascript:window.location='../gifts.php'</script>";
	
	return true;
}
  
function make_upload($file){	
	// формируем уникальное имя картинки: случайное число и name
	$name_array = explode(".",$file['name']);
	$name_type = array_pop($name_array);
	$name_foto = time().".".$name_type;
	copy($file['tmp_name'], '../../uploads/gift/' . $name_foto);

	////////////////////////Ресайз фото////////////////////////
	$img = AcImage::createImage('../../uploads/gift/' . $name_foto);
	$img->cropCenter('4pr', '4pr'); // Manual - true-coder.ru/php/toolkit-dlya-resajza-i-kropa-izobrazhenij-na-php.html
	unlink('../../uploads/gift/' . $name_foto);
	$img->save('../../uploads/gift/' . $name_foto);
	///////////////////////////////////////////////////////////


	$foto = 'uploads/gift/'.$name_foto;
	/////////////SQL запрос//////////////////////
	$sql = "INSERT INTO setting_gifts ( gift_name, gift_description, gift_foto) VALUES ('".$GLOBALS['gift_name']."', '".$GLOBALS['gift_description']."', '$foto')";
	/////////////////////////////////////////////
	$result = mysql_query($sql) or die("Ошибка при записи в базу");
}



if($_FILES['file']['name'] <> '')
	{
		// проверяем, можно ли загружать изображение
		$check = can_upload($_FILES['file']);
    
		if($check === true)
			{
				// загружаем изображение на сервер
				make_upload($_FILES['file']);	
				echo "<script>javascript:window.location='../gifts.php'</script>";
			}
		else
			{
				// выводим сообщение об ошибке
				echo "<strong>$check</strong>";  
			}
		
    }
else
	{
		echo "<script>alert('Файл не выбран.');</script><script>javascript:window.location='../gifts.php'</script>";			
	}



?>