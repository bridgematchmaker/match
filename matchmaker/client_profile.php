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


$user_id = $_GET['user_id'];


$zapros_tarif = "SELECT * FROM setting_tarif";
$requirest_tarif = mysql_query($zapros_tarif);
while($row_tarif = mysql_fetch_array($requirest_tarif)) 
	{
		if($row_tarif['tarif_name'] == "free")
		{
			$free_day = $row_tarif['tarif_day'];
			$free_price = $row_tarif['tarif_price'];
			$free_letters = $row_tarif['tarif_letters'];
			$free_skypes = $row_tarif['tarif_skypes'];
			$free_gifts = $row_tarif['tarif_gifts'];
			$free_advice_match = $row_tarif['tarif_advice_match'];
			$free_assessment_match = $row_tarif['tarif_assessment_match'];
		}
		
		if($row_tarif['tarif_name'] == "silver")
		{
			$silver_day = $row_tarif['tarif_day'];
			$silver_price = $row_tarif['tarif_price'];
			$silver_letters = $row_tarif['tarif_letters'];
			$silver_skypes = $row_tarif['tarif_skypes'];
			$silver_gifts = $row_tarif['tarif_gifts'];
			$silver_advice_match = $row_tarif['tarif_advice_match'];
			$silver_assessment_match = $row_tarif['tarif_assessment_match'];
		}
		
		if($row_tarif['tarif_name'] == "gold")
		{
			$gold_day = $row_tarif['tarif_day'];
			$gold_price = $row_tarif['tarif_price'];
			$gold_letters = $row_tarif['tarif_letters'];
			$gold_skypes = $row_tarif['tarif_skypes'];
			$gold_gifts = $row_tarif['tarif_gifts'];
			$gold_advice_match = $row_tarif['tarif_advice_match'];
			$gold_assessment_match = $row_tarif['tarif_assessment_match'];
		}
		
		if($row_tarif['tarif_name'] == "premium")
		{
			$premium_day = $row_tarif['tarif_day'];
			$premium_price = $row_tarif['tarif_price'];
			$premium_letters = $row_tarif['tarif_letters'];
			$premium_skypes = $row_tarif['tarif_skypes'];
			$premium_gifts = $row_tarif['tarif_gifts'];
			$premium_advice_match = $row_tarif['tarif_advice_match'];
			$premium_assessment_match = $row_tarif['tarif_assessment_match'];
		}
	}


$zapros1 = "SELECT * FROM clients WHERE user_id='".$user_id."'";
$zapros2 = "SELECT * FROM questions WHERE client_id='".$user_id."'";
$zapros3 = "SELECT * FROM clients_services WHERE client_id='".$user_id."'";


//////////////////////////////Загрузка данных из базы////////////////////////
$requirest1 = mysql_query($zapros1);
while($row1 = mysql_fetch_array($requirest1)) 
	{
		$first_name = $row1['first_name'];
		$last_name = $row1['last_name'];
		$email_client = $row1['email_client'];
		$country = $row1['country'];
		$telefon = $row1['telefon'];
		$foto = $row1['foto'];
		$matchmaker_login = $row1['matchmaker_login'];
		$status_system = $row1['status_system'];
		$status_tarif = $row1['status_tarif'];
		$status_email = $row1['status_email'];
		$status_anketa2 = $row1['status_anketa2'];
		$status_verification = $row1['status_verification'];
		$birthday = $row1['birthday'];
		$date_reg = $row1['date_reg'];
		$utm_source = $row1['utm_source'];		
		$service = $row1['service'];	
		$date_tarif_set = $row1['date_tarif_set'];
		$password = $row1['password'];
		$activation_key = md5($password);
	}
switch ($status_system) 
	{
		case 0:
			$status_system_print = "Новый";
		break;
			
		case 1:
			$status_system_print = "Активный";
		break;
		
		case 2:
			$status_system_print = "Верефицированый";
		break;
		
		case 3:
			$status_system_print = "Верефицированый полный";
		break;	
		
		case 4:
			$status_system_print = "Удаленный";
		break;	
	}

switch ($service) 
	{
		case 0:
			$service_print = "Не определен";
		break;
		
		case 1:
			$service_print = "BridgeMatchMaker.com";
		break;
			
		case 2:
			$service_print = "Bridge-of-Love.com";
		break;
	}
	
	
switch ($status_email) 
	{
		case 0:
			$status_email_print = "Не подписан";
		break;
			
		case 1:
			$status_email_print = "Подписан";
		break;
	}
if($matchmaker_login == "None")
	{
		$matchmaker_login_print = "Не определен";
	}
else
	{
		$matchmaker_login_print = $matchmaker_login;
	}

$requirest2 = mysql_query($zapros2);
while($row2 = mysql_fetch_array($requirest2)) 
	{
		$question1 = $row2['question1'];
		$question2 = $row2['question2'];
		$question3 = $row2['question3'];
		$question4 = $row2['question4'];
		$question5 = $row2['question5'];
		$question6 = $row2['question6'];
		$question7 = $row2['question7'];
		$question8 = $row2['question8'];
		$question9 = $row2['question9'];
		$question10 = $row2['question10'];
		$question11 = $row2['question11'];
		$question12 = $row2['question12'];
		$question13 = $row2['question13'];
		$question14 = $row2['question14'];
		$question15 = $row2['question15'];
		$question16 = $row2['question16'];
		$question17 = $row2['question17'];
		$question18 = $row2['question18'];
		$question19 = $row2['question19'];
		$question20 = $row2['question20'];
		$question21 = $row2['question21'];
		$question22 = $row2['question22'];
		$question23 = $row2['question23'];
		$question24 = $row2['question24'];
		$question25 = $row2['question25'];
		$question26 = $row2['question26'];
		$question27 = $row2['question27'];
		$question28 = $row2['question28'];
		$question29 = $row2['question29'];
		$question30 = $row2['question30'];
		$question31 = $row2['question31'];
		$question32 = $row2['question32'];
		$question33 = $row2['question33'];
		$question34 = $row2['question34'];
		$question35 = $row2['question35'];
		$question36 = $row2['question36'];
		$question37 = $row2['question37'];
		$question38 = $row2['question38'];
		$question39 = $row2['question39'];
		$question40 = $row2['question40'];
		$question41 = $row2['question41'];
		$question42 = $row2['question42'];
		$question43 = $row2['question43'];
		$question44 = $row2['question44'];
		$question45 = $row2['question45'];
		$question46 = $row2['question46'];
		$question47 = $row2['question47'];
		$question48 = $row2['question48'];
		$question49 = $row2['question49'];
		$question50 = $row2['question50'];
		$question51 = $row2['question51'];
	}
/////////////////////////////////////////////////////////////////////


//////////Количетсво дней c начала с установки тарифа/////////////////
$now_data = time(); // текущее время (метка времени)
$your_date = strtotime($date_tarif_set); // какая-то дата в строке
$datediff = $now_data - $your_date; // получим разность дат (в секундах)
$data_print = floor($datediff / (60 * 60 * 24)); // Количество дней после регистрации
/////////////////////////////////////////////////////////////////////


switch ($status_tarif) 
	{
		case 0:
			$status_tarif_print = "Free";
			if( $data_print < $free_day)
				{
					$data_print = $free_day - $data_print;
					$status_tarif = 1;
				}
			else
				{
					$data_print = 0;
					$status_tarif = 0;
				}
		break;
		
		case 1:
			$status_tarif_print = "Silver";
			if( $data_print < $silver_day)
				{
					$data_print = $silver_day - $data_print;
					$status_tarif = 1;
				}
			else
				{
					$data_print = 0;
					$status_tarif = 0;
				}
		break;
		
		case 2:
			$status_tarif_print = "Gold";
			if( $data_print < $gold_day)
				{
					$data_print = $gold_day - $data_print;
					$status_tarif = 1;
				}
			else
				{
					$data_print = 0;
					$status_tarif = 0;
				}
		break;
		
		case 3:
			$status_tarif_print = "Premium";
			if( $data_print < $premium_day)
				{
					$data_print = $premium_day - $data_print;
					$status_tarif = 1;
				}
			else
				{
					$data_print = 0;
					$status_tarif = 0;
				}
		break;	
	}

	
$requirest3 = mysql_query($zapros3);
while($row3 = mysql_fetch_array($requirest3)) 
	{
		$letters = $row3['letters'];
		$skypes = $row3['skypes'];
		$gifts = $row3['gifts'];
		$advice_match = $row3['advice_match'];
		$assessment_match = $row3['assessment_match'];
	}
?>
<html>
<head>
	<meta charset="utf-8">
	<title>Профиль клиента</title>
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

<div class="container" style="margin-top:40px;">
<div id="main">
	<div class="row" id="real-estates-detail">
		<div class="col-lg-4 col-md-4 col-xs-12">
			<div class="panel panel-default">
					<div class="panel-heading">
						<header class="panel-title">
							<div class="text-center">
								<strong>User ID: <? echo $user_id; ?></strong>
							</div>
						</header>
					</div>
					<div class="panel-body">
						<div class="text-center" id="author">
							<img width="220" height="220" src="../<? echo $foto; ?>">
							<h4>Cтатус: <? echo $status_system_print; ?></h4>
							<hr>
							<h4>Тарифный план: <? echo $status_tarif_print; ?> (<? echo $data_print; ?> дней)</h4>
							<form action="./function/client_set_tarif_status.php" method="POST">
								<input type="hidden" name="user_id" value="<? echo $user_id; ?>">
								<select size="1" name="status_tarif" style="width:200px;">
									<option value="999">------</option>
									<option value="0">Free</option>
									<option value="1">Silver</option>
									<option value="2">Gold</option>
									<option value="3">Premium</option>
								</select>
								<button type="submit" class="btn btn-success btn-xs" data-original-title="" title="">Установить</button>
							</form>
						<a href="./function/client_tarif_date_erase.php?user_id=<? echo $user_id; ?>"><button class="btn btn-warning btn-xs">Сбросить оставшиеся дни</button></a>
							
							<hr>
							<h4>Статус E-Mail подписки: <? echo $status_email_print; ?></h4>
							<hr>
						</div>
					</div>
			</div>
		</div>
		<div class="col-lg-8 col-md-8 col-xs-12">
			<div class="panel">
				<ul id="myTab" class="nav nav-pills">
					<li class="active"><a href="#user" data-toggle="tab">О пользователе</a></li>
					<li class=""><a href="#balance" data-toggle="tab">Баланс клиента</a></li>
					<li class=""><a href="#anketa1" data-toggle="tab">Анкета 1</a></li>
					<? if(($status_anketa2 == "1") AND ($status_verification == "0")) { echo('<li class="bg-danger"><a href="#anketa2" data-toggle="tab">Анкета 2</a></li>'); } ?>
					<? if(($status_anketa2 == "1") AND ($status_verification == "1")) { echo('<li class=""><a href="#anketa2" data-toggle="tab">Анкета 2</a></li>'); } ?>
					<li class=""><a href="#email_log" data-toggle="tab">Лог писем</a></li>
					<li class=""><a href="#redakt" data-toggle="tab">Редактирование</a></li>
				</ul>
				<div class="panel-body">
					<div id="myTabContent" class="tab-content">
						<div class="tab-pane fade active in" id="user">
							<table class="table table-striped table-bordered">
									<tr><td class="active">Имя:</td><td><? echo $first_name; ?></td></tr>
									<tr><td class="active">Фамилия:</td><td><? echo $last_name; ?></td></tr>
									<tr><td class="active">Email:</td><td><? echo $email_client; ?></td></tr>
									<tr><td class="active">Телефон:</td><td><? echo $telefon; ?></td></tr>
									<tr><td class="active">Дата рождения:</td><td><? echo $birthday; ?></td></tr>
									<tr><td class="active">Страна:</td><td><? echo $country; ?></td></tr>
									<tr><td class="active">Дата регистрации:</td><td><? echo $date_reg; ?></td></tr>
									<tr><td class="active">Мачмеккер:</td><td><? echo $matchmaker_login_print; ?></td></tr>
									<tr><td class="active">Сервис:</td><td><? echo $service_print; ?></td></tr>
									<tr><td class="active">UTM_Source:</td><td><? echo $utm_source; ?></td></tr>
									<tr><td class="active">Ключ активации:</td><td><? echo $activation_key; ?></td></tr>
							</table>
							<? if($matchmaker_login == "None") { echo('<a href="./function/client_match_add.php?user_id='.$user_id.'&status_verification='.$status_verification.'"><button type="button" class="btn btn-success">Закрепить за собой</button></a> '); } ?>
							<? if($matchmaker_login <> "None") { echo('<a href="./function/client_match_del.php?user_id='.$user_id.'"><button type="button" class="btn btn-danger">Удалить связь с мачмекером</button></a>');}?>
							
							<hr>
							<a href="./orders_client.php?user_id=<? echo $user_id; ?>"><button type="button" class="btn btn-success">Все заказы клиента</button></a>
						</div>
						
						<div class="tab-pane fade" id="balance">
							<form action="./function/client_edit_balance.php" method="POST" role="form">
								<input name="user_id" type="hidden" value="<? echo $user_id; ?>">
								
								<div class="form-group">
									<label>Writing letters</label>
									<input name="letters" type="text" class="form-control rounded"  value="<? echo $letters; ?>">
								</div>
								
								<div class="form-group">
									<label>Skype conference</label>
									<input name="skypes" type="text" class="form-control rounded"  value="<? echo $skypes; ?>">
								</div>
								
								<div class="form-group">
									<label>Send gifts</label>
									<input name="gifts" type="text" class="form-control rounded"  value="<? echo $gifts; ?>">
								</div>
								
								<div class="form-group">
									<label>Detailed advice from matchmakers</label>
									<input name="advice_match" type="text" class="form-control rounded"  value="<? echo $advice_match; ?>">
								</div>
								
								<div class="form-group">
									<label>Express assessment of the matchmaker</label>
									<input name="assessment_match" type="text" class="form-control rounded"  value="<? echo $assessment_match; ?>">
								</div>
								
								<div class="form-group">
									<button type="submit" class="btn btn-success" data-original-title="" title="">Сохранить</button>
								</div>
							</form>
							
						</div>
						
						<div class="tab-pane fade" id="anketa1">
							<table class="table table-striped table-bordered">
									<tr><td>Nationality</td><td><? echo $question1; ?></td></tr>
									<tr><td>Religion</td><td><? echo $question2; ?></td></tr>
									<tr><td>Height</td><td><? echo $question3; ?></td></tr>
									<tr><td>Weight</td><td><? echo $question4; ?></td></tr>
									<tr><td>Body type</td><td><? echo $question5; ?></td></tr>
									<tr><td>Eye color</td><td><? echo $question6; ?></td></tr>
									<tr><td>Hair color</td><td><? echo $question7; ?></td></tr>
									<tr><td>Education</td><td><? echo $question8; ?></td></tr>
									<tr><td>Attitude to smoking, alcohol, drugs</td><td><? echo $question9; ?></td></tr>
									<tr><td>Marital status?</td><td><? echo $question10; ?></td></tr>
									<tr><td>What is your sexual orientation?</td><td><? echo $question11; ?></td></tr>
									<tr><td>How long are you lonely?</td><td><? echo $question12; ?></td></tr>
									<tr><td>Your profession?</td><td><? echo $question13; ?></td></tr>
									<tr><td>Your annual income</td><td><? echo $question14; ?></td></tr>
									<tr><td>Do you have children? If yes, how many?</td><td><? echo $question15; ?></td></tr>
									<tr><td>What is your native language?</td><td><? echo $question16; ?></td></tr>
									<tr><td>What languages can you speak?</td><td><? echo $question50; ?></td></tr>
									<tr><td>How did you hear about us?</td><td><? echo $question51; ?></td></tr>
							</table>	
						</div>
						
						<div class="tab-pane fade" id="anketa2">
							<table class="table table-striped table-bordered">
									<tr><td>Do you have experience in family life?</td><td><? echo $question17; ?></td></tr>
									<tr><td>Do you want children in a new relationship?</td><td><? echo $question18; ?></td></tr>
									<tr><td>What’s your interests in…?</td><td><? echo $question19; ?></td></tr>
									<tr><td>Attitude to pets</td><td><? echo $question20; ?></td></tr>
									<tr><td>Write briefly about yourself, about your lifestyle, your likes and dislikes</td><td><? echo $question21; ?></td></tr>
									<tr><td>Describe your perfect morning (you are a night owl or an early bird?)</td><td><? echo $question22; ?></td></tr>
									<tr><td>If your best friends will have to choose four words to describe you, which four words will they choose?</td><td><? echo $question23; ?></td></tr>
									<tr><td>Choose which one describes you well?</td><td><? echo $question24; ?></td></tr>
									<tr><td>How skilled you are in the following things?</td><td><? echo $question25; ?></td></tr>
									<tr><td>What things from the list you agree or disagree with…?</td><td><? echo $question26; ?></td></tr>
									<tr><td>Describe your desired future (goals, lifestyle, relationships in the family)</td><td><? echo $question27; ?></td></tr>
									<tr><td>What could you forgive and what can not?</td><td><? echo $question28; ?></td></tr>
									<tr><td>Why did you decide to choose an online dating site for your search?</td><td><? echo $question29; ?></td></tr>
									<tr><td>Why do you think that you haven’t found a suitable partner yet?</td><td><? echo $question30; ?></td></tr>
									<tr><td>In your opinion after how many dates a man can open his feelings to a girl?</td><td><? echo $question31; ?></td></tr>
									
									<tr><td><h4>Search criteria for your lady<h4></td><td></td></tr>
									
									<tr><td>Age Range</td><td><? echo $question32; ?></td></tr>
									<tr><td>Height</td><td><? echo $question33; ?></td></tr>
									<tr><td>Weight</td><td><? echo $question34; ?></td></tr>
									<tr><td>Eye color</td><td><? echo $question35; ?></td></tr>
									<tr><td>Hair color</td><td><? echo $question36; ?></td></tr>
									<tr><td>Nationality</td><td><? echo $question37; ?></td></tr>
									<tr><td>Religion</td><td><? echo $question38; ?></td></tr>
									<tr><td>Have children?</td><td><? echo $question39; ?></td></tr>
									<tr><td>Will you accept a partner who already has kids?</td><td><? echo $question40; ?></td></tr>
									<tr><td>With a lady from what city would you like to meet?</td><td><? echo $question41; ?></td></tr>
									<tr><td>Attitude to smoking, alcohol, drugs</td><td><? echo $question42; ?></td></tr>
									<tr><td>Desired traits of character in a lady</td><td><? echo $question43; ?></td></tr>
									<tr><td>Character traits that you can not be tolerate with</td><td><? echo $question44; ?></td></tr>
									<tr><td>Do you want the lady to know your native language or another language in which you can communicate?</td><td><? echo $question45; ?></td></tr>
									<tr><td>A girl should prefer an active or passive rest?</td><td><? echo $question46; ?></td></tr>
									<tr><td>Describe the lady you would like to meet on our website. What is most important for you?</td><td><? echo $question47; ?></td></tr>
									<tr><td>Your personal introduction letter (3000 characters)</td><td><? echo $question48; ?></td></tr>
									<tr><td>What messenger connected to you cell phone?</td><td><? echo $question49; ?></td></tr>
									
									
							</table>	
							<hr>
							<? if($status_verification == "0") { echo('<a href="./function/client_verification.php?user_id='.$user_id.'&status_system='.$status_system.'"><button type="button" class="btn btn-success">Подтвердить проверку</button></a> '); } ?>
						</div>

						<div class="tab-pane fade" id="email_log" style="height: 500px !important; overflow-y: scroll;">
							<div class="table-wrapper-scroll-y">
								<table class="table table-striped table-bordered">
									<thead>
										<tr>
											<th>Дата отправки:</th>
											<th>Статус:</th>
											<th>Тема:</th>
										</tr>
									</thead>
										
									<tbody>
									<?
										$zapros_email = "SELECT * FROM email_log WHERE email='$email_client' ORDER BY id DESC";
										$result_email = mysql_query($zapros_email);
										while ($row_email = mysql_fetch_assoc($result_email)) 
											{ ////////////////////Начало цикла таблицы//////////////////////////////
											
												//////////////////////Загружаем данные пользователей/////////////////////////					
												$date_add_email = $row_email['date_add'];
												$subject_email = $row_email['subject'];
												$status_email = $row_email['status'];
												////////////////////////////////////////////////////////////////////////////////////////
								
												////////////////////////////Вывод таблицы на экран///////////////////////////////    
												echo ("
													<tr>
														<td>$date_add_email</td>
														<td>$status_email</td>
														<td>$subject_email</td>
													</tr>
													");
												//echo ("Дата/Время: $date_add_email | Тема: $subject_email | Статус: $status_email" . PHP_EOL);
												////////////////////////////////////////////////////////////////////////////////////////
											}
									
									?>
									</tbody>
								</table>
							</div>
						</div>
						
						<div class="tab-pane fade" id="redakt">
							<form action="./function/client_edit.php" method="POST" role="form">
								<input name="user_id" type="hidden" value="<? echo $user_id; ?>">
								
								<div class="form-group">
									<label>Имя клиента</label>
									<input name="first_name" type="text" class="form-control rounded"  value="<? echo $first_name; ?>">
								</div>
								
								<div class="form-group">
									<label>Фамилия</label>
									<input name="last_name" type="text" class="form-control rounded"  value="<? echo $last_name; ?>">
								</div>
				
								<div class="form-group">
									<label>E-mail</label>
									<input name="email_client" type="email" class="form-control rounded"  value="<? echo $email_client; ?>">
								</div>
								
								<div class="form-group">
									<label>Телефон</label>
									<input name="telefon" type="text" class="form-control rounded"  value="<? echo $telefon; ?>">
								</div>
								
								<div class="form-group">
									<button type="submit" class="btn btn-success" data-original-title="" title="">Сохранить</button>
								</div>
							</form>
							<hr>
							<? if($status_system <> "4") { echo('<br><hr><a href="./function/client_del.php?user_id='.$user_id.'"><button type="button" class="btn btn-danger">Удалить пользователя</button></a>'); } ?>
							<? if($status_system == "4") { echo('<br><hr><a href="./function/client_repair.php?user_id='.$user_id.'"><button type="button" class="btn btn-success">Востановить пользователя</button></a>'); } ?>
							
							<hr>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	
	<div class="col-lg-12 col-md-12 col-xs-12">
		<h3>Список девушек клиента:</h3>
		<hr>
		<div class="panel">
				<ul id="myTab2" class="nav nav-pills">
					<li class="active"><a href="#recomendation" data-toggle="tab">Рекомендации мачмекера</a></li>
					<li class=""><a href="#blacklist" data-toggle="tab">Черный список</a></li>
				</ul>
				<hr>
				<div class="panel-body">
					<div id="myTabContent2" class="tab-content">
						<div class="tab-pane fade active in" id="recomendation">
							<table class="table table-striped table-bordered">
								<thead>
									<tr>
										<th>ID Девушки:</th>
										<th>Имя девушки:</th>
										<th>Соответствие:</th>
										<th>Дата добавления:</th>
										<th></th>
									</tr>
								</thead>
								<tbody>
									<?  
			
										$zapros_girls = "SELECT * FROM clients_girl WHERE user_id='".$user_id."' AND girl_status='0'";
										$requirest_girls = mysql_query($zapros_girls);
										while($row_girls = mysql_fetch_array($requirest_girls)) 
											{  
												$id = $row_girls['id'];
												$girl_id = $row_girls['girl_id'];
												$girl_name = $row_girls['girl_name'];
												$conformity = $row_girls['conformity'];
												$date_add = $row_girls['date_add'];
												$girl_status = $row_girls['girl_status'];
						
												////////////////////////////Вывод таблицы на экран/////////////////////////////// 
												echo ("
														<tr>
															<td>$girl_id</td>
															<td>$girl_name</td>
															<td>$conformity</td>
															<td>$date_add</td>
															<td>
																<a href='./function/client_girl_del.php?id=$id&user_id=$user_id'><span style='font-size:22px; margin-left:10px;' class='glyphicon glyphicon-remove'></span></a>
															</td>
														</tr>
													");
												////////////////////////////////////////////////////////////////////////////////////////
											}
									?>
								</tbody>
							</table>
							
							<br>
							<h4>Добавить девушку для клиента</h4>
							<div class="row">
								<div class="col-lg-12 col-md-12 col-xs-12">
									<form class="form-inline" action="./function/client_girl_add.php" method="POST" role="form">
										<input name="user_id" type="hidden" value="<? echo $user_id; ?>">
			
										<div class="form-group">
											<label>ID Девушки</label>
											<select class="selectpicker" data-width="auto" data-live-search="true"  data-size="5" name="girl_id">
												<?
												////////////////////////Загружаем массив девушек добавленных клиенту в профиль/////////////////////////
												$data_girl_id = Array(); // Масив с id девушек
												$count = 0;
												$sql_client_girl = "SELECT * FROM clients_girl WHERE user_id='".$user_id."'";
												$result_client_girl  = mysql_query($sql_client_girl);
												while($row_client_girl = mysql_fetch_array($result_client_girl)) 
													{ 
														$data_girl_id[$count] = $row_client_girl['girl_id'];
														$count++;
													}
												///////////////////////////////////////////////////////////////////////////////////////////////////////
						
												///////////Загрузка девушек , которые не добавленны у пользователя/////////////////////////////////////
												$sql_gellary_girl = "SELECT * FROM girls WHERE activation_status='1'";
												$result_gellary_girl  = mysql_query($sql_gellary_girl);
												while($row_gellary_girl = mysql_fetch_array($result_gellary_girl)) 
													{
														if (!in_array($row_gellary_girl['girl_id'], $data_girl_id)) 
															{
																echo('
																		<option value="'.$row_gellary_girl['girl_id'].'">ID: '.$row_gellary_girl['girl_id'].' ('.$row_gellary_girl['first_name'].' '.$row_gellary_girl['last_name'].')</option>
																	');
															}
													}
												///////////////////////////////////////////////////////////////////////////////////////////////////////
												?>
												<option value=""></option>
											</select>
										</div>
								
										<div class="form-group">
											<label> Cоответствие</label>
											<select class="selectpicker" data-width="auto"  data-size="5" name="conformity">
												<option value="1" default>1</option>
												<option value="2">2</option>
												<option value="3">3</option>
												<option value="4">4</option>
												<option value="5">5</option>
												<option value="6">6</option>
												<option value="7">7</option>
												<option value="8">8</option>
												<option value="9">9</option>
												<option value="10">10</option>
											</select>
										</div>
								
										<div class="form-group">
											<button type="submit" class="btn btn-success" data-original-title="" title="">Добавить девушку</button>
										</div>
									</form>
								</div>
							</div>
						</div>
						
						<div class="tab-pane fade" id="blacklist">
							<table class="table table-striped table-bordered">
								<thead>
									<tr>
										<th>ID Девушки:</th>
										<th>Имя девушки:</th>
										<th>Соответствие:</th>
										<th>Дата добавления:</th>
										<th></th>
									</tr>
								</thead>
								<tbody>
									<?  
			
										$zapros_girls = "SELECT * FROM clients_girl WHERE user_id='".$user_id."' AND girl_status='2'";
										$requirest_girls = mysql_query($zapros_girls);
										while($row_girls = mysql_fetch_array($requirest_girls)) 
											{  
												$id = $row_girls['id'];
												$girl_id = $row_girls['girl_id'];
												$girl_name = $row_girls['girl_name'];
												$conformity = $row_girls['conformity'];
												$date_add = $row_girls['date_add'];
												$girl_status = $row_girls['girl_status'];
						
												////////////////////////////Вывод таблицы на экран/////////////////////////////// 
												echo ("
														<tr>
															<td>$girl_id</td>
															<td>$girl_name</td>
															<td>$conformity</td>
															<td>$date_add</td>
															<td>
																<a href='./function/client_girl_del.php?id=$id&user_id=$user_id'><span style='font-size:22px; margin-left:10px;' class='glyphicon glyphicon-remove'></span></a>
															</td>
														</tr>
													");
												////////////////////////////////////////////////////////////////////////////////////////
											}
									?>
								</tbody>
							</table>
							
						</div>
					</div>
				</div>
		</div>
		
		
		
	</div>
</div>


</body>
</html>
