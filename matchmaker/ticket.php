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


$ticket_id = $_GET['ticket_id'];
/////////////Фильтрация///////////////////
$ticket_id = htmlspecialchars($ticket_id);
$ticket_id = mysql_escape_string($ticket_id);

$zapros1 = "SELECT * FROM tickets WHERE ticket_id='".$ticket_id."' AND matchmaker_login='".$_SESSION['login_match']."';";

//////////////////////////////Загрузка данных из базы////////////////////////
$requirest1 = mysql_query($zapros1);
while($row1 = mysql_fetch_array($requirest1)) 
	{
		$date_add = $row1['date_add'];
		$date_end = $row1['date_end'];
		$user_id = $row1['user_id'];
		$user_email = $row1['user_email'];
		$user_foto = $row1['user_foto'];
        $question = $row1['question'];
        $answer = $row1['answer'];
		$status = $row1['status'];

		switch ($status)
            {
                case 0:
                    $status_print = "Новое сообщение";
                    $td_class = "info";
                break;

                case 1:
                    $status_print = "Отвеченное сообщение";
                    $td_class = "warning";
                break;
            }
	
            if($date_end == "0000-00-00 00:00:00")
                {
                    $date_end = "Не обработано";
                }
    }

$zapros2 = "SELECT * FROM clients WHERE user_id='".$user_id."'";	
$requirest2 = mysql_query($zapros2);
while($row2 = mysql_fetch_array($requirest2)) 
	{
		$first_name = $row2['first_name'];
		$last_name = $row2['last_name'];
		$telefon = $row2['telefon'];
		$foto = $row2['foto'];
		$matchmaker_login = $row2['matchmaker_login'];
	}



/////////////////////////////////////////////////////////////////////
?>
<html>
<head>
	<meta charset="utf-8">
	<title>Сообщение - <? echo $ticket_id; ?></title>
	<link rel="stylesheet" href="./css/bootstrap.min.css" />
	<link rel="stylesheet" href="./css/font-awesome.min.css" />
	<script src="./js/jquery-1.11.3.min.js"></script>
	<script src="./js/bootstrap.min.js"></script>  
</head>


<?
$page_name = "tickets";
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
								<strong>Номер сообщения: <? echo $ticket_id; ?></strong>
							</div>
						</header>
					</div>
					<div class="panel-body">
						<div class="text-center" id="author">
							<img height="250" width="250" src="../<? echo $foto; ?>">	
							<hr>
							<h4>Статус: <b><? echo $status_print; ?></b></h4>
                            <a href="./client_profile.php?user_id=<? echo $user_id; ?>"><button type="button" class="btn btn-success">Открыть профиль клиента</button></a>
							<hr>
						</div>
					</div>
			</div>
		</div>
		<div class="col-lg-8 col-md-8 col-xs-12">
			<div class="panel">
				<ul id="myTab" class="nav nav-pills">
					<li class="active"><a href="#ticket" data-toggle="tab">Описание</a></li>
				</ul>
				<div class="panel-body">
					<div id="myTabContent" class="tab-content">
						<div class="tab-pane fade active in" id="ticket">
							<table class="table table-striped table-bordered">
									<tr><td class="active">Дата создания:</td><td><? echo $date_add; ?></td></tr>
									<tr><td class="active">ID клиента:</td><td><? echo $user_id; ?></td></tr>
									<tr><td class="active">Имя клиента:</td><td><? echo $first_name; ?></td></tr>
									<tr><td class="active">Фамилия клиента:</td><td><? echo $last_name; ?></td></tr>
									<tr><td class="active">Email клиента:</td><td><? echo $user_email; ?></td></tr>
									<tr><td class="active">Дата ответа:</td><td><? echo $date_end; ?></td></tr>
							</table>
                            <hr>
                            <div class="form-group">
                                <label>Текст сообщения от клиента:</label>
                                <textarea name="question" class="form-control rounded" style="height: 200px;"><? echo $question; ?></textarea>
                            </div>
                            <!-- Модальное окно с фото -->
							<? if($user_foto <> "") 
								{ 
									echo('
											<button class="btn btn-info" type="button" data-toggle="modal" data-target="#myModal">Прикрепленное фото</button>
											<div id="myModal" class="modal fade">
												<div class="modal-dialog">
													<div class="modal-content">
														<div class="modal-header"><button class="close" type="button" data-dismiss="modal">×</button>
															<h4 class="modal-title">Фотография прикрепленная к письму</h4>
														</div>
														<div class="modal-body"><img src="../'.$user_foto.'"></div>
														<div class="modal-footer"><button class="btn btn-default" type="button" data-dismiss="modal">Закрыть</button></div>
													</div>
												</div>
											</div>
										'); 
								} 
							?>
							<!-- --------------------- -->
                            <hr>
							<form id="send_answer" action="./function/ticket_send_answer.php" method="POST" role="form">
								<input name="user_id" type="hidden" value="<? echo $user_id; ?>">
								<input name="ticket_id" type="hidden" value="<? echo $ticket_id; ?>">
								<div class="form-group">
									<label>Ответ для клиента:</label>
									<textarea name="answer" class="form-control rounded" style="height: 200px;"><? echo $answer; ?></textarea>
								</div>
							</form>
                            <? if($status == '0') { echo('<hr><button onClick="return window.confirm(\'Действетельно отправить ответ?\');" type="submit" form="send_answer" class="btn btn-success">Отправить ответ</button>'); } ?>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	
</div>


</body>
</html>
