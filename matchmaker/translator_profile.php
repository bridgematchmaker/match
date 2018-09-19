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

$translator_id = $_GET['translator_id'];
$translator_id = htmlspecialchars($translator_id);
$translator_id = mysql_escape_string($translator_id);

$zapros = "SELECT * FROM translators WHERE translator_id='".$translator_id."'";

//////////////////////////////Загрузка данных из базы////////////////////////
$requirest = mysql_query($zapros);
while($row = mysql_fetch_array($requirest)) 
	{
		$translator_first_name = $row['translator_first_name'];
		$translator_last_name = $row['translator_last_name'];
		$translator_age = $row['translator_age'];
		$translator_email = $row['translator_email'];
		$translator_phone = $row['translator_phone'];
		$translator_level = $row['translator_level'];
		$translator_experience = $row['translator_experience'];
		$translator_foto = $row['translator_foto'];
		$translator_match = $row['translator_match'];
		$translator_date_add = $row['translator_date_add'];
		$agency = $row['agency'];
		$agency_email = $row['agency_email'];
		$agency_phone = $row['agency_phone'];
	}

/////////////////////////////////////////////////////////////////////

///////////////////////////Проверка прав доступа //////////////////////////////////////////////////
if($translator_match <> $_SESSION['login_match'])
	{
			echo("<script>alert('Доступ к профилю запрещен');</script><script>javascript:window.location='index.php?logout'</script>");
	}
///////////////////////////////////////////////////////////////////////////////////////////////////
?>
<html>
<head>
	<meta charset="utf-8">
	<title>Профиль переводчика</title>
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
								<strong><? echo $translator_first_name; ?></strong>
							</div>
						</header>
					</div>
					<div class="panel-body">
						<div class="text-center" id="author">
							<img width="220" height="220" src="../<? echo $translator_foto; ?>">
							<hr>
							<form name='form' enctype='multipart/form-data' method='post' action='./function/translator_add_foto.php'>
								<input name="translator_id" type="hidden" value="<? echo $translator_id ?>">
								<p class="text-left"><label></label>
								<input type='file' name='file'/>
								<i>Избражение 220px на 220px до 1 Мб</i>
								<br>
								<br>
								<button type="submit" class="btn btn-success btn-md" data-original-title="" title="">Загрузить аватар</button></p>	
							</form>							
						</div>
					</div>
			</div>
		</div>
		<div class="col-lg-8 col-md-8 col-xs-12">
			<div class="panel">
				<ul id="myTab" class="nav nav-pills">
					<li class="active"><a href="#user" data-toggle="tab">О переводчике</a></li>
					<li class=""><a href="#redakt" data-toggle="tab">Редактирование</a></li>
				</ul>
				<div class="panel-body">
					<div id="myTabContent" class="tab-content">
						<div class="tab-pane fade active in" id="user">
							<table class="table table-striped table-bordered">
									<tr><td class="active">Имя:</td><td><? echo $translator_first_name; ?></td></tr>
									<tr><td class="active">Фамилия:</td><td><? echo $translator_last_name; ?></td></tr>
									<tr><td class="active">Email:</td><td><? echo $translator_email; ?></td></tr>
									<tr><td class="active">Телефон:</td><td><? echo $translator_phone; ?></td></tr>
									<tr><td class="active">Возраст:</td><td><? echo $translator_age; ?></td></tr>
									<tr><td class="active">Уровень знания языка:</td><td><? echo $translator_level; ?></td></tr>
									<tr><td class="active">Опыт работы в сфере знакомств:</td><td><? echo $translator_experience; ?></td></tr>
									<tr><td class="active">Агентство-представитель:</td><td><? echo $agency; ?></td></tr>	
									<tr><td class="active">Email агенства:</td><td><? echo $agency_email; ?></td></tr>		
									<tr><td class="active">Телефон агенства:</td><td><? echo $agency_phone; ?></td></tr>		
									<tr><td class="active">Дата добавления:</td><td><? echo $translator_date_add; ?></td></tr>									
							</table>
							<hr><a onClick="return window.confirm('Действительно удалить анкету?');" href="./function/translator_delete.php?translator_id=<? echo $translator_id; ?>"><button type="button" class="btn btn-danger">Удалить анкету</button></a>
							
						</div>
						
						
						
						<div class="tab-pane fade" id="redakt">
							<form action="./function/translator_edit.php" method="POST" role="form">
								<input name="translator_id" type="hidden" value="<? echo $translator_id; ?>">
				
								<div class="form-group">
									<label>Имя</label>
									<input name="translator_first_name" type="text" class="form-control rounded" value="<? echo $translator_first_name; ?>" required="required">
								</div>
				
								<div class="form-group">
									<label>Фамилия</label>
									<input name="translator_last_name" type="text" class="form-control rounded" value="<? echo $translator_last_name; ?>" required="required">
								</div>
				
								
								<div class="form-group">
									<label>Email</label>
									<input name="translator_email" type="text" class="form-control rounded" value="<? echo $translator_email; ?>" required="required">
								</div>
				
								<div class="form-group">
									<label>Телефон</label>
									<input name="translator_phone" type="text" class="form-control rounded" value="<? echo $translator_phone; ?>">
								</div>
								
								<div class="form-group">
									<label>Возраст</label>
									<input name="translator_age" type="text" class="form-control rounded" value="<? echo $translator_age; ?>">
								</div>
								
								<div class="form-group">
									<label>Уровень знания языка</label>
									<input name="translator_level" type="text" class="form-control rounded" value="<? echo $translator_level; ?>">
								</div>
							
								<div class="form-group">
									<label>Опыт работы в сфере знакомств</label>
									<input name="translator_experience" type="text" class="form-control rounded" value="<? echo $translator_experience; ?>">
								</div>
								
								<div class="form-group">
									<label>Агентство-представитель</label>
									<input name="agency" type="text" class="form-control rounded" value="<? echo $agency; ?>">
								</div>
								
								<div class="form-group">
									<label>Email агенства</label>
									<input name="agency_email" type="text" class="form-control rounded" value="<? echo $agency_email; ?>">
								</div>
								
								<div class="form-group">
									<label>Телефон агенства</label>
									<input name="agency_phone" type="text" class="form-control rounded" value="<? echo $agency_phone; ?>">
								</div>

								<div class="form-group">
									<button type="submit" class="btn btn-success" >Редактировать</button>
								</div>
							</form>
							<hr>
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
