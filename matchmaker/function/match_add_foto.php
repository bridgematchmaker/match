<?
session_start();
isset($_SESSION['login_match']) or die("<script>javascript:window.location='../index.php'</script>");

include ("../../connect.php");
include ("../../lib/image-toolkit/AcImage.php");



function can_upload($file){
	// если имя пустое, значит файл не выбран
    if($file['name'] == '')
		return "<script>alert('No file');</script><script>javascript:window.location='../match.php'</script>";
	
	/* если размер файла 0, значит его не пропустили настройки 
	сервера из-за того, что он слишком большой */
	if($file['size'] == 0)
		return "<script>alert('Over max size');</script><script>javascript:window.location='../match.php'</script>";
	
	// разбиваем имя файла по точке и получаем массив
	$getMime = explode('.', $file['name']);
	// нас интересует последний элемент массива - расширение
	$mime = strtolower(end($getMime));
	// объявим массив допустимых расширений
	$types = array('jpg', 'png', 'gif', 'bmp', 'jpeg');
	
	// если расширение не входит в список допустимых - return
	if(!in_array($mime, $types))
		return "<script>alert('Error type');</script><script>javascript:window.location='../match.php'</script>";
	
	return true;
}
  
function make_upload($file){	
	// формируем уникальное имя картинки: случайное число и name
	$login = $_POST['login'];
	
	
	////////////////Удаляем старое фото с сервера//////////////
	$zapros = "SELECT * FROM matchmakers WHERE login='".$login."'";
	$requirest = mysql_query($zapros);
	while($row = mysql_fetch_array($requirest)) 
		{
			$old_foto = $row['foto'];
		}
	if($old_foto <> "")
		{
			unlink('../../'.$old_foto);
		}
	///////////////////////////////////////////////////////////


	// формируем уникальное имя картинки: случайное число и name
	$name_array = explode(".",$file['name']);
	$name_type = array_pop($name_array);
	$name = time().".".$name_type;
	copy($file['tmp_name'], '../../uploads/match/' . $name);
	
	////////////////////////Ресайз фото////////////////////////
	$img = AcImage::createImage('../../uploads/match/' . $name);
	$img->cropCenter('4pr', '4pr'); // Manual - true-coder.ru/php/toolkit-dlya-resajza-i-kropa-izobrazhenij-na-php.html
	$img->resize(250, 250);
	unlink('../../uploads/match/' . $name);
	$img->save('../../uploads/match/' . $name);
	///////////////////////////////////////////////////////////
	
	$foto = 'uploads/match/'.$name;
	$sql = "UPDATE matchmakers SET foto='$foto' WHERE login='$login'";
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
				echo "<script>alert('Upload success');</script><script>javascript:window.location='../match.php'</script>";
			}
		else
			{
				// выводим сообщение об ошибке
				echo "<strong>$check</strong>";  
			}
    }


?>

