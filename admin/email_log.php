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
	<link rel="stylesheet" href="./css/style_table.css" />
	<script src="./js/jquery-1.11.3.min.js"></script>
	<script src="./js/bootstrap.min.js"></script>  
	<script src="./js/jquery-latest.js"></script>  
	<script src="./js/jquery.tablesorter.js"></script>  
	<script src="./js/jquery.tablesorter.pager.js"></script>
	<script type="text/javascript"> 
		$(function() {
			$("table")
				.tablesorter({widthFixed: true, widgets: ['zebra']})
				.tablesorterPager({container: $("#pager")});
		});
	</script> 	
</head>

<?
$page_name = "log";
include "menu.php";
?>


<body>
<div style="padding:20px;">
	<h3>Лог данных за текущий месяц:</h3>
	<hr>
	<table id="myTable" class="tablesorter">
		<thead>
			<tr>
				<th>Дата отправки:</th>
				<th>Статус:</th>
				<th>Email:</th>
				<th>Тема:</th>
			</tr>
		</thead>
			
		<tbody>
			<?
			$zapros = "SELECT * FROM email_log WHERE MONTH(date_add) = MONTH(NOW()) AND YEAR(date_add) = YEAR(NOW()) ORDER BY id DESC";
			$result = mysql_query($zapros);
			while ($row = mysql_fetch_assoc($result)) 
				{ ////////////////////Начало цикла таблицы//////////////////////////////
				
					//////////////////////Загружаем данные пользователей/////////////////////////					
					$date_add = $row['date_add'];
					$subject = $row['subject'];
					$email = $row['email'];
					$status = $row['status'];
					////////////////////////////////////////////////////////////////////////////////////////
    
					////////////////////////////Вывод таблицы на экран///////////////////////////////    
					echo ("
					<tr>
						<td>$date_add</td>
						<td>$status</td>
						<td>$email</td>
						<td>$subject</td>
					</tr>
						");
					////////////////////////////////////////////////////////////////////////////////////////

				}
			?>
		</tbody>
	</table>
	<div id="pager" class="pager"> 
	<form> 
		<img src="./img/first.png" class="first"/> 
		<img src="./img/prev.png" class="prev"/> 
		<input type="text" class="pagedisplay"/> 
		<img src="./img/next.png" class="next"/> 
		<img src="./img/last.png" class="last"/> 
		<select class="pagesize"> 
			<option selected="selected"  value="10">50</option> 
			<option value="100">100</option> 
			<option value="200">200</option> 
		</select> 
	</form> 
	</div> 

</div>

</body>
</html>