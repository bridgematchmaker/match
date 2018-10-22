<?
session_start();
isset($_SESSION['login_match']) or die("<script>javascript:window.location='index.php'</script>");

include("../connect.php");
///////////////////////////////Проверка статуса мачмеккера////////////////////////////
$zapros_match = "SELECT * FROM matchmakers WHERE login='".$_SESSION['login_match']."'";
$requirest_match = mysql_query($zapros_match);
while($row_match = mysql_fetch_array($requirest_match)) { $status_match = $row_match['status']; }
if($status_match == "2") { echo("<script>alert('Аккаунт заблокирован');</script><script>javascript:window.location='index.php?logout'</script>");}
//////////////////////////////////////////////////////////////////////////////////////

//////////Функция вычесления возраста по дате рождения//////////
function calculate_age($birthday) {
	$birthday_timestamp = strtotime($birthday);
	$age = date('Y') - date('Y', $birthday_timestamp);
	if (date('md', $birthday_timestamp) > date('md')) {
	  $age--;
	}
	return $age;
  }
/////////////////////////////////////////////////////////////////


$quantity=15; // Количество записей на странице
$limit=3; // Ограничиваем количество ссылок, которые будут выводиться перед и после текущей страницы
$page = $_GET[page];



// Если значение page= не является числом, то показываем
// пользователю первую страницу
if(!is_numeric($page)) $page=1;

// Если пользователь вручную поменяет в адресной строке значение page= на нуль,
// то мы определим это и поменяем на единицу, то-есть отправим на первую
// страницу, чтобы избежать ошибки
if ($page<1) $page=1;


$view = $_GET['view'];

if($view == "")
	{
		if($status_match == "0") { $view = "my"; }
		if($status_match == "1") { $view = "all"; }
	}

switch ($view) 
	{
		case all:
			// Узнаем количество всех доступных записей 
			$result2 = mysql_query("SELECT * FROM girls;");
			$num = mysql_num_rows($result2);
		break;
		
		case gallery:
			// Узнаем количество всех доступных записей 
			$result2 = mysql_query("SELECT * FROM girls WHERE gallery_status='1';");
			$num = mysql_num_rows($result2);
		break;
		
		case my:
			// Узнаем количество всех доступных записей 
			$result2 = mysql_query("SELECT * FROM girls WHERE login_match='".$_SESSION['login_match']."';");
			$num = mysql_num_rows($result2);
		break;
		
	}	
// Вычисляем количество страниц, чтобы знать сколько ссылок выводить
$pages = $num/$quantity;

// Округляем полученное число страниц в большую сторону
$pages = ceil($pages);


// Здесь мы увеличиваем число страниц на единицу чтобы начальное значение было
// равно единице, а не нулю. Значение page= будет
// совпадать с цифрой в ссылке, которую будут видеть посетители
$pages++; 

// Если значение page= больше числа страниц, то выводим первую страницу
if ($page>$pages) $page = 1;

// Переменная $list указывает с какой записи начинать выводить данные.
// Если это число не определено, то будем выводить
// с самого начала, то-есть с нулевой записи
if (!isset($list)) $list=0;

// Чтобы у нас значение page= в адресе ссылки совпадало с номером
// страницы мы будем его увеличивать на единицу при выводе ссылок, а
// здесь наоборот уменьшаем чтобы ничего не нарушить.
$list=--$page*$quantity;

switch ($view) 
	{
		case all:
			$zapros = "SELECT * FROM girls ORDER BY girl_id DESC LIMIT $quantity OFFSET $list;";
		break;
		
		case gallery:
			$zapros = "SELECT * FROM girls WHERE gallery_status='1' ORDER BY girl_id DESC LIMIT $quantity OFFSET $list;";
		break;
		
		case my:
			$zapros = "SELECT * FROM girls WHERE login_match='".$_SESSION['login_match']."' ORDER BY girl_id DESC LIMIT $quantity OFFSET $list;";
		break;
	}
?>

<html>
<head>
	<meta charset="utf-8">
	<link rel="stylesheet" href="./css/bootstrap.min.css" />
	<link rel="stylesheet" href="./css/font-awesome.min.css" />
	<link rel="stylesheet" href="./css/bootstrap-select.css">
	<script src="./js/jquery-1.11.3.min.js"></script>
	<script src="./js/bootstrap.min.js"></script>  
	<script src="./js/bootstrap-select.js"></script>
</head>



<?
$page_name = "girls";
include "header.php";
?>



<body>
<div style="padding:20px;">
	<? if($status_match <> "0") 
		{
			echo('
					<form class="form-inline" action="./function/girl_search.php" method="POST">
						<label>Поиск девушки:</label><br>
						<select class="selectpicker" size="1" name="search_type" style="width:200px;">
							<option value="id">Поиск по ID</option>
							<option value="email">Поиск по E-Mail</option>
							<option value="phone">Поиск по телефону</option>
						</select>
						<input class="form-control" size="20" type="text" name="search"> 
						<button type="submit" class="btn btn-success" data-original-title="" title="">Поиск девушки</button>
					</form>
					<hr>
				');
		} 
		$nomer = $page+1;
		echo 'Страница № ' . $nomer . ''; // Выводим заголовок с номером текущей страницы 
	?>
	<table class="table table-striped table-bordered">
		<thead>
			<tr>
				<th></th>
				<th>ID:</th>
				<th>Имя:</th>
				<th>Фамилия:</th>
				<th>Город:</th>
				<th>Дата рождения:</th>
				<th>Возраст:</th>
				<th>Email:</th>
				<th>Добавил:</th>
				
			</tr>
		</thead>
		<tbody>
			<?  
				// Делаем запрос подставляя значения переменных $quantity и $list
				$result = mysql_query($zapros);

				// Считаем количество полученных записей
				$num_result = mysql_num_rows($result);
				
				for ($i = 0; $i<$num_result; $i++) 
					{
						$row = mysql_fetch_array($result);
					
						////////////////////Начало цикла таблицы//////////////////////////////

						//////////////////////Загружаем данные пользователей/////////////////////////   
						$girl_id = $row['girl_id'];
						$first_name = $row['first_name'];
						$last_name = $row['last_name'];
						$city = $row['city'];
						$birthday = $row['birthday'];
						$age = calculate_age($birthday);
						$email = $row['question45'];
						$login_match = $row['login_match'];
						$activation_status = $row['activation_status'];
						
						if($activation_status == "0") { $activation_print = "<span style='font-size:22px; margin-left:10px; color:red;' class='glyphicon glyphicon-remove'></span>"; }
						if($activation_status == "1") { $activation_print = "<span style='font-size:22px; margin-left:10px; color:green;' class='glyphicon glyphicon-ok'></span>"; }
						//////////////////////////////////////////////////////////////////////////////
    
						////////////////////////////Вывод таблицы на экран///////////////////////////////    
						echo ("
								<tr>
									<td>
									  <a href='./girl_profile.php?girl_id=$girl_id'><span style='font-size:22px; margin-left:10px;' class='glyphicon glyphicon-user'></span></a> $activation_print
									</td>
									<td>
										$girl_id
									</td>
									<td>
										$first_name
									</td>
									<td>
										$last_name
									</td>
									<td>
										$city
									</td>
									<td>
										$birthday
									</td>
									<td>
										$age
									</td>
									<td>
										$email
									</td>
									<td>
										$login_match
									</td>
									
								</tr>
							");
						////////////////////////////////////////////////////////////////////////////////////////
					}
					echo '</tbody></table>';
					echo 'Страницы: ';
					// _________________ начало блока 1 _________________

					// Выводим ссылки "назад" и "на первую страницу"
					if ($page>=1) 
						{
							// Значение page= для первой страницы всегда равно единице, 
							// поэтому так и пишем
							echo '<a href="' . $_SERVER['SCRIPT_NAME'] . '?view='.$view.'&page=1"><<</a> &nbsp; ';
							// Так как мы количество страниц до этого уменьшили на единицу, 
							// то для того, чтобы попасть на предыдущую страницу, 
							// нам не нужно ничего вычислять
							echo '<a href="' . $_SERVER['SCRIPT_NAME'] . '?view='.$view.'&page=' . $page . '">< </a> &nbsp; ';
						}

					// __________________ конец блока 1 __________________

					// На данном этапе номер текущей страницы = $page+1
					$_this = $page+1;
					// Узнаем с какой ссылки начинать вывод
					$start = $_this-$limit;

					// Узнаем номер последней ссылки для вывода
					$end = $_this+$limit;

					// Выводим ссылки на все страницы
					// Начальное число $j в нашем случае должно равнятся единице, а не нулю
					for ($j = 1; $j<$pages; $j++) 
						{
							// Выводим ссылки только в том случае, если их номер больше или равен
							// начальному значению, и меньше или равен конечному значению
							if ($j>=$start && $j<=$end) 
								{
									// Ссылка на текущую страницу выделяется жирным
									if ($j==($page+1)) echo '<a href="' . $_SERVER['SCRIPT_NAME'] . '?view='.$view.'&page=' . $j . '"><strong style="color: #df0000">' . $j . '</strong></a> &nbsp; ';
									// Ссылки на остальные страницы
									else echo '<a href="' . $_SERVER['SCRIPT_NAME'] . '?view='.$view.'&page=' . $j . '">' . $j . '</a> &nbsp; ';
								}
						}

					// _________________ начало блока 2 _________________

					// Выводим ссылки "вперед" и "на последнюю страницу"
					if ($j>$page && ($page+2)<$j) 
						{
							// Чтобы попасть на следующую страницу нужно увеличить $pages на 2
							echo '<a href="' . $_SERVER['SCRIPT_NAME'] . '?view='.$view.'&page=' . ($page+2) . '"> ></a> &nbsp; ';

							// Так как у нас $j = количество страниц + 1, то теперь 
							// уменьшаем его на единицу и получаем ссылку на последнюю страницу
							echo '<a href="' . $_SERVER['SCRIPT_NAME'] . '?view='.$view.'&page=' . ($j-1) . '">>></a> &nbsp; ';
						}

					// __________________ конец блока 2 __________________
					echo '';

				?>	
		</tbody>
	</table>
	</div>


</body>
</html>
