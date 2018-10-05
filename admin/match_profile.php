<?
session_start();
isset($_SESSION['login_admin']) or die("<script>javascript:window.location='index.php'</script>");

include("../connect.php");

$match_id = $_GET['match_id'];

$match_id = htmlspecialchars($match_id);
$match_id = mysql_escape_string($match_id);

$zapros = "SELECT * FROM matchmakers WHERE id='".$match_id."'";

	
	$requirest = mysql_query($zapros);
	while($row = mysql_fetch_array($requirest)) {

	  $name = $row['name'];
	  $description = $row['description'];
	  $foto = "../".$row['foto'];
	  $email = $row['email'];
	  $skype = $row['skype'];
	  $age = $row['age'];
	  $country = $row['country'];
	  $city = $row['city'];
	  $login = $row['login'];
	  $status = $row['status'];  
	  $phone = $row['phone']; 
	  $time = $row['time']; 
	  $rating = $row['rating'];
	  $meetings = $row['meetings'];
	  $answers = $row['answers'];
	  
	  }
switch ($status) 
	{
		case 0:
			$status_print = "Агенство";
		break;
			
		case 1:
			$status_print = "Матчмеккер";
		break;
		
		case 2:
			$status_print = "Удаленный";
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
$page_name = "match";
include "menu.php";
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
								<strong>Логин в системе: <? echo $login; ?></strong>
							</div>
						</header>
					</div>
					<div class="panel-body">
						<div class="text-center" id="author">
							<img width="220" height="220" src="<? echo $foto ?>">
							<h3><? echo $name ?></h3>
							<hr>
							<h4>Статус - <? echo $status_print ?></h4>
							
						</div>
					</div>
			</div>
		</div>
		<div class="col-lg-8 col-md-8 col-xs-12">
			<div class="panel">
				<ul id="myTab" class="nav nav-pills">
					<li class="active"><a href="#detail" data-toggle="tab">О пользователе</a></li>
					<li class=""><a href="#contact" data-toggle="tab">Редактировать профиль</a></li>
				</ul>
				<div class="panel-body">
					<div id="myTabContent" class="tab-content">
						<div class="tab-pane fade active in" id="detail">
							<table class="table table-striped table-bordered">
									<tr><td class="active">Email:</td><td><? echo $email ?></td></tr>
									<tr><td class="active">Skype:</td><td><? echo $skype ?></td></tr>
									<tr><td class="active">Возраст:</td><td><? echo $age ?></td></tr>
									<tr><td class="active">Телефон:</td><td><? echo $phone ?></td></tr>
									<tr><td class="active">Рабочие часы:</td><td><? echo $time ?></td></tr>
									<tr><td class="active">Страна:</td><td><? echo $country ?></td></tr>
									<tr><td class="active">Город:</td><td><? echo $city ?></td></tr>
									<tr><td class="active">О себе:</td><td><? echo $description ?></td></tr>
									<tr><td class="active">Ответы на вопросы:</td><td><? echo $answers ?></td></tr>
									<tr><td class="active">Количество встреч:</td><td><? echo $meetings ?></td></tr>
									<tr><td class="active">Рейтинг:</td><td><? echo $rating ?></td></tr>
							</table>
						</div>
						<div class="tab-pane fade" id="contact">
							<p></p>
							<form action="./function/match_edit.php" method="POST" role="form">
								<input name="login" type="hidden" value="<? echo $login ?>">
								<input name="match_id" type="hidden" value="<? echo $match_id ?>">
								
								<div class="form-group">
									<label>Имя</label>
									<input name="name" type="text" class="form-control rounded" placeholder="Укажите Ваше Имя" value="<? echo $name ?>">
								</div>
				
								<div class="form-group">
									<label>E-mail</label>
									<input name="email" type="email" class="form-control rounded" placeholder="Ваш Е-майл" value="<? echo $email ?>">
								</div>
								
								<div class="form-group">
									<label>Skype</label>
									<input name="skype" type="text" class="form-control rounded" placeholder="Ваш Skype" value="<? echo $skype ?>">
								</div>
								
								<div class="form-group">
									<label>Возраст</label>
									<input name="age" type="text" class="form-control rounded" placeholder="Ваш возраст" value="<? echo $age ?>">
								</div>

								<div class="form-group">
									<label>Телефон</label>
									<input name="phone" type="text" class="form-control rounded" placeholder="Ваш телефон" value="<? echo $phone ?>">
								</div>
								
								<div class="form-group">
									<label>Рабочие часы</label>
									<input name="time" type="text" class="form-control rounded" placeholder="Рабочие часы" value="<? echo $time ?>">
								</div>
								
								<div class="form-group">
									<label>Страна</label>
									<input name="country" type="text" class="form-control rounded" placeholder="Ваш страна" value="<? echo $country ?>">
								</div>

								<div class="form-group">
									<label>Город</label>
									<input name="city" type="text" class="form-control rounded" placeholder="Ваш город" value="<? echo $city ?>">
								</div>
								
								<div class="form-group">
									<label>О себе</label>
									<textarea name="description" class="form-control rounded" style="height: 100px;" ><? echo $description ?></textarea>
								</div>

								<div class="form-group">
									<label>Количество успешных встреч</label>
									<input name="meetings" type="text" class="form-control rounded" value="<? echo $meetings ?>">
								</div>
				
								<div class="form-group">
									<label>Рейтинг</label><br>
									<select size="1" name="rating" style="width:200px;">
										<option value="1" <? if($rating == 1) { echo("selected"); } ?> >1</option>
										<option value="2" <? if($rating == 2) { echo("selected"); } ?> >2</option>
										<option value="3" <? if($rating == 3) { echo("selected"); } ?> >3</option>
										<option value="4" <? if($rating == 4) { echo("selected"); } ?> >4</option>
										<option value="5" <? if($rating == 5) { echo("selected"); } ?> >5</option>
									</select>
								</div>

								<div class="form-group">
									<label>Ответы на часто задаваемые вопросы</label>
									<textarea name="answers" class="form-control rounded" style="height: 300px;" ><? echo $answers ?></textarea>
								</div>

								<div class="form-group">
									<button type="submit" class="btn btn-success" data-original-title="" title="">Сохранить</button>
								</div>
							</form>
							<hr>
							<form name='form' enctype='multipart/form-data' method='post' action='./function/match_add_foto.php'>
								<input name="login" type="hidden" value="<? echo $login ?>">
								<input name="match_id" type="hidden" value="<? echo $match_id ?>">
								<p class="text-left"><label>Выберите картинку</label>
								<br>
								<input type='file' name='file' />
								<br>
								<button type="submit" class="btn btn-success btn-md" data-original-title="" title="">Загрузить</button></p>
							</form>
							<hr>

							<form method='post' action='./function/match_edit_pass.php'>
								<input name="login" type="hidden" value="<? echo $login ?>">
								<input name="match_id" type="hidden" value="<? echo $match_id ?>">
								<div class="form-group">
									<label>Новый пароль</label>
									<input name="password" type="password" class="form-control rounded" value="">
								</div>
								<button type="submit" class="btn btn-success btn-md" data-original-title="" title="">Изменить пароль</button></p>
							</form>
							<hr>
							<br>
							<a href="./function/match_del.php?match_id=<? echo $match_id; ?>"><button type="button" class="btn btn-danger">Удалить мачмекера</button></a>
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