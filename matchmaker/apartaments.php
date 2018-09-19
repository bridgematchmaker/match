<?
session_start();
isset($_SESSION['login_match']) or die("<script>javascript:window.location='index.php'</script>");
include("../connect.php");

///////////////////////////////Проверка статуса мачмеккера////////////////////////////
$zapros_match = "SELECT * FROM matchmakers WHERE login='".$_SESSION['login_match']."'";
$requirest_match = mysql_query($zapros_match);
while($row_match = mysql_fetch_array($requirest_match)) { $status_match = $row_match['status']; }
if($status_match == "2") { echo("<script>alert('Аккаунт заблокирован');</script><script>javascript:window.location='index.php?logout'</script>");}
//////////////////////////////////////////////////////////////////////////////////////

?>

<html>
<head>
	<meta charset="utf-8">
	<title>Апартаменты</title>
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

	<table class="table table-striped table-bordered">
		<thead>
			<tr>
				<th></th>
				<th>Имя:</th>
				<th>Логин:</th>
				<th>Email:</th>
				<th>Skype:</th>	
			</tr>
		</thead>
			
		<tbody>
		<? /*
			$zapros = "SELECT * FROM notifications";
			$result = mysql_query($zapros);
			while ($row = mysql_fetch_assoc($result)) 
				{ ////////////////////Начало цикла таблицы//////////////////////////////
				
					//////////////////////Загружаем данные пользователей/////////////////////////
					$id = $row['id'];					
					$date_add = $row['date_add'];
					$header = $row['header'];
					$message = $row['message'];
					////////////////////////////////////////////////////////////////////////////////////////
    
					////////////////////////////Вывод таблицы на экран///////////////////////////////    
					echo ("
					<tr>
						<td><a href='./function/notification_del.php?id=$id'><span style='font-size:22px; margin-left:10px;' class='glyphicon glyphicon-remove'></span></a></td>
						<td>$id</td>
						<td>$date_add</td>
						<td>$header</td>
						<td>$message</td>
					</tr>
						");
					////////////////////////////////////////////////////////////////////////////////////////

				}
		*/?>
		</tbody>
	</table>
</div>
</body>
</html>
