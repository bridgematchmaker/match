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
$page_name = "tarif";
include "menu.php";
?>

<body>
<div style="padding:20px;">
	<div class="row">
		<div class="col-lg-4 col-md-4 col-sm-8 col-xs-12">
			<form enctype='multipart/form-data' action="./function/gift_add.php" method="POST" role="form">
				
				<div class="form-group">
					<label>Название подарка</label>
					<input name="gift_name" type="text" class="form-control rounded">
				</div>
				
				<div class="form-group">
					<label>Описание подарка</label>
					<textarea name="gift_description" id="notification" class="form-control rounded" style="height: 100px;" ></textarea>
				</div>
				
				<div class="form-group">
					<label>Фотография подарка</label>
					<input type='file' name='file'/>
				</div>
				
				<div class="form-group">
					<button type="submit" class="btn btn-success" >Добавить подарок</button>
				</div>
		</div>

	</div>
	<table class="table table-striped table-bordered">
		<thead>
			<tr>
				<th></th>
				<th></th>
				<th>Название подарка:</th>
				<th>Описание подарка:</th>
			</tr>
		</thead>
			
		<tbody>
			<?
			$zapros = "SELECT * FROM setting_gifts";
			$result = mysql_query($zapros);
			while ($row = mysql_fetch_assoc($result)) 
				{ ////////////////////Начало цикла таблицы//////////////////////////////
				
					//////////////////////Загружаем данные пользователей/////////////////////////
					$id = $row['gift_id'];					
					$gift_name = $row['gift_name'];
					$gift_description = $row['gift_description'];
					$gift_foto = $row['gift_foto'];
					////////////////////////////////////////////////////////////////////////////////////////
    
					////////////////////////////Вывод таблицы на экран///////////////////////////////    
					echo ("
					<tr>
						<td><a href='./function/gift_del.php?id=$id'><span style='font-size:22px; margin-left:10px;' class='glyphicon glyphicon-remove'></span></a></td>
						<td><img height='100' weight='100' src='../$gift_foto'></td>
						<td>$gift_name</td>
						<td>$gift_description</td>
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