<?
session_start();
isset($_SESSION['login_match']) or die("<script>javascript:window.location='../index.php'</script>");

include ("../../connect.php");
include ("../../lib/image-toolkit/AcImage.php");
$translator_id = $_POST['translator_id'];

function can_upload($file){
	$translator_id = $_POST['translator_id'];
	// если имя пустое, значит файл не выбран
    if($file['name'] == '')
		return "<script>alert('No file');</script><script>javascript:window.location='../translator_profile.php?translator_id=".$translator_id."'</script>";
	
	/* если размер файла 0, значит его не пропустили настройки 
	сервера из-за того, что он слишком большой */
	if($file['size'] == 0)
		return "<script>alert('Over max size');</script><script>javascript:window.location='../translator_profile.php?translator_id=".$translator_id."'</script>";
	
	// разбиваем имя файла по точке и получаем массив
	$getMime = explode('.', $file['name']);
	// нас интересует последний элемент массива - расширение
	$mime = strtolower(end($getMime));
	// объявим массив допустимых расширений
	$types = array('jpg', 'png', 'gif', 'bmp', 'jpeg');
	
	// если расширение не входит в список допустимых - return
	if(!in_array($mime, $types))
		return "<script>alert('Error type');</script><script>javascript:window.location='../translator_profile.php?translator_id=".$translator_id."'</script>";
	
	return true;
}
  
function make_upload($file){	
	// формируем уникальное имя картинки: случайное число и name
	$translator_id = $_POST['translator_id'];
	
	////////////////Удаляем старое фото с сервера//////////////
	$zapros = "SELECT * FROM translators WHERE translator_id='".$translator_id."'";
	$requirest = mysql_query($zapros);
	while($row = mysql_fetch_array($requirest)) 
		{
			$old_foto = $row['translator_foto'];
		}
	if($old_foto <> "uploads/translator/avatar.jpg")
		{
			unlink('../../'.$old_foto);
		}
	///////////////////////////////////////////////////////////
	
	
	$name_array = explode(".",$file['name']);
	$name_type = array_pop($name_array);
	$name = time().".".$name_type;
	copy($file['tmp_name'], '../../uploads/translator/' . $name);
	$foto = 'uploads/translator/'.$name;
	
	////////////////////////Ресайз фото////////////////////////
	$img = AcImage::createImage('../../uploads/translator/' . $name);
	$img->cropCenter('4pr', '4pr'); // Manual - true-coder.ru/php/toolkit-dlya-resajza-i-kropa-izobrazhenij-na-php.html
	$img->resize(250, 250);
	unlink('../../uploads/translator/' . $name);
	$img->save('../../uploads/translator/' . $name);
	///////////////////////////////////////////////////////////
	
	$sql = "UPDATE translators SET translator_foto='$foto' WHERE translator_id='$translator_id'";
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
				echo "<script>alert('Upload success');</script><script>javascript:window.location='../translator_profile.php?translator_id=".$translator_id."'</script>";
			}
		else
			{
				// выводим сообщение об ошибке
				echo "<strong>$check</strong>";  
			}
    }


?>

