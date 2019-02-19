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


$order_id = $_GET['order_id'];

$zapros1 = "SELECT * FROM orders WHERE order_id='".$order_id."'";

//////////////////////////////Загрузка данных из базы////////////////////////
$requirest1 = mysql_query($zapros1);
while($row1 = mysql_fetch_array($requirest1)) 
	{
		$order_id = $row1['order_id'];
		$date_add = $row1['date_add'];
		$date_end = $row1['date_end'];
		$user_id = $row1['user_id'];
		$gift_delivery = $row1['gift_delivery'];
		$gift_video_report = $row1['gift_video_report'];
		$girl_id = $row1['girl_id'];
		$user_email = $row1['user_email'];
		$skype_link = $row1['skype_link'];
		$skype_time = $row1['skype_time'];
		$match_login_processed = $row1['match_login_processed'];
		$type = $row1['type'];
		$status = $row1['status'];
		$description1 = $row1['description1'];
		$description2 = $row1['description2'];
		$mail_client = $row1['mail_client'];
		$mail_girl = $row1['mail_girl'];
		$foto_client = $row1['foto_client'];
							
		switch ($status)
			{
				case 0:
					$status_print = "Новый заказ";
				break;
			
				case 1:
					$status_print = "Обрабатывается";
				break;
		
				case 2:
					$status_print = "Выполнен";
				break;
		
				case 3:
					$status_print = "Отменен";
				break;	
			}
						
		switch ($type)
			{
				case 0:
					$type_print = "E-Mail";
				break;
			
				case 1:
					$type_print = "Skype";
				break;
		
				case 2:
					$type_print = "Подарок";
				break;
		
			}		
	}

if($match_login_processed == "")
	{
		$match_login_processed = "Заказ еще не выполнен";
	}	
	
if($date_end == "0000-00-00")
	{
		$date_end = "Заказ еще не выполнен";
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

if($matchmaker_login == "None")
	{
		$matchmaker_login_print = "Не определен";
	}
else
	{
		$matchmaker_login_print = $matchmaker_login;
	}


/////////////////////////////////////////////////////////////////////

$zapros_girl = "SELECT * FROM girls WHERE girl_id='".$girl_id."'";

//////////////////////////////Загрузка данных из базы////////////////////////
$requirest_girl = mysql_query($zapros_girl);
while($row_girl = mysql_fetch_array($requirest_girl)) 
	{
		$girl_first_name = $row_girl['first_name'];
		$girl_last_name = $row_girl['last_name'];
		$girl_country = $row_girl['country'];
		$girl_city  = $row_girl['city'];
		$girl_foto = $row_girl['foto'];
		$girl_birthday = $row_girl['birthday'];
		$girl_gallery_status = $row_girl['gallery_status'];
		$girl_login_match = $row_girl['login_match'];
		$girl_email = $row_girl['question45'];
	}
?>
<html>
<head>
	<meta charset="utf-8">
	<title>Заказ - <? echo $order_id; ?></title>
	<link rel="stylesheet" href="./css/bootstrap.min.css" />
	<link rel="stylesheet" href="./css/font-awesome.min.css" />
	<script src="./js/jquery-1.11.3.min.js"></script>
	<script src="./js/bootstrap.min.js"></script>  
</head>


<?
$page_name = "orders";
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
								<strong>Номер заказа: <? echo $order_id; ?></strong>
							</div>
						</header>
					</div>
					<div class="panel-body">
						<div class="text-center" id="author">
							<img height="250" width="250" src="../<? echo $girl_foto; ?>">

							
							<hr>
							<h4>Статус заказа: <b><? echo $status_print; ?></b></h4>
							<? if(($status == '0') AND ($type == '0')) { echo('<hr><button onClick="return window.confirm(\'Отправив письмо - Вы подтверждаете что девушка останется активновной в системе еще 90 дней.\');" type="submit" form="send_email_girl" class="btn btn-success">Отправить письмо девушке</button><br> На E-Mail: '.$girl_email); } ?>
							<? if(($status == '1') AND ($type == '0')) { echo('<hr><button onClick="return window.confirm(\'Действительно отправить ответ от девушки клиенту?\');" type="submit" form="send_email_client" class="btn btn-success">Отправить письмо клиенту</button><br> На E-Mail: '.$user_email); } ?>
							<? if(($status == '1') AND ($type == '1')) { echo('<hr><a onClick="return window.confirm(\'Подтвердить выполнение заказа?\');" href="./function/order_skype_confirm.php?order_id='.$order_id.'&user_id='.$user_id.'"><button class="btn btn-success">Подтвердить выполнение</button></a>'); } ?>
							<? if(($status == '0') AND ($type == '2')) { echo('<hr><a onClick="return window.confirm(\'Подтвердить выполнение заказа?\');" href="./function/order_gift_confirm.php?order_id='.$order_id.'&user_id='.$user_id.'"><button class="btn btn-success">Подтвердить выполнение</button></a>'); } ?>
							<? if(($status == '0') OR ($status == '1')) { echo('<hr><a onClick="return window.confirm(\'Действительно отменить заказ?\');" href="./function/order_cancel.php?order_id='.$order_id.'&type='.$type.'&user_id='.$user_id.'"><button class="btn btn-danger">Отменить заказ</button></a>'); } ?>
							<hr>
						</div>
					</div>
			</div>
		</div>
		<div class="col-lg-8 col-md-8 col-xs-12">
			<div class="panel">
				<ul id="myTab" class="nav nav-pills">
					<li class="active"><a href="#order" data-toggle="tab">Описание заказа</a></li>
					<? if($type == "0") { echo('<li class=""><a href="#emails" data-toggle="tab">Тексты писем</a></li>'); } ?>
				</ul>
				<div class="panel-body">
					<div id="myTabContent" class="tab-content">
						<div class="tab-pane fade active in" id="order">
							<table class="table table-striped table-bordered">
									<tr><td class="active">Дата создания заказа:</td><td><? echo $date_add; ?></td></tr>
									<tr><td class="active">Тип заказа:</td><td><? echo $type_print; ?></td></tr>
									<tr><td class="active">Описание заказа:</td><td><? echo $description1; ?></td></tr>
									<? if($type == "2") { echo("<tr><td class='active'>Статус заказа доставки:</td><td>$gift_delivery</td></tr>"); } ?>
									<? if($type == "2") { echo("<tr><td class='active'>Статус заказа видеотчета:</td><td>$gift_video_report</td></tr>"); } ?>
									<tr><td class="active">ID клиента:</td><td><? echo $user_id; ?></td></tr>
									<tr><td class="active">Имя клиента:</td><td><? echo $first_name; ?></td></tr>
									<tr><td class="active">Фамилия клиента:</td><td><? echo $last_name; ?></td></tr>
									<tr><td class="active">Email клиента:</td><td><? echo $user_email; ?></td></tr>
									<? if($type == "1") { echo("<tr><td class='active'>Дата / Время Skype конференции:</td><td>$skype_time</td></tr>"); } ?>
									<? if($type == "1") { echo("<tr><td class='active'>Коментирий клиента к заказу:</td><td>$description2</td></tr>"); } ?>
									<? if($type == "2") { echo("<tr><td class='active'>ID Платежа:</td><td>$description2</td></tr>"); } ?>
									<tr><td class="active">ID девушки:</td><td><a href="./girl_profile.php?girl_id=<? echo $girl_id; ?>"><? echo $girl_id; ?></a></td></tr>
									<tr><td class="active">Мачмекер клиента:</td><td><? echo $matchmaker_login_print; ?></td></tr>
									<tr><td class="active">Мачмекер выполнивший заказ:</td><td><? echo $match_login_processed; ?></td></tr>
									<tr><td class="active">Дата выполнения заказа:</td><td><? echo $date_end; ?></td></tr>
							</table>
							<? if (($type == "1") AND (($status == '0') OR ($status == '1'))) { 
								echo('
									<form action="./function/order_skype_link.php" method="POST">
										<input name="order_id" type="hidden" value="'.$order_id.'">
										<div class="form-group">
											<label>Ссылка на видео конференцию:</label>
											<input name="skype_link" type="text" value="'.$skype_link.'" required>
										</div>
										<input type="submit" class="btn btn-success" value="Установить ссылку">
									</form>
								'); 
								} 
							?>
							<hr>
							<a href="./client_profile.php?user_id=<? echo $user_id; ?>"><button type="button" class="btn btn-success">Открыть профиль клиента</button></a>
						</div>
						
						
						<div class="tab-pane fade" id="emails">
							<form id="send_email_girl" action="./function/order_mail_send_email_girl.php" method="POST" role="form">
								<input name="order_id" type="hidden" value="<? echo $order_id; ?>">
								
								<div class="form-group">
									<label>Текст письма от клиента:</label>
									<textarea name="mail_client" class="form-control rounded" style="height: 200px;" <? if($status <> "0") { echo("disabled"); } ?> ><? echo $mail_client; ?></textarea>
								</div>
								
							</form>
							
							<!-- Модальное окно с фото -->
							<? if($foto_client <> "") 
								{ 
									echo('
											<button class="btn btn-info" type="button" data-toggle="modal" data-target="#myModal">Прикрепленное фото</button>
											<div id="myModal" class="modal fade">
												<div class="modal-dialog">
													<div class="modal-content">
														<div class="modal-header"><button class="close" type="button" data-dismiss="modal">×</button>
															<h4 class="modal-title">Фотография прикрепленная к письму</h4>
														</div>
														<div class="modal-body"><img src="../'.$foto_client.'"></div>
														<div class="modal-footer"><button class="btn btn-default" type="button" data-dismiss="modal">Закрыть</button></div>
													</div>
												</div>
											</div>
										'); 
								} 
							?>
							<!-- --------------------- -->
							
							<hr><hr>
							<form id="send_email_client" action="./function/order_mail_send_email_client.php" method="POST" role="form">
								<input name="order_id" type="hidden" value="<? echo $order_id; ?>">
								
								<div class="form-group">
									<label>Ответ от девушки:</label>
									<textarea name="mail_girl" class="form-control rounded" style="height: 200px;" <? if($status <> "1") { echo("disabled"); } ?> ><? echo $mail_girl; ?></textarea>
								</div>
							
							</form>
						</div>
						
					</div>
				</div>
			</div>
		</div>
	</div>
	
</div>


</body>
</html>
