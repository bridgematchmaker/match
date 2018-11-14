<?
session_start();
isset($_SESSION['login_match']) or die("<script>javascript:window.location='index.php'</script>");

include("../connect.php");

///////////////////////////////Проверка статуса мачмеккера////////////////////////////
$zapros_match = "SELECT * FROM matchmakers WHERE login='".$_SESSION['login_match']."'";
$requirest_match = mysql_query($zapros_match);
while($row_match = mysql_fetch_array($requirest_match)) { $status_match = $row_match['status']; }
if($status_match == "2") { echo("<script>alert('Аккаунт заблокирован');</script><script>javascript:window.location='index.php?logout'</script>");}
if($status_match == "0") { echo("<script>alert('Доступ запрещен');</script><script>javascript:window.location='index.php?logout'</script>");}
//////////////////////////////////////////////////////////////////////////////////////



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
			$result2 = mysql_query("SELECT * FROM clients WHERE status_system<>'4';");
			$num = mysql_num_rows($result2);
		break;

		case new_user:
			// Узнаем количество всех доступных записей 
			$result2 = mysql_query("SELECT * FROM clients WHERE status_system='0';");
			$num = mysql_num_rows($result2);
		break;
		
		case active:
			// Узнаем количество всех доступных записей 
			$result2 = mysql_query("SELECT * FROM clients WHERE status_system='1';");
			$num = mysql_num_rows($result2);
		break;

		case verified:
			// Узнаем количество всех доступных записей 
			$result2 = mysql_query("SELECT * FROM clients WHERE status_system='2';");
			$num = mysql_num_rows($result2);
		break;

		case verified_complete:
			// Узнаем количество всех доступных записей 
			$result2 = mysql_query("SELECT * FROM clients WHERE status_system='3';");
			$num = mysql_num_rows($result2);
		break;
		
		case my:
			// Узнаем количество всех доступных записей 
			$result2 = mysql_query("SELECT * FROM clients WHERE matchmaker_login='".$_SESSION['login_match']."' AND status_system<>'4';");
			$num = mysql_num_rows($result2);
		break;
		
		case del:
			// Узнаем количество всех доступных записей 
			$result2 = mysql_query("SELECT * FROM clients WHERE status_system='4';");
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
			$zapros = "SELECT clients.*,matchmakers.name FROM clients LEFT JOIN matchmakers ON clients.matchmaker_login = matchmakers.login WHERE status_system<>'4' ORDER BY user_id DESC LIMIT $quantity OFFSET $list;";
		break;
		
		case new_user:
			$zapros = "SELECT clients.*,matchmakers.name FROM clients LEFT JOIN matchmakers ON clients.matchmaker_login = matchmakers.login WHERE status_system='0' ORDER BY user_id DESC LIMIT $quantity OFFSET $list;";
		break;
		
		case active:
			$zapros = "SELECT clients.*,matchmakers.name FROM clients LEFT JOIN matchmakers ON clients.matchmaker_login = matchmakers.login WHERE status_system='1' ORDER BY user_id DESC LIMIT $quantity OFFSET $list;";
		break;

		case verified:
			$zapros = "SELECT clients.*,matchmakers.name FROM clients LEFT JOIN matchmakers ON clients.matchmaker_login = matchmakers.login WHERE status_system='2' ORDER BY user_id DESC LIMIT $quantity OFFSET $list;";
		break;

		case verified_complete:
			$zapros = "SELECT clients.*,matchmakers.name FROM clients LEFT JOIN matchmakers ON clients.matchmaker_login = matchmakers.login WHERE status_system='3' ORDER BY user_id DESC LIMIT $quantity OFFSET $list;";
		break;
		
		case my:
			$zapros = "SELECT clients.*,matchmakers.name FROM clients LEFT JOIN matchmakers ON clients.matchmaker_login = matchmakers.login WHERE matchmaker_login='".$_SESSION['login_match']."'  AND status_system<>'4' ORDER BY user_id DESC LIMIT $quantity OFFSET $list;";
		break;
		
		case del:
			$zapros = "SELECT clients.*,matchmakers.name FROM clients LEFT JOIN matchmakers ON clients.matchmaker_login = matchmakers.login WHERE status_system='4' ORDER BY user_id DESC LIMIT $quantity OFFSET $list;";
		break;
	}
?>
<html>
<head>
	<meta charset="utf-8">
	<title>Таблица клиентов</title>
	<link rel="stylesheet" href="./css/bootstrap.min.css" />
	<link rel="stylesheet" href="./css/font-awesome.min.css" />
	<link rel="stylesheet" href="./css/bootstrap-select.css">
	<script src="./js/jquery-1.11.3.min.js"></script>
	<script src="./js/bootstrap.min.js"></script>  
	<script src="./js/bootstrap-select.js"></script>
</head>

<?
$page_name = "clients";
include "header.php";
?>


<body>
	
	<div style="padding:20px;">
		
		<form class="form-inline" action="./function/client_search.php" method="POST">
			<label>Поиск клиента:</label><br>
			<select class="selectpicker" size="1" name="search_type" style="width:200px;">
				<option value="id">Поиск по ID</option>
				<option value="email">Поиск по E-Mail</option>
				<option value="phone">Поиск по телефону</option>
			</select>
			<input class="form-control" size="20" type="text" name="search">
			<button type="submit" class="btn btn-success" data-original-title="" title="">Поиск клиента</button>
		</form>
	<hr>
	<?
		$nomer = $page+1;
		echo 'Страница № ' . $nomer . ''; // Выводим заголовок с номером текущей страницы 
	?>
	<table class="table table-striped table-bordered" id="myTable">
		<thead>
			<tr>
				<th></th>
				<th></th>
				<th>Дата регистрации:</th>
				<th>UserID:</th>
				<th>Имя:</th>
				<th>Email:</th>
				<th>Матчмекер:</th>
				<th>Cтатус:</th>
				<th>Подписка:</th>
				
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
						$date_reg = $row['date_reg'];
						$UserID = $row['user_id'];
						$name = $row['first_name'];
						$email = $row['email_client'];
						$status = $row['status_system'];
						$tarif = $row['status_tarif'];
						$matchmaker_login = $row['matchmaker_login'];
						$match_name = $row['name'];
						$status_anketa2 = $row['status_anketa2'];
						$service = $row['service'];
						$status_verification = $row['status_verification'];
						
						if(($status_anketa2 == "1") AND ($status_verification == "0")) { 
							$anketa2_print = "<span style='font-size:22px; margin-left:10px; color:red;' class='glyphicon glyphicon-list-alt'></span>"; 
						} elseif(($status_anketa2 == "1") AND ($status_verification == "1")) {
							$anketa2_print = "<span style='font-size:22px; margin-left:10px; color:green;' class='glyphicon glyphicon-list-alt'></span>"; 
						} else { 
							$anketa2_print = ""; 
						}
						if($service == "2") { $bridge_print = "<span style='font-size:22px; margin-left:10px; color:green;' class='glyphicon glyphicon-heart-empty'></span>"; } else { $bridge_print = ""; }
						
						
						switch ($status)
							{
								case 0:
									$status_system_print = "Новый";
									$td_class = "info";
								break;
			
								case 1:
									$status_system_print = "Активный";
									$td_class = "danger";
								break;
		
								case 2:
									$status_system_print = "Верефицированый";
									$td_class = "success";
								break;
		
								case 3:
									$status_system_print = "Верефицированый полный";
									$td_class = "success";
								break;	
		
								case 4:
									$status_system_print = "Удаленный";
								break;
							}
							
						switch ($tarif)
							{
								case 0:
									$status_tarif_print = "Free";
								break;
		
								case 1:
									$status_tarif_print = "Silver";
								break;
		
								case 2:
									$status_tarif_print = "Gold";
								break;
		
								case 3:
									$status_tarif_print = "Premium";
								break;	
							}
						if($match_name == "")
							{
								$match_name = "Не определен";
							}
						
						//////////////////////////////////////////////////////////////////////////////
    
						////////////////////////////Вывод таблицы на экран///////////////////////////////    
						echo ("
								<tr>
									<td>
									<a href='./client_profile.php?user_id=$UserID'><span style='font-size:22px; margin-left:10px;' class='glyphicon glyphicon-user'></span></a> $anketa2_print $bridge_print
									</td>
									<td>
										<a href='#' data-toggle='modal' data-target='#EmailModal' data-whatever='$UserID'><span style='font-size:22px; margin-left:10px;' class='glyphicon glyphicon-envelope'></span></a>
									</td>
									<td>
										$date_reg
									</td>
									<td>
										$UserID
									</td>
									<td>
										$name
									</td>
									<td>
										$email
									</td>
									<td>
										$match_name
									</td>
									<td class='$td_class'>
										$status_system_print
									</td>
									<td>
										$status_tarif_print
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

<!-- Модальное окно -->  
<div class="modal fade" id="EmailModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
        <h4 class="modal-title" id="myModalLabel">Отправка письма клиенту</h4>
      </div>
      <div class="modal-body">
	  	<form action="./function/client_send_email.php" method="POST">
		  	<input class="modal-user-id" type="hidden" class="form-control" id="user_id" name="user_id">
            <div class="form-group">
              <label for="template" class="form-control-label">Выбирете шаблон для отправки:</label>
			  <select size="1" id="template" name="template">
				<option disabled></option>
				<?
					$zapros_tamplate = "SELECT * FROM email_templates WHERE type='1'";
					$result_tamplate = mysql_query($zapros_tamplate);
					while ($row_tamplate = mysql_fetch_assoc($result_tamplate)) 
						{
							$template_name = $row_tamplate['name'];
							$template_subject = $row_tamplate['subject'];
							echo("<option value='$template_name'>$template_subject</option>");
						}
				?>
   			  </select>
            </div>
			<div class="form-group">
				<input class="btn btn-success" type="submit" value="Отправить письмо" >	
			</div>

          </form>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
      </div>
    </div>
  </div>
</div>

<script>
		$('#EmailModal').on('show.bs.modal', function (event) {
		var button = $(event.relatedTarget) 
		var user_id = button.data('whatever') 
		var modal = $(this)
		modal.find('.modal-user-id').val(user_id)
		})
</script>

</body>
</html>
