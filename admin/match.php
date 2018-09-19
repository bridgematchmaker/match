<?
session_start();
isset($_SESSION['login_admin']) or die("<script>javascript:window.location='index.php'</script>");

include("../connect.php");
$zapros = "SELECT * FROM matchmakers";

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
			<?
			$result = mysql_query($zapros);
			while ($row = mysql_fetch_assoc($result)) 
				{ ////////////////////Начало цикла таблицы//////////////////////////////
				
					//////////////////////Загружаем данные пользователей/////////////////////////
					$match_id = $row['id'];					
					$name = $row['name'];
					$email = $row['email'];
					$login = $row['login'];
					$skype = $row['skype'];
					////////////////////////////////////////////////////////////////////////////////////////
    
					////////////////////////////Вывод таблицы на экран///////////////////////////////    
					echo ("
					<tr>
						<td><a href='./match_profile.php?match_id=$match_id'><span style='font-size:22px; margin-left:10px;' class='glyphicon glyphicon-user'></span></a></td>
						<td>$name</td>
						<td>$login</td>
						<td>$email</td>
						<td>$skype</td>
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