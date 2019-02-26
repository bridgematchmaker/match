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

$feed_id = $_GET['feed_id'];
$feed_id= htmlspecialchars($feed_id);
$feed_id = mysql_escape_string($feed_id);

$zapros = "SELECT * FROM feeds WHERE id='".$feed_id."'";

//////////////////////////////Загрузка данных из базы////////////////////////
$requirest = mysql_query($zapros);
while($row = mysql_fetch_array($requirest)) 
	{
        $girl_id = $row['girl_id'];
        $feed_foto = $row['foto'];
        $feed_foto_description = $row['foto_description'];
        $feed_video = $row['video'];
        $feed_video_description = $row['video_description'];
        $feed_day_status = $row['day_status'];
        $feed_day_rating = $row['day_rating'];
        $feed_day_description = $row['day_description'];
        $feed_waiting_foto = $row['waiting_foto'];
        $feed_waiting_description = $row['waiting_description'];
        $feed_question_girl = $row['question_girl'];
        $feed_question_match = $row['question_match'];
        $feed_question_rating = $row['question_rating'];
        $feed_relation_description = $row['relation_description'];
        $feed_relation_girl = $row['relation_girl'];
        $feed_relation_man = $row['relation_man'];
        $feed_relation_foto = $row['relation_foto'];
        $feed_present_property = $row['present_property'];
        $feed_present_description = $row['present_description'];
        $feed_present_foto = $row['present_foto'];
        $feed_description = $row['description'];
        $feed_type = $row['type'];
        $feed_match_add = $row['match_add'];
        $feed_match_add_login = $row['match_add_login'];
        $feed_date_add = $row['date_add'];
    }

switch ($feed_type)
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
        $type_print = "Question to my matchmaker";
    break;
    
    case 6:
        $type_print = "My future relationship";
    break;
    
    case 7:
        $type_print = "Matchmaker presents a lady";
    break;
}


$zapros = "SELECT * FROM girls WHERE girl_id='".$girl_id."'";
$requirest = mysql_query($zapros);
while($row = mysql_fetch_array($requirest)) 
	{
		$girl_first_name = $row['first_name'];
		$girl_last_name = $row['last_name'];
		$girl_country = $row['country'];
		$girl_city  = $row['city'];
        $girl_foto = $row['foto'];
    }

if($girl_foto == "")
	{
		$foto_print = "../uploads/girls/avatar.jpg";
	}
else
	{
		$foto_print = "../".$girl_foto;
	}
/////////////////////////////////////////////////////////////////////


?>
<html>
<head>
	<meta charset="utf-8">
	<title>Событие</title>
	<link rel="stylesheet" href="./css/bootstrap.min.css" />
	<link rel="stylesheet" href="./css/font-awesome.min.css" />
	<link rel="stylesheet" href="./css/bootstrap-datetimepicker.min.css" />
	<script src="./js/jquery-1.11.3.min.js"></script>
	<script src="./js/moment-with-locales.min.js"></script>
	<script src="./js/bootstrap.min.js"></script>  
</head>



<?
$page_name = "additionally";
include "header.php";
?>


<body>

<div class="container" style="margin-top:40px;">
<div id="main">
	<div class="row" id="real-estates-detail">
		<div class="col-lg-4 col-md-4 col-xs-12">
			<div class="panel panel-default">
					<div class="panel-heading">
						<header class="panel-title">
							<div class="text-center">
								<strong><? echo 'ID: '.$girl_id . ' ' . $girl_first_name; ?></strong>
							</div>
						</header>
					</div>
					<div class="panel-body">
						<div class="text-center" id="author">
							<img width="220" height="220" src="<? echo $foto_print; ?>">
							<hr>						
						</div>
					</div>
			</div>
		</div>
		<div class="col-lg-8 col-md-8 col-xs-12">
			<div class="panel">
				<ul id="myTab" class="nav nav-pills">
					<li class="active"><a href="#user" data-toggle="tab">Описание события</a></li>
				</ul>
				<div class="panel-body">
					<div id="myTabContent" class="tab-content">
						<div class="tab-pane fade active in" id="user">
							<table class="table table-striped table-bordered">
									<tr><td class="active">Дата/Время добавления:</td><td><? echo $feed_date_add; ?></td></tr>
									<tr><td class="active">Тип события:</td><td><? echo $type_print; ?></td></tr>
									<tr><td class="active">Мачмеккер:</td><td><? echo $feed_match_add; ?></td></tr>
                                    <?
                                        if ($feed_type == "1") {
                                            echo("
                                                     <tr><td class='active'>Фотография:</td><td><img width='300' src='../$feed_foto'></td></tr>
                                                     <tr><td class='active'>Описание фотографии:</td><td>$feed_foto_description</td></tr>
                                                ");
                                        }

                                        if ($feed_type == "2") {
                                            echo("
                                                     <tr><td class='active'>Video URL:</td><td>$feed_video</td></tr>
                                                     <tr><td class='active'>Описание видео:</td><td>$feed_video_description</td></tr>
                                                ");
                                        }

                                        if ($feed_type == "3") {
                                            echo("
                                                     <tr><td class='active'>Тип дня:</td><td>$feed_day_status</td></tr>
                                                     <tr><td class='active'>Оценка дня:</td><td>$feed_day_rating</td></tr>
                                                     <tr><td class='active'>Описание дня:</td><td>$feed_day_description</td></tr>
                                                ");
                                        }

                                        if ($feed_type == "4") {
                                            echo("
                                                     <tr><td class='active'>Фотография:</td><td><img width='300' src='../$feed_waiting_foto'></td></tr>
                                                     <tr><td class='active'>Описание что ждет девушка:</td><td>$feed_waiting_description</td></tr>
                                                ");
                                        }

                                        if ($feed_type == "5") {
                                            echo("
                                                     <tr><td class='active'>Вопрос к мачмейкеру от девушки:</td><td>$feed_question_girl</td></tr>
                                                     <tr><td class='active'>Ответ от мачимейкера на вопрос девушки:</td><td>$feed_question_match</td></tr>
                                                     <tr><td class='active'>Оценка ответа мачмейкера:</td><td>$feed_question_rating</td></tr>
                                                ");
                                        }

                                        if ($feed_type == "6") {
                                            echo("
                                                     <tr><td class='active'>Описание как девушка видит отношения:</td><td>$feed_relation_description</td></tr>
                                                     <tr><td class='active'>Вопрос к мужчине:</td><td>$feed_relation_man</td></tr>
                                                     <tr><td class='active'>Как я отвечаю на этот вопрос:</td><td>$feed_relation_girl</td></tr>
                                                     <tr><td class='active'>Фотография:</td><td><img width='300' src='../$feed_relation_foto'></td></tr>
                                                ");
                                        }

                                        if ($feed_type == "7") {
                                            echo("
                                                     <tr><td class='active'>Описания качеств девушек:</td><td>$feed_present_property</td></tr>
                                                     <tr><td class='active'>Дополнительное описание:</td><td>$feed_present_description</td></tr>
                                                     <tr><td class='active'>Фотография:</td><td><img width='300' src='../$feed_present_foto'></td></tr>
                                                ");
                                        }

                                         
                                    ?>
																		
							</table>
							<hr><a onClick="return window.confirm('Действительно удалить событие?');" href="./function/feed_delete.php?feed_id=<? echo $feed_id; ?>"><button type="button" class="btn btn-danger">Удалить событие</button></a>
							
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	
</div>
</div>


</body>
</html>
