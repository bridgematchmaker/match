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

$result_num = mysql_query("SELECT * FROM feeds;");
$num = mysql_num_rows($result_num);

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

$zapros = "SELECT * FROM feeds ORDER BY id DESC LIMIT $quantity OFFSET $list;";

?>

<html>
<head>
	<meta charset="utf-8">
	<title>События</title>
	<link rel="stylesheet" href="./css/bootstrap.min.css" />
	<link rel="stylesheet" href="./css/font-awesome.min.css" />
	<link rel="stylesheet" href="./css/bootstrap-select.css">
	<script src="./js/jquery-1.11.3.min.js"></script>
	<script src="./js/bootstrap.min.js"></script>  
	<script src="./js/bootstrap-select.js"></script>
    <script>
        function selectFeed() {
            var feed = document.getElementById('feed');
            var form = document.getElementById('feed-form');
        
            
            if(feed.value === "1") {
                form.action = './feed_add_foto.php';
            }

            if(feed.value === "2") {
                form.action = './feed_add_video.php';
            }

            if(feed.value === "3") {
                form.action = './feed_add_day.php';
            }

            if(feed.value === "4") {
                form.action = './feed_add_waiting.php';
            }

            if(feed.value === "5") {
                form.action = './feed_add_question.php';
            }

            if(feed.value === "6") {
                form.action = './feed_add_relation.php';
            }

            if(feed.value === "7") {
                form.action = './feed_add_present.php';
            }
        }
    </script>
	
</head>


<?
$page_name = "feeds";
include "header.php";
?>


<body>
<div style="padding:20px;">
	<div class="row">
		<div class="col-lg-4 col-md-4 col-sm-8 col-xs-12">
            <form class="form-inline" id="feed-form" action="" method="GET">
                <div class="form-group">
					<label>Тип события: </label>
					<select name="feed" id="feed" onChange="selectFeed();" class="form-control">
						  <option value=""></option>
						  <option value="1">My new photo</option> 
						  <option value="2">My new video</option>
						  <option value="3">Events of My day</option>	 
						  <option value="4">I’m waiting for…</option>
                          <option value="5">Question to my matchmaker</option>
                          <option value="6">My future relationship</option>
                          <option value="7">Matchmaker presents a lady</option>		
					</select>
                    <button type="submit" class="btn btn-success">Добавить событие</button>
				</div>
            </form>	
		</div>
	</div>
    <hr>
    <?
        $nomer = $page+1;
        echo 'Страница № ' . $nomer . ''; // Выводим заголовок с номером текущей страницы 
    ?>
	<hr>
    <table class="table table-striped table-bordered" id="myTable">
		<thead>
			<tr>
				<th></th>
				<th>Дата/Время:</th>
				<th>Тип события:</th>
				<th>ID Девушки:</th>
				<th>Матчмекер:</th>	
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
                        $feed_id = $row['id'];
                        $date_add = $row['date_add'];
                        $girl_id = $row['girl_id'];
                        $type = $row['type'];
                        $match_add = $row['match_add'];
				
						
						switch ($type)
							{
								case 1:
                                    $type_print = "My new photo";
								break;
			
								case 2:
                                    $type_print = "My new video";
								break;
		
								case 3:
                                    $type_print = "Events of My day";
								break;
		
								case 4:
                                    $type_print = "I’m waiting for…";
								break;	
		
								case 5:
                                    $type_print = "Question to my mactermaker";
                                break;
                                
                                case 6:
                                    $type_print = "My future relationship";
                                break;
                                
                                case 7:
                                    $type_print = "Matchmaker presents a lady";
								break;
							}
						
						//////////////////////////////////////////////////////////////////////////////
    
						////////////////////////////Вывод таблицы на экран///////////////////////////////    
						echo ("
								<tr>
									<td>
									<a href='./feed.php?feed_id=$feed_id'><span style='font-size:22px; margin-left:10px;' class='glyphicon glyphicon-folder-open'></span></a>
									</td>
									<td>
                                        $date_add
									</td>
									<td>
                                        $type_print
									</td>
									<td>
                                         $girl_id
									</td>
									<td>
                                        $match_add
									</td>
								</tr>
							");
						////////////////////////////////////////////////////////////////////////////////////////
                    }
        ?>
        </tbody>
    </table>
    <?
        echo 'Страницы: ';
        // _________________ начало блока 1 _________________

					// Выводим ссылки "назад" и "на первую страницу"
					if ($page>=1) 
                    {
                        // Значение page= для первой страницы всегда равно единице, 
                        // поэтому так и пишем
                        echo '<a href="' . $_SERVER['SCRIPT_NAME'] . '?page=1"><<</a> &nbsp; ';
                        // Так как мы количество страниц до этого уменьшили на единицу, 
                        // то для того, чтобы попасть на предыдущую страницу, 
                        // нам не нужно ничего вычислять
                        echo '<a href="' . $_SERVER['SCRIPT_NAME'] . '?page=' . $page . '">< </a> &nbsp; ';
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
                                if ($j==($page+1)) echo '<a href="' . $_SERVER['SCRIPT_NAME'] . '?page=' . $j . '"><strong style="color: #df0000">' . $j . '</strong></a> &nbsp; ';
                                // Ссылки на остальные страницы
                                else echo '<a href="' . $_SERVER['SCRIPT_NAME'] . '?page=' . $j . '">' . $j . '</a> &nbsp; ';
                            }
                    }

                // _________________ начало блока 2 _________________

                // Выводим ссылки "вперед" и "на последнюю страницу"
                if ($j>$page && ($page+2)<$j) 
                    {
                        // Чтобы попасть на следующую страницу нужно увеличить $pages на 2
                        echo '<a href="' . $_SERVER['SCRIPT_NAME'] . '?page=' . ($page+2) . '"> ></a> &nbsp; ';

                        // Так как у нас $j = количество страниц + 1, то теперь 
                        // уменьшаем его на единицу и получаем ссылку на последнюю страницу
                        echo '<a href="' . $_SERVER['SCRIPT_NAME'] . '?page=' . ($j-1) . '">>></a> &nbsp; ';
                    }

                // __________________ конец блока 2 _________________
    ?>

</div>
</body>
</html>
