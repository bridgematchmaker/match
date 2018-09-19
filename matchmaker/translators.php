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
	<title>Переводчики</title>
	<link rel="stylesheet" href="./css/bootstrap.min.css" />
	<link rel="stylesheet" href="./css/font-awesome.min.css" />
	<link rel="stylesheet" href="./css/bootstrap-select.css">
	<script src="./js/jquery-1.11.3.min.js"></script>
	<script src="./js/bootstrap.min.js"></script>  
	<script src="./js/bootstrap-select.js"></script>
	
</head>


<?
$page_name = "additionally";
include "header.php";
?>


<body>
<div style="padding:20px;">
	<div class="row">
		<div class="col-lg-4 col-md-4 col-sm-8 col-xs-12">
			<a href="./translator_add.php"><button class="btn btn-success" >Добавить переводчика</button></a>
			
		</div>
	</div>
	<hr>
	<table class="table table-striped table-bordered">
		<thead>
			<tr>
				<th></th>
				<th>Имя:</th>
				<th>Фамилия:</th>
				<th>Email:</th>
				<th>Телефон:</th>
				<th>Уровень знаний:</th>		
				<th>Дата добавления:</th>
			</tr>
		</thead>
			
		<tbody>
		<? 
			$zapros = "SELECT * FROM translators WHERE translator_match='".$_SESSION['login_match']."'";
			$result = mysql_query($zapros);
			while ($row = mysql_fetch_assoc($result)) 
				{ ////////////////////Начало цикла таблицы//////////////////////////////
				
					//////////////////////Загружаем данные пользователей/////////////////////////
					$translator_id = $row['translator_id'];					
					$translator_first_name = $row['translator_first_name'];
					$translator_last_name = $row['translator_last_name'];
					$translator_email = $row['translator_email'];
					$translator_phone = $row['translator_phone'];
					$translator_level = $row['translator_level'];
					$translator_date_add = $row['translator_date_add'];
					////////////////////////////////////////////////////////////////////////////////////////
    
					////////////////////////////Вывод таблицы на экран///////////////////////////////    
					echo ("
					<tr>
						<td><a href='./translator_profile.php?translator_id=$translator_id'><span style='font-size:22px; margin-left:10px;' class='glyphicon glyphicon-user'></span></a></td>
						<td>$translator_first_name</td>
						<td>$translator_last_name</td>
						<td>$translator_email</td>
						<td>$translator_phone</td>
						<td>$translator_level</td>
						<td>$translator_date_add</td>
					</tr>
						");
					////////////////////////////////////////////////////////////////////////////////////////

				}
		?>
		</tbody>
	</table>
</div>
</body>
</html>
