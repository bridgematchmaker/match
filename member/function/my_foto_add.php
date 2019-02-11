<?
session_start();
isset($_SESSION['email_client']) or die("<script>javascript:window.location='../../login.php'</script>");

include ("../../connect.php");

include ("../../lib/image-toolkit/AcImage.php");

$zapros = "SELECT * FROM clients WHERE email_client='".$_SESSION['email_client']."'";

//////////////////////////////Загрузка данных из базы////////////////////////
$requirest = mysql_query($zapros);
while($row = mysql_fetch_array($requirest)) 
	{
		$user_id = $row['user_id'];
	}

    function can_upload($file){
        // если имя пустое, значит файл не выбран
        if($file['name'] == '')
            return "<script>alert('Not selected file');</script><script>javascript:window.location='../my_fotos.php'</script>";
        
        /* если размер файла 0, значит его не пропустили настройки 
        сервера из-за того, что он слишком большой */
        if($file['size'] == 0)
            return "<script>alert('Over max size photo');</script><script>javascript:window.location='../my_fotos.php'</script>";
        
        // разбиваем имя файла по точке и получаем массив
        $getMime = explode('.', $file['name']);
        // нас интересует последний элемент массива - расширение
        $mime = strtolower(end($getMime));
        // объявим массив допустимых расширений
        $types = array('jpg', 'png', 'gif', 'bmp', 'jpeg');
        
        // если расширение не входит в список допустимых - return
        if(!in_array($mime, $types))
            return "<script>alert('Error avatar type');</script><script>javascript:window.location='../my_fotos.php'</script>";
        
        return true;
    }
    
    function make_upload($file){	
        // формируем уникальное имя картинки: случайное число и name
        $name_array = explode(".",$file['name']);
        $name_type = array_pop($name_array);
        $name_foto = time().".".$name_type;
        copy($file['tmp_name'], '../../uploads/client/foto/' . $name_foto);
    
        ////////////////////////Ресайз фото////////////////////////
        $img = AcImage::createImage('../../uploads/client/foto/' . $name_foto);
        $img->cropCenter('4pr', '4pr'); // Manual - true-coder.ru/php/toolkit-dlya-resajza-i-kropa-izobrazhenij-na-php.html
        $img->resize(1024, 1024);
        unlink('../../uploads/client/foto/' . $name_foto);
        $img->save('../../uploads/client/foto/' . $name_foto);
        ///////////////////////////////////////////////////////////
    
        $foto = 'uploads/client/foto/'.$name_foto;
        /////////////SQL запрос//////////////////////
       $sql = "INSERT INTO clients_foto (user_id, foto) VALUES (".$GLOBALS['user_id'].", '$foto')";
        $result = mysql_query($sql) or die("Error database");
        /////////////////////////////////////////////
        
    }

    if($_FILES['file']['name'] <> '')
	{
		// проверяем, можно ли загружать изображение
		$check = can_upload($_FILES['file']);
    
		if($check === true)
			{
				// загружаем изображение на сервер и добавляем пользователя в базу
				make_upload($_FILES['file']);	
			}
		else
			{
				// выводим сообщение об ошибке файла
				echo "<strong>$check</strong>"; 
				exit();
			}
		
    }
    else
    {
        echo("<script>alert('Not selected file');</script><script>javascript:window.location='../my_fotos.php'</script>");
    }

    echo("<script>javascript:window.location='../my_fotos.php'</script>");
    
    ?>