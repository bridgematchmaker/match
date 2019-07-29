<?
session_start();
isset($_SESSION['login_admin']) or die("<script>javascript:window.location='index.php'</script>");

include("../connect.php");

//////////////////////////////Загрузка данных из базы////////////////////////
$zapros_tour = "SELECT * FROM setting_tours";
$requirest_tour = mysql_query($zapros_tour);
while($row_tour = mysql_fetch_array($requirest_tour)) 
	{
		if($row_tour['name'] == "Basic")
		{
			$basic_name = $row_tour['name'];
			$basic_price = $row_tour['price'];
			$basic_description = $row_tour['description'];
		}
		
		if($row_tour['name'] == "Comfort")
		{
			$comfort_name = $row_tour['name'];
			$comfort_price = $row_tour['price'];
			$comfort_description = $row_tour['description'];
        }
        
        if($row_tour['name'] == "Luxe")
		{
			$luxe_name = $row_tour['name'];
			$luxe_price = $row_tour['price'];
			$luxe_description = $row_tour['description'];
		}
	}
//////////////////////////////////////////////////////////////////////////////
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
		new nicEditor({fullPanel : true}).panelInstance('area_basic');
		new nicEditor({fullPanel : true}).panelInstance('area_comfort');		
		new nicEditor({fullPanel : true}).panelInstance('area_luxe');				
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
		<div class="col-lg-8 col-md-8 col-sm-12 col-xs-12 col-lg-offset-1 col-md-offset-1">
			<div>
			<!-- Навигация -->
				<ul class="nav nav-tabs" role="tablist">
					<li class="active"><a href="#description" aria-controls="home" role="tab" data-toggle="tab">Описание туров</a></li>
			    </ul>
			<!-- Содержимое вкладок -->
				<div class="tab-content">
					<div role="tabpanel" class="tab-pane active" id="description">
						<form action="./function/set_tour.php" method="POST">
						<br><br>
							<div class="form-group">
								<label>Описание тура "Basic"</label><br>
                                <b>Цена:</b> <input type="text" name="basic_price" value="<? echo $basic_price; ?>"><br><br>
								<textarea name="basic_description" rows="7" id="area_basic" class="form-control"><? echo $basic_description; ?></textarea>
							</div>
							
                            <div class="form-group">
								<label>Описание тура "Comfort"</label><br>
                                <b>Цена:</b> <input type="text" name="comfort_price" value="<? echo $comfort_price; ?>"><br><br>
								<textarea name="comfort_description" rows="7" id="area_comfort" class="form-control"><? echo $comfort_description; ?></textarea>
							</div>
                            <div class="form-group">
								<label>Описание тура "Luxe"</label><br>
                                <b>Цена:</b> <input type="text" name="luxe_price" value="<? echo $luxe_price; ?>"><br><br>
								<textarea name="luxe_description" rows="7" id="area_luxe" class="form-control"><? echo $luxe_description; ?></textarea>
							</div>
							
							
							<br>
							<input class="btn btn-success" type="submit" value="Сохранить">
						</form>
					</div>
				</div>
			</div>
			
			
		</div>
	</div>
</div>


</body>
</html>