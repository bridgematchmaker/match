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
$page_name = "email";
include "menu.php";
?>

<body>
<div style="padding:20px;">
	<h3>Шаблоны автопимем:</h3>
	<table class="table table-striped table-bordered">
		<thead>
			<tr>
				<th></th>
				<th>Название шаблона:</th>
				<th>Описание:</th>
			</tr>
		</thead>
			
		<tbody>
			<?
			$zapros = "SELECT * FROM email_templates";
			$result = mysql_query($zapros);
			while ($row = mysql_fetch_assoc($result)) 
				{ ////////////////////Начало цикла таблицы//////////////////////////////
				
					//////////////////////Загружаем данные шаблона/////////////////////////
					$email_id = $row['id'];					
					$email_name = $row['name'];
					$email_description = $row['description'];
					////////////////////////////////////////////////////////////////////////////////////////
    
					////////////////////////////Вывод таблицы на экран///////////////////////////////    
					echo ("
					<tr>
						<td><a href='./email_edit.php?id=$email_id'><span style='font-size:22px; margin-left:10px;' class='glyphicon glyphicon-edit'></span></a></td>
						<td>$email_name</td>
						<td>$email_description</td>
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