<?
session_start();
isset($_SESSION['login_match']) or die("<script>javascript:window.location='index.php'</script>");

include("../connect.php");
///////////////////////////////Проверка статуса мачмеккера////////////////////////////
$zapros_match = "SELECT * FROM matchmakers WHERE login='".$_SESSION['login_match']."'";
$requirest_match = mysql_query($zapros_match);
while($row_match = mysql_fetch_array($requirest_match)) { $status_match = $row_match['status']; }
if($status_match == "0") { echo("<script>alert('Доступ запрещен');</script><script>javascript:window.location='index.php?logout'</script>");}
if($status_match == "2") { echo("<script>alert('Аккаунт заблокирован');</script><script>javascript:window.location='index.php?logout'</script>");}
//////////////////////////////////////////////////////////////////////////////////////
$zapros = "SELECT * FROM girls_invite";

?>
<html>
<head>
	<meta charset="utf-8">
	<title></title>
	<link rel="stylesheet" href="./css/bootstrap.min.css" />
	<link rel="stylesheet" href="./css/font-awesome.min.css" />
	<script src="./js/jquery-1.11.3.min.js"></script>
	<script src="./js/bootstrap.min.js"></script>  
</head>



<?
$page_name = "girls";
include "header.php";
?>


<body>
<div style="padding:20px;">

	<table class="table table-striped table-bordered">
		<thead>
			<tr>
				<th>Номер заявки:</th>
				<th>Дата заявки:</th>
				<th>Имя:</th>
				<th>Email:</th>
				<th>Телефон:</th>
				<th>Возраст:</th>	
				<th>Симейное положение:</th>
				<th>О себе:</th>
				
				<th></th>
			</tr>
		</thead>
			
		<tbody>
			<?
			$result = mysql_query($zapros);
			while ($row = mysql_fetch_assoc($result)) 
				{ ////////////////////Начало цикла таблицы//////////////////////////////
				
					//////////////////////Загружаем данные пользователей/////////////////////////
					$id = $row['id'];					
					$name = $row['name'];
					$email = $row['email'];
					$phone = $row['phone'];
					$birthday = $row['birthday'];
					$date_add = $row['date_add'];
					$marital_status = $row['marital_status'];
					$message = $row['message'];
					////////////////////////////////////////////////////////////////////////////////////////
    
					////////////////////////////Вывод таблицы на экран///////////////////////////////    
					echo ("
					<tr>
						<td>$id</td>
						<td>$date_add</td>
						<td>$name</td>
						<td>$email</td>
						<td>$phone</td>
						<td>$birthday</td>
						<td>$marital_status</td>
						<td>$message</td>
						<td><a href='./function/girls_invite_del.php?id=$id'><span style='font-size:22px; margin-left:10px;' class='glyphicon glyphicon-remove'></span></a></td>
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