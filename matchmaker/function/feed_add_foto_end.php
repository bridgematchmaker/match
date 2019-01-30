<?
session_start();
isset($_SESSION['login_match']) or die("<script>javascript:window.location='../index.php'</script>");

include ("../../connect.php");
include ("../../lib/image-toolkit/AcImage.php");


////////////////Переменные////////////////
$match_add_login = $_SESSION['login_match'];

$girl_id = $_POST['girl_id'];
$match_add = $_POST['match_add'];
$type = $_POST['type'];
$description = $_POST['description'];
$foto_description = $_POST['foto_description'];
$waiting_description = $_POST['waiting_description'];
$relation_description = $_POST['relation_description'];
$relation_man = $_POST['relation_man'];
$relation_girl = $_POST['relation_girl'];
$present_property = $_POST['present_property'];
$present_description = $_POST['present_description'];



/////////////Фильтрация///////////////////
$girl_id = htmlspecialchars($girl_id);
$girl_id = mysql_escape_string($girl_id);

$match_add = htmlspecialchars($match_add);
$match_add = mysql_escape_string($match_add);

$type = htmlspecialchars($type);
$type = mysql_escape_string($type);

$description = htmlspecialchars($description);
$description = mysql_escape_string($description);

$foto_description = htmlspecialchars($foto_description);
$foto_description = mysql_escape_string($foto_description);

$waiting_description = htmlspecialchars($waiting_description);
$waiting_description = mysql_escape_string($waiting_description);

$relation_description = htmlspecialchars($relation_description);
$relation_description = mysql_escape_string($relation_description);

$relation_man = htmlspecialchars($relation_man);
$relation_man = mysql_escape_string($relation_man);

$relation_girl = htmlspecialchars($relation_girl);
$relation_girl = mysql_escape_string($relation_girl);

$present_property = htmlspecialchars($present_property);
$present_property = mysql_escape_string($present_property);

$present_description = htmlspecialchars($present_description);
$present_description = mysql_escape_string($present_description);


function can_upload($file){
	// если имя пустое, значит файл не выбран
    if($file['name'] == '')
		return "<script>alert('No file');</script><script>javascript:window.location='../feeds.php'</script>";
	
	/* если размер файла 0, значит его не пропустили настройки 
	сервера из-за того, что он слишком большой */
	if($file['size'] == 0)
		return "<script>alert('Over max size');</script><script>javascript:window.location='../feeds.php'</script>";
	
	// разбиваем имя файла по точке и получаем массив
	$getMime = explode('.', $file['name']);
	// нас интересует последний элемент массива - расширение
	$mime = strtolower(end($getMime));
	// объявим массив допустимых расширений
	$types = array('jpg', 'png', 'gif', 'bmp', 'jpeg');
	
	// если расширение не входит в список допустимых - return
	if(!in_array($mime, $types))
		return "<script>alert('Error type');</script><script>javascript:window.location='../feeds.php'</script>";
	
	return true;
}
  
function make_upload($file){	
	// формируем уникальное имя картинки: случайное число и name
	$name_array = explode(".",$file['name']);
	$name_type = array_pop($name_array);
	$name_foto = time().".".$name_type;
	copy($file['tmp_name'], '../../uploads/feed/' . $name_foto);

	////////////////////////Ресайз фото////////////////////////
	$img = AcImage::createImage('../../uploads/feed/' . $name_foto);
	$img->cropCenter('4pr', '4pr'); // Manual - true-coder.ru/php/toolkit-dlya-resajza-i-kropa-izobrazhenij-na-php.html
	unlink('../../uploads/feed/' . $name_foto);
	$img->save('../../uploads/feed/' . $name_foto);
	///////////////////////////////////////////////////////////


    $foto = 'uploads/feed/'.$name_foto;
    

    switch ($GLOBALS['type'])
    {
        case 1:
            $zapros = "INSERT INTO feeds (match_add, match_add_login, type, girl_id, description, foto, foto_description) VALUES ('".$GLOBALS['match_add']."', '".$GLOBALS['match_add_login']."', '".$GLOBALS['type']."', '".$GLOBALS['girl_id']."', '".$GLOBALS['description']."', '$foto', '".$GLOBALS['foto_description']."')";
        break;

        case 4:
        	$zapros = "INSERT INTO feeds (match_add, match_add_login, type, girl_id, description, waiting_foto, waiting_description) VALUES ('".$GLOBALS['match_add']."', '".$GLOBALS['match_add_login']."', '".$GLOBALS['type']."', '".$GLOBALS['girl_id']."', '".$GLOBALS['description']."', '$foto', '".$GLOBALS['waiting_description']."')";
		break;
		
		case 6:
        	$zapros = "INSERT INTO feeds (match_add, match_add_login, type, girl_id, description, relation_description, relation_man, relation_girl,  relation_foto) VALUES ('".$GLOBALS['match_add']."', '".$GLOBALS['match_add_login']."', '".$GLOBALS['type']."', '".$GLOBALS['girl_id']."', '".$GLOBALS['description']."', '".$GLOBALS['relation_description']."', '".$GLOBALS['relation_man']."', '".$GLOBALS['relation_girl']."', '$foto')";
		break;
		
		case 7:
        	$zapros = "INSERT INTO feeds (match_add, match_add_login, type, girl_id, description, present_property, present_description, present_foto) VALUES ('".$GLOBALS['match_add']."', '".$GLOBALS['match_add_login']."', '".$GLOBALS['type']."', '".$GLOBALS['girl_id']."', '".$GLOBALS['description']."', '".$GLOBALS['present_property']."', '".$GLOBALS['present_description']."', '$foto')";
        break;
    }

	/////////////////////////////////////////////
	$result = mysql_query($zapros) or die("Ошибка при записи в базу");
}



if($_FILES['file']['name'] <> '')
	{
		// проверяем, можно ли загружать изображение
		$check = can_upload($_FILES['file']);
    
		if($check === true)
			{
				// загружаем изображение на сервер
				make_upload($_FILES['file']);	
				echo "<script>alert('Событие успешно создано');</script><script>javascript:window.location='../feeds.php'</script>";
			}
		else
			{
				// выводим сообщение об ошибке
				echo "<strong>$check</strong>";  
			}
		
    }
else
	{
		echo "<script>alert('Файл не выбран.');</script><script>javascript:window.location='../feeds.php'</script>";			
	}



?>