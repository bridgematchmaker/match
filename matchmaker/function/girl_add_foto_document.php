<?
session_start();
isset($_SESSION['login_match']) or die("<script>javascript:window.location='../index.php'</script>");

include ("../../connect.php");
include ("../../lib/image-toolkit/AcImage.php");
$girl_id = $_POST['girl_id'];

function can_upload($file){
	$girl_id = $_POST['girl_id'];
	// если имя пустое, значит файл не выбран
    if($file['name'] == '')
		return "<script>alert('No file');</script><script>javascript:window.location='../girl_profile.php?girl_id=".$girl_id."'</script>";
	
	/* если размер файла 0, значит его не пропустили настройки 
	сервера из-за того, что он слишком большой */
	if($file['size'] == 0)
		return "<script>alert('Over max size');</script><script>javascript:window.location='../girl_profile.php?girl_id=".$girl_id."'</script>";
	
	// разбиваем имя файла по точке и получаем массив
	$getMime = explode('.', $file['name']);
	// нас интересует последний элемент массива - расширение
	$mime = strtolower(end($getMime));
	// объявим массив допустимых расширений
	$types = array('jpg', 'png', 'gif', 'bmp', 'jpeg');
	
	// если расширение не входит в список допустимых - return
	if(!in_array($mime, $types))
		return "<script>alert('Error type');</script><script>javascript:window.location='../girl_profile.php?girl_id=".$girl_id."'</script>";
	
	return true;
}
  
function make_upload($file){	
	// формируем уникальное имя картинки: случайное число и name
	$girl_id = $_POST['girl_id'];
	$name_array = explode(".",$file['name']);
	$name_type = array_pop($name_array);
	$name = time().".".$name_type;
	copy($file['tmp_name'], '../../uploads/girls/gallery_foto/document/' . $name);
	$foto = 'uploads/girls/gallery_foto/document/'.$name;
	
	////////////////////////Ресайз фото////////////////////////
	$img = AcImage::createImage('../../uploads/girls/gallery_foto/document/' . $name);
	$img->cropCenter('3pr', '4pr'); // Manual - true-coder.ru/php/toolkit-dlya-resajza-i-kropa-izobrazhenij-na-php.html
	$img->resizeByWidth(300);
	unlink('../../uploads/girls/gallery_foto/document/' . $name);
	$img->save('../../uploads/girls/gallery_foto/document/' . $name);
	///////////////////////////////////////////////////////////
	
	$sql = "INSERT INTO girls_foto_document (girl_id,foto) VALUES ('$girl_id', '$foto')";
	$result = mysql_query($sql) or die("Ошибка при записи в базу");;
}



if(isset($_FILES['file']))
	{
		// проверяем, можно ли загружать изображение
		$check = can_upload($_FILES['file']);
    
		if($check === true)
			{
				// загружаем изображение на сервер
				make_upload($_FILES['file']);
				echo "<script>alert('Фотография загружена');</script><script>javascript:window.location='../girl_profile.php?girl_id=".$girl_id."'</script>";
			}
		else
			{
				// выводим сообщение об ошибке
				echo "<strong>$check</strong>";  
			}
    }


?>

