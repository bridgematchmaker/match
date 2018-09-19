<?
session_start();
isset($_SESSION['login_admin']) or die("<script>javascript:window.location='index.php'</script>");

include("../connect.php");

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
	<div class="col-lg-6 col-md-6 col-sm-9 col-xs-12">
		<form enctype='multipart/form-data' action="./function/match_add_end.php" method="POST" role="form">
				
				<div class="form-group">
					<label>Логин *</label>
					<input name="login" type="text" class="form-control rounded">
				</div>
				
				<div class="form-group">
					<label>Пароль *</label>
					<input name="password" type="password" class="form-control rounded">
				</div>
				
								
				<div class="form-group">
					<label>Имя *</label>
					<input name="name" type="text" class="form-control rounded">
				</div>
				
				<div class="form-group">
					<label>E-mail *</label>
					<input name="email" type="email" class="form-control rounded">
					</div>
								
				<div class="form-group">
					<label>Skype</label>
					<input name="skype" type="text" class="form-control rounded">
				</div>
								
				<div class="form-group">
					<label>Возраст</label>
					<input name="age" type="text" class="form-control rounded">
				</div>

				<div class="form-group">
						<label>Телефон</label>
						<input name="phone" type="text" class="form-control rounded">
				</div>
								
				<div class="form-group">
						<label>Рабочие часы</label>
						<input name="time" type="text" class="form-control rounded">
				</div>
								
				<div class="form-group">
					<label>Страна</label>
					<input name="country" type="text" class="form-control rounded">
				</div>

				<div class="form-group">
					<label>Количество успешных встреч</label>
					<input name="meetings" type="text" class="form-control rounded">
				</div>
				
				<div class="form-group">
					<label>Рейтинг</label><br>
					<select size="1" name="rating" style="width:200px;">
						<option value="1">1</option>
						<option value="2">2</option>
						<option value="3">3</option>
						<option value="4">4</option>
						<option value="5" selected>5</option>
					</select>
				</div>
								
				<div class="form-group">
					<label>О себе</label>
					<textarea name="description" class="form-control rounded" style="height: 100px;" ></textarea>
				</div>

				<div class="form-group">
					<label>Ответы на часто задаваемые вопросы</label>
					<textarea name="answers" class="form-control rounded" style="height: 300px;" ></textarea>
				</div>

				<div class="form-group">
					<label>Фотография</label>
					<input type='file' name='file'/>
				</div>

				<div class="form-group">
					<label>Тип учетной записи</label><br>
					<select size="1" name="status" style="width:200px;">
						<option value="1">Матчмекер</option>
						<option value="0">Агенство</option>
					</select>
				</div>
				
				<div class="form-group">
					<button type="submit" class="btn btn-success" >Добавить мачмекера</button>
				</div>
			</form>
	</div>		
	</div>
</body>
</html>