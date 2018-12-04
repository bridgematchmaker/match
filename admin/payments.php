<?
session_start();
isset($_SESSION['login_admin']) or die("<script>javascript:window.location='index.php'</script>");

include("../connect.php");

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
if($view == "") {$view = "all"; }

switch ($view) 
	{
        case all:
            // Узнаем количество всех доступных записей 
            $result1 = mysql_query("SELECT * FROM payments;");
            $num = mysql_num_rows($result1);
        break;

		case pending:
			// Узнаем количество всех доступных записей 
			$result2 = mysql_query("SELECT * FROM payments WHERE status = '0';");
			$num = mysql_num_rows($result2);
        break;
        
        case success:
			// Узнаем количество всех доступных записей 
			$result3 = mysql_query("SELECT * FROM payments WHERE status = '1';");
			$num = mysql_num_rows($result3);
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
			$zapros = "SELECT * FROM payments ORDER BY id DESC LIMIT $quantity OFFSET $list;";
		break;
		
		case pending:
			$zapros = "SELECT * FROM payments WHERE status = '0' ORDER BY id DESC LIMIT $quantity OFFSET $list;";
		break;
		
		case success:
			$zapros = "SELECT * FROM payments WHERE status = '1' ORDER BY id DESC LIMIT $quantity OFFSET $list;";
		break;
	}

?>
<html>
<head>
	<meta charset="utf-8">
	<title>Админка</title>
	<link rel="stylesheet" href="./css/bootstrap.min.css" />
	<link rel="stylesheet" href="./css/font-awesome.min.css" />
	<script src="./js/jquery-1.11.3.min.js"></script>
	<script src="./js/bootstrap.min.js"></script>  
</head>

<?
$page_name = "payments";
include "menu.php";
?>


<body>
<div style="padding:20px;">
	<?
		$nomer = $page+1;
		echo 'Страница № ' . $nomer . ''; // Выводим заголовок с номером текущей страницы 
	?>
	<table class="table table-striped table-bordered">
		<thead>
			<tr>
				<th></th>
				<th>ID платежа:</th>
				<th>Дата создания:</th>
                <th>ID клиента:</th>
                <th>Сумма:</th>
				<th>Тип заказа:</th>
				<th>Cтатус:</th>	
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
                        $payment_id = $row['payment_id'];
                        $payment_system = $row['payment_system'];
                        $date_add = $row['date_add'];
                        $date_payment = $row['date_payment'];
                        $price = $row['price'];
						$user_id = $row['user_id'];
						$type = $row['type'];
						$status = $row['status'];
							
						switch ($status)
							{
								case 0:
									$status_print = "Не оплаченный";
									$td_class = "info";
								break;

								case 1:
									$status_print = "Оплаченный";
									$td_class = "success";
								break;
							}
						
						switch ($type)
							{
								case 0:
									$type_print = "Тарифный план";
								break;
			
								case 1:
									$type_print = "Поадарок";
								break;
							}
						
							
						//////////////////////////////////////////////////////////////////////////////
    
						////////////////////////////Вывод таблицы на экран///////////////////////////////    
						echo ("
								<tr>
									<td>
									  <a href='./payment.php?payment_id=$payment_id'><span style='font-size:22px; margin-left:10px;' class='glyphicon glyphicon-folder-open'></span></a>
									</td>
									<td>
                                        $payment_id
									</td>
									<td>
										$date_add
									</td>
									<td>
										$user_id
									</td>
									<td>
                                        $price
									</td>
									<td>
										$type_print
									</td>
									<td class='$td_class'>
										$status_print
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