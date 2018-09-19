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
	<script src="./js/nicEdit.js" type="text/javascript"></script>
	<script type="text/javascript">
		bkLib.onDomLoaded(function() {
		new nicEditor({fullPanel : true}).panelInstance('notification');		
		});
	</script>
</head>

<?
$page_name = "notification";
include "menu.php";
?>

<body>
<div style="padding:20px;">
	<div class="row">
		<div class="col-lg-4 col-md-4 col-sm-8 col-xs-12">
			<form action="./function/notification_add.php" method="POST" role="form">
				
				<div class="form-group">
					<label>Заголовок</label>
					<input name="header" type="text" class="form-control rounded">
				</div>
				
				<div class="form-group">
					<label>Текст уведомления</label>
					<textarea name="message" id="notification" class="form-control rounded" style="height: 100px;" ></textarea>
				</div>
				
				<div class="form-group">
					<button type="submit" class="btn btn-success" >Добавить уведомление</button>
				</div>
		</div>

	</div>
	<table class="table table-striped table-bordered">
		<thead>
			<tr>
				<th></th>
				<th>ID:</th>
				<th>Дата добавления:</th>
				<th>Заголовок:</th>
				<th>Текст:</th>
			</tr>
		</thead>
			
		<tbody>
			<?
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
			?>
		</tbody>
	</table>
</div>
</body>
</html>