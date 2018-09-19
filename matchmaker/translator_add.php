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


?>
<html>
<head>
	<meta charset="utf-8">
	<title>Добавление переводчика в базу</title>
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
		<div class="col-lg-6 col-md-6 col-sm-9 col-xs-12">
			<form action="./function/translator_add_end.php" method="POST" role="form">
				<input name="translator_match" type="hidden" value="<? echo $_SESSION['login_match']; ?>">
				<div class="form-group">
					<label>Имя *</label>
					<input name="translator_first_name" type="text" class="form-control rounded" required="required">
				</div>

				<div class="form-group">
					<label>Фамилия *</label>
					<input name="translator_last_name" type="text" class="form-control rounded" required="required">
				</div>

				
				<div class="form-group">
					<label>Email</label>
					<input name="translator_email" type="text" class="form-control rounded" required="required">
				</div>

				<div class="form-group">
					<label>Телефон</label>
					<input name="translator_phone" type="text" class="form-control rounded">
				</div>
				
				<div class="form-group">
					<label>Возраст</label>
					<input name="translator_age" type="text" class="form-control rounded">
				</div>
				
				<div class="form-group">
					<label>Уровень знания языка</label>
					<input name="translator_level" type="text" class="form-control rounded" >
				</div>
			
				<div class="form-group">
					<label>Опыт работы в сфере знакомств</label>
					<input name="translator_experience" type="text" class="form-control rounded">
				</div>
				
				<div class="form-group">
					<label>Агентство-представитель</label>
					<input name="agency" type="text" class="form-control rounded">
				</div>
				
				<div class="form-group">
					<label>Email агенства</label>
					<input name="agency_email" type="text" class="form-control rounded">
				</div>
				
				<div class="form-group">
					<label>Телефон агенства</label>
					<input name="agency_phone" type="text" class="form-control rounded">
				</div>
				
				<div class="form-group">
					<button type="submit" class="btn btn-success" >Создать анкету</button>
				</div>
			</form>
		</div>		
	</div>
</body>
</html>