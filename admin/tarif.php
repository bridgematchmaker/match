<?
session_start();
isset($_SESSION['login_admin']) or die("<script>javascript:window.location='index.php'</script>");

include("../connect.php");

//////////////////////////////Загрузка данных из базы////////////////////////
$zapros_tarif = "SELECT * FROM setting_tarif";
$requirest_tarif = mysql_query($zapros_tarif);
while($row_tarif = mysql_fetch_array($requirest_tarif)) 
	{
		if($row_tarif['tarif_name'] == "free")
		{
			$free_day = $row_tarif['tarif_day'];
			$free_price = $row_tarif['tarif_price'];
			$free_letters = $row_tarif['tarif_letters'];
			$free_skypes = $row_tarif['tarif_skypes'];
			$free_gifts = $row_tarif['tarif_gifts'];
			$free_advice_match = $row_tarif['tarif_advice_match'];
			$free_assessment_match = $row_tarif['tarif_assessment_match'];
			$free_description = $row_tarif['description'];
		}
		
		if($row_tarif['tarif_name'] == "silver")
		{
			$silver_day = $row_tarif['tarif_day'];
			$silver_price = $row_tarif['tarif_price'];
			$silver_letters = $row_tarif['tarif_letters'];
			$silver_skypes = $row_tarif['tarif_skypes'];
			$silver_gifts = $row_tarif['tarif_gifts'];
			$silver_advice_match = $row_tarif['tarif_advice_match'];
			$silver_assessment_match = $row_tarif['tarif_assessment_match'];
			$silver_description = $row_tarif['description'];
		}
		
		if($row_tarif['tarif_name'] == "gold")
		{
			$gold_day = $row_tarif['tarif_day'];
			$gold_price = $row_tarif['tarif_price'];
			$gold_letters = $row_tarif['tarif_letters'];
			$gold_skypes = $row_tarif['tarif_skypes'];
			$gold_gifts = $row_tarif['tarif_gifts'];
			$gold_advice_match = $row_tarif['tarif_advice_match'];
			$gold_assessment_match = $row_tarif['tarif_assessment_match'];
			$gold_description = $row_tarif['description'];
		}
		
		if($row_tarif['tarif_name'] == "premium")
		{
			$premium_day = $row_tarif['tarif_day'];
			$premium_price = $row_tarif['tarif_price'];
			$premium_letters = $row_tarif['tarif_letters'];
			$premium_skypes = $row_tarif['tarif_skypes'];
			$premium_gifts = $row_tarif['tarif_gifts'];
			$premium_advice_match = $row_tarif['tarif_advice_match'];
			$premium_assessment_match = $row_tarif['tarif_assessment_match'];
			$premium_description = $row_tarif['description'];
		}
	}

$zapros_service = "SELECT * FROM setting_service WHERE id='1'";
$requirest_service = mysql_query($zapros_service);
while($row_service = mysql_fetch_array($requirest_service)) 
	{
			$service_letters = $row_service['letters'];
			$service_skypes = $row_service['skypes'];
			$service_gifts = $row_service['gifts'];
			$service_advice_match = $row_service['advice_match'];
			$service_assessment_match = $row_service['assessment_match'];
		
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
		new nicEditor({fullPanel : true}).panelInstance('area_free');
		new nicEditor({fullPanel : true}).panelInstance('area_silver');		
		new nicEditor({fullPanel : true}).panelInstance('area_gold');	
		new nicEditor({fullPanel : true}).panelInstance('area_premium');			
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
					<li class="active"><a href="#description" aria-controls="home" role="tab" data-toggle="tab">Описание тарифов</a></li>
					<li><a href="#free" aria-controls="home" role="tab" data-toggle="tab">Free</a></li>
					<li><a href="#silver" aria-controls="profile" role="tab" data-toggle="tab">Silver</a></li>
					<li><a href="#gold" aria-controls="messages" role="tab" data-toggle="tab">Gold</a></li>
					<li><a href="#premium" aria-controls="settings" role="tab" data-toggle="tab">Premium</a></li>
					<li><a href="#service" aria-controls="settings" role="tab" data-toggle="tab">Покупка дополнительных сервисов</a></li>
			</ul>
			<!-- Содержимое вкладок -->
				<div class="tab-content">
					<div role="tabpanel" class="tab-pane active" id="description">
						<form action="./function/set_tarif_description.php" method="POST">
						<br><br>
							<div class="form-group">
								<label>Описание тарифного плана "Free"</label>
								<textarea name="free_description" rows="7" id="area_free" class="form-control"><? echo $free_description; ?></textarea>
							</div>
							
							<div class="form-group">
								<label>Описание тарифного плана "Silver"</label>
								<textarea name="silver_description" rows="7" id="area_silver" class="form-control"><? echo $silver_description; ?></textarea>
							</div>
							
							<div class="form-group">
								<label>Описание тарифного плана "Gold"</label>
								<textarea name="gold_description" rows="7" id="area_gold" class="form-control"><? echo $gold_description; ?></textarea>
							</div>
							
							<div class="form-group">
								<label>Описание тарифного плана "Premium"</label>
								<textarea name="premium_description" rows="7" id="area_premium" class="form-control"><? echo $premium_description; ?></textarea>
							</div>
							
							<br>
							<input class="btn btn-success" type="submit" value="Сохранить">
						</form>
					</div>
					
					<div role="tabpanel" class="tab-pane" id="free">
						<form action="./function/set_tarif.php" method="POST">
							<input type="hidden" name="tarif" value="free">
							<table class="table table-striped table-bordered">
							<tbody>
								<tr>
									<td>Количество дней:</td>
									<td><input type="text" name="days" value="<? echo $free_day; ?>"></td>
								</tr>
					
								<tr>
									<td>Стоимость</td>
									<td><input type="text" name="price" value="<? echo $free_price; ?>"></td>
									
								</tr>
					
								<tr>
									<td>Writing letters</td>
									<td><input type="text" name="letters" value="<? echo $free_letters; ?>"></td>
									
								</tr>
					
								<tr>
									<td>Skype conference</td>
									<td><input type="text" name="skypes" value="<? echo $free_skypes; ?>"></td>
								</tr>
								
								<tr>
									<td>Send gifts</td>
									<td><input type="text" name="gifts" value="<? echo $free_gifts; ?>"></td>
								</tr>
								
								<tr>
									<td>Detailed advice from matchmakers</td>
									<td><input type="text" name="advice_match" value="<? echo $free_advice_match; ?>"></td>
								</tr>
								
								<tr>
									<td>Express assessment of the matchmaker</td>
									<td><input type="text" name="assessment_match" value="<? echo $free_assessment_match; ?>"></td>
								</tr>
								
							</tbody>
							</table>
							<br>
							<input class="btn btn-success" type="submit" value="Сохранить">
						</form>
					</div>
					
					<div role="tabpanel" class="tab-pane" id="silver">
						<form action="./function/set_tarif.php" method="POST">
							<input type="hidden" name="tarif" value="silver">
							<table class="table table-striped table-bordered">
							<tbody>
								<tr>
									<td>Количество дней:</td>
									<td><input type="text" name="days" value="<? echo $silver_day; ?>"></td>
								</tr>
					
								<tr>
									<td>Стоимость</td>
									<td><input type="text" name="price" value="<? echo $silver_price; ?>"></td>
									
								</tr>
					
								<tr>
									<td>Writing letters</td>
									<td><input type="text" name="letters" value="<? echo $silver_letters; ?>"></td>
									
								</tr>
					
								<tr>
									<td>Skype conference</td>
									<td><input type="text" name="skypes" value="<? echo $silver_skypes; ?>"></td>
								</tr>
								
								<tr>
									<td>Send gifts</td>
									<td><input type="text" name="gifts" value="<? echo $silver_gifts; ?>"></td>
								</tr>
								
								<tr>
									<td>Detailed advice from matchmakers</td>
									<td><input type="text" name="advice_match" value="<? echo $silver_advice_match; ?>"></td>
								</tr>
								
								<tr>
									<td>Express assessment of the matchmaker</td>
									<td><input type="text" name="assessment_match" value="<? echo $silver_assessment_match; ?>"></td>
								</tr>
								
							</tbody>
							</table>
							
							<br>
							<input class="btn btn-success" type="submit" value="Сохранить">
						</form>
					
					</div>
					
					<div role="tabpanel" class="tab-pane" id="gold">
						<form action="./function/set_tarif.php" method="POST">
							<input type="hidden" name="tarif" value="gold">
							<table class="table table-striped table-bordered">
							<tbody>
								<tr>
									<td>Количество дней:</td>
									<td><input type="text" name="days" value="<? echo $gold_day; ?>"></td>
								</tr>
					
								<tr>
									<td>Стоимость</td>
									<td><input type="text" name="price" value="<? echo $gold_price; ?>"></td>
									
								</tr>
					
								<tr>
									<td>Writing letters</td>
									<td><input type="text" name="letters" value="<? echo $gold_letters; ?>"></td>
									
								</tr>
					
								<tr>
									<td>Skype conference</td>
									<td><input type="text" name="skypes" value="<? echo $gold_skypes; ?>"></td>
								</tr>
								
								<tr>
									<td>Send gifts</td>
									<td><input type="text" name="gifts" value="<? echo $gold_gifts; ?>"></td>
								</tr>
								
								<tr>
									<td>Detailed advice from matchmakers</td>
									<td><input type="text" name="advice_match" value="<? echo $gold_advice_match; ?>"></td>
								</tr>
								
								<tr>
									<td>Express assessment of the matchmaker</td>
									<td><input type="text" name="assessment_match" value="<? echo $gold_assessment_match; ?>"></td>
								</tr>
								
							</tbody>
							</table>
							
							<br>
							<input class="btn btn-success" type="submit" value="Сохранить">
						</form>
					
					</div>
					
					<div role="tabpanel" class="tab-pane" id="premium">
						<form action="./function/set_tarif.php" method="POST">
							<input type="hidden" name="tarif" value="premium">
							<table class="table table-striped table-bordered">
							<tbody>
								<tr>
									<td>Количество дней:</td>
									<td><input type="text" name="days" value="<? echo $premium_day; ?>"></td>
								</tr>
					
								<tr>
									<td>Стоимость</td>
									<td><input type="text" name="price" value="<? echo $premium_price; ?>"></td>
									
								</tr>
					
								<tr>
									<td>Writing letters</td>
									<td><input type="text" name="letters" value="<? echo $premium_letters; ?>"></td>
									
								</tr>
					
								<tr>
									<td>Skype conference</td>
									<td><input type="text" name="skypes" value="<? echo $premium_skypes; ?>"></td>
								</tr>
								
								<tr>
									<td>Send gifts</td>
									<td><input type="text" name="gifts" value="<? echo $premium_gifts; ?>"></td>
								</tr>
								
								<tr>
									<td>Detailed advice from matchmakers</td>
									<td><input type="text" name="advice_match" value="<? echo $premium_advice_match; ?>"></td>
								</tr>
								
								<tr>
									<td>Express assessment of the matchmaker</td>
									<td><input type="text" name="assessment_match" value="<? echo $premium_assessment_match; ?>"></td>
								</tr>
								
							</tbody>
							</table>
							
							<br>
							<input class="btn btn-success" type="submit" value="Сохранить">
						</form>
					
					</div>
					
					<div role="tabpanel" class="tab-pane" id="service">
						<form action="./function/set_service.php" method="POST">
							<table class="table table-striped table-bordered">
							<thead>
								<tr>
									<th>Название услуги</th>
									<th>Цена в USD за 1 единицу</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td>Writing letters</td>
									<td><input type="text" name="letters" value="<? echo $service_letters; ?>"></td>
									
								</tr>
					
								<tr>
									<td>Skype conference</td>
									<td><input type="text" name="skypes" value="<? echo $service_skypes; ?>"></td>
								</tr>
								
								<tr>
									<td>Send gifts</td>
									<td><input type="text" name="gifts" value="<? echo $service_gifts; ?>"></td>
								</tr>
								
								<tr>
									<td>Detailed advice from matchmakers</td>
									<td><input type="text" name="advice_match" value="<? echo $service_advice_match; ?>"></td>
								</tr>
								
								<tr>
									<td>Express assessment of the matchmaker</td>
									<td><input type="text" name="assessment_match" value="<? echo $service_assessment_match; ?>"></td>
								</tr>
							</tbody>
							</table>
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