<?

$zapros_tarif = "SELECT * FROM setting_tarif";
$requirest_tarif = mysql_query($zapros_tarif);
while($row_tarif = mysql_fetch_array($requirest_tarif)) 
	{
		if($row_tarif['tarif_name'] == "free")
		{
			$free_day = $row_tarif['tarif_day'];
			$free_price = $row_tarif['tarif_price'];
			$free_description = $row_tarif['description'];
			$free_letters = $row_tarif['tarif_letters'];
			$free_skypes = $row_tarif['tarif_skypes'];
			$free_gifts = $row_tarif['tarif_gifts'];
			$free_advice_match = $row_tarif['tarif_advice_match'];
			$free_assessment_match = $row_tarif['tarif_assessment_match'];
		}
		
		if($row_tarif['tarif_name'] == "silver")
		{
			$silver_day = $row_tarif['tarif_day'];
			$silver_price = $row_tarif['tarif_price'];
			$silver_description = $row_tarif['description'];
			$silver_letters = $row_tarif['tarif_letters'];
			$silver_skypes = $row_tarif['tarif_skypes'];
			$silver_gifts = $row_tarif['tarif_gifts'];
			$silver_advice_match = $row_tarif['tarif_advice_match'];
			$silver_assessment_match = $row_tarif['tarif_assessment_match'];
		}
		
		if($row_tarif['tarif_name'] == "gold")
		{
			$gold_day = $row_tarif['tarif_day'];
			$gold_price = $row_tarif['tarif_price'];
			$gold_description = $row_tarif['description'];
			$gold_letters = $row_tarif['tarif_letters'];
			$gold_skypes = $row_tarif['tarif_skypes'];
			$gold_gifts = $row_tarif['tarif_gifts'];
			$gold_advice_match = $row_tarif['tarif_advice_match'];
			$gold_assessment_match = $row_tarif['tarif_assessment_match'];
		}
		
		if($row_tarif['tarif_name'] == "premium")
		{
			$premium_day = $row_tarif['tarif_day'];
			$premium_price = $row_tarif['tarif_price'];
			$premium_description = $row_tarif['description'];
			$premium_letters = $row_tarif['tarif_letters'];
			$premium_skypes = $row_tarif['tarif_skypes'];
			$premium_gifts = $row_tarif['tarif_gifts'];
			$premium_advice_match = $row_tarif['tarif_advice_match'];
			$premium_assessment_match = $row_tarif['tarif_assessment_match'];
		}
	}


$zapros1 = "SELECT * FROM clients WHERE email_client='".$_SESSION['email_client']."'";
//////////////////////////////Загрузка данных из базы////////////////////////
$requirest1 = mysql_query($zapros1);
while($row1 = mysql_fetch_array($requirest1)) 
	{
		$user_id = $row1['user_id'];
		$first_name = $row1['first_name'];
		$last_name = $row1['last_name'];
		$email_client = $row1['email_client'];
		$country = $row1['country'];
		$telefon = $row1['telefon'];
		$foto = $row1['foto'];
		$matchmaker_login = $row1['matchmaker_login'];
		$status_system = $row1['status_system'];
		$status_tarif = $row1['status_tarif'];
		$status_email = $row1['status_email'];
		$status_anketa2 = $row1['status_anketa2'];
		$status_verification = $row1['status_verification'];
		$birthday = $row1['birthday'];
		$date_reg = $row1['date_reg'];
		$utm_source = $row1['utm_source'];		
		$service = $row1['service'];	
		$date_tarif_set = $row1['date_tarif_set'];	
		$password = $row1['password'];	
		$password_md5 = md5($password);
	}
switch ($status_system) 
	{
		case 0:
			$status_system_print = "New user";
		break;
			
		case 1:
			$status_system_print = "Active";
		break;
		
		case 2:
			$status_system_print = "Verified";
		break;
		
		case 3:
			$status_system_print = "Verified complete";
		break;	
		
		case 4:
			$status_system_print = "Removed";
		break;	
	}
	
	
switch ($status_email) 
	{
		case 0:
			$status_email_print = "Unsubscribed";
		break;
			
		case 1:
			$status_email_print = "Subscribed";
		break;
	}

switch ($service) 
	{
		case 1:
			$service_print = "BridgeMatchMaker.com";
		break;
			
		case 2:
			$service_print = "Bridge-of-Love.com";
		break;
	}
	
if($matchmaker_login == "None")
	{
		$matchmaker_login_print = "Indefined";
	}
else
	{
		$matchmaker_login_print = $matchmaker_login;
	}

$zapros2 = "SELECT * FROM questions WHERE client_id='".$user_id."'";
$requirest2 = mysql_query($zapros2);
while($row2 = mysql_fetch_array($requirest2)) 
	{
		$question1 = $row2['question1'];
		$question2 = $row2['question2'];
		$question3 = $row2['question3'];
		$question4 = $row2['question4'];
		$question5 = $row2['question5'];
		$question6 = $row2['question6'];
		$question7 = $row2['question7'];
		$question8 = $row2['question8'];
		$question9 = $row2['question9'];
		$question10 = $row2['question10'];
		$question11 = $row2['question11'];
		$question12 = $row2['question12'];
		$question13 = $row2['question13'];
		$question14 = $row2['question14'];
		$question15 = $row2['question15'];
		$question16 = $row2['question16'];
		$question17 = $row2['question17'];
		$question18 = $row2['question18'];
		$question19 = $row2['question19'];
		$question20 = $row2['question20'];
		$question21 = $row2['question21'];
		$question22 = $row2['question22'];
		$question23 = $row2['question23'];
		$question24 = $row2['question24'];
		$question25 = $row2['question25'];
		$question26 = $row2['question26'];
		$question27 = $row2['question27'];
		$question28 = $row2['question28'];
		$question29 = $row2['question29'];
		$question30 = $row2['question30'];
		$question31 = $row2['question31'];
		$question32 = $row2['question32'];
		$question33 = $row2['question33'];
		$question34 = $row2['question34'];
		$question35 = $row2['question35'];
		$question36 = $row2['question36'];
		$question37 = $row2['question37'];
		$question38 = $row2['question38'];
		$question39 = $row2['question39'];
		$question40 = $row2['question40'];
		$question41 = $row2['question41'];
		$question42 = $row2['question42'];
		$question43 = $row2['question43'];
		$question44 = $row2['question44'];
		$question45 = $row2['question45'];
		$question46 = $row2['question46'];
		$question47 = $row2['question47'];
		$question48 = $row2['question48'];
		$question49 = $row2['question49'];
		$question50 = $row2['question50'];
	}
		$question19arr = explode("; ",$question19);
		$question24arr = explode("; ",$question24);
		$question25arr = explode("; ",$question25);
		$question26arr = explode("; ",$question26);
		$question49arr = explode("; ",$question49);
/////////////////////////////////////////////////////////////////////

//////////Количетсво дней c начала с установки тарифа/////////////////
$now_data = time(); // текущее время (метка времени)
$your_date = strtotime($date_tarif_set); // какая-то дата в строке
$datediff = $now_data - $your_date; // получим разность дат (в секундах)
$data_print = floor($datediff / (60 * 60 * 24)); // Количество дней после регистрации
/////////////////////////////////////////////////////////////////////


switch ($status_tarif) 
	{
		case 0:
			$status_tarif_print = "FREE";
			if( $data_print < $free_day)
				{
					$data_print = $free_day - $data_print;
				}
			else
				{
					$data_print = 0;
				}
		break;
			
		case 1:
			$status_tarif_print = "SILVER";
			if( $data_print < $silver_day)
				{
					$data_print = $silver_day - $data_print;
				}
			else
				{
					$data_print = 0;
				}
		break;
		
		case 2:
			$status_tarif_print = "GOLD";
			if( $data_print < $gold_day)
				{
					$data_print = $gold_day - $data_print;
				}
			else
				{
					$data_print = 0;
				}
		break;
		
		case 3:
			$status_tarif_print = "PREMIUM";
			if( $data_print < $premium_day)
				{
					$data_print = $premium_day - $data_print;
				}
			else
				{
					$data_print = 0;
				}
		break;	
	}
	
	
$zapros3 = "SELECT * FROM clients_services WHERE client_id='".$user_id."'";	
$requirest3 = mysql_query($zapros3);
while($row3 = mysql_fetch_array($requirest3)) 
	{
		$letters = $row3['letters'];
		$skypes = $row3['skypes'];
		$gifts = $row3['gifts'];
		$advice_match = $row3['advice_match'];
		$assessment_match = $row3['assessment_match'];
	}

	
if($matchmaker_login !== "None") 
	{
		$zapros4 = "SELECT * FROM matchmakers WHERE login='".$matchmaker_login."'";	
		$requirest4 = mysql_query($zapros4);
		while($row4 = mysql_fetch_array($requirest4)) 
			{
				$name_match = $row4['name'];
				$description_match = $row4['description'];
				$foto_match = $row4['foto'];
				$email_match = $row4['email'];
				$skype_match = $row4['skype'];
				$age_match = $row4['age'];
				$country_match = $row4['country'];
				$phone_match = $row4['phone']; 
				$time_match = $row4['time']; 
				$meetings_match = $row4['meetings']; 
				$rating_match = $row4['rating']; 				
			}
		$match_fio = explode(' ', $name_match);
	}

//////////////////////////////////Загружаем количество девушек у клиента/////////////////////////////

///////////Количество девушек в рекомендации/////////////////
$result_count_recomendation = mysql_query("SELECT * FROM clients_girl WHERE user_id='$user_id' AND girl_status='0';");
$count_recomendation = mysql_num_rows($result_count_recomendation);
/////////////////////////////////////////////////////////////

///////////Количество девушек в рекомендации/////////////////
$result_count_blacklist = mysql_query("SELECT * FROM clients_girl WHERE user_id='$user_id' AND girl_status='2';");
$count_blacklist = mysql_num_rows($result_count_blacklist);
/////////////////////////////////////////////////////////////

////Загружаем массив девушек добавленных в блек лист и рекомендации//////////
$data_girl_id_userbd = Array(); // Масив с id девушек
$count_userbd = 0;
$sql_client_girl_userbd = "SELECT * FROM clients_girl WHERE user_id='".$user_id."' AND (girl_status='0' OR girl_status='2')";
$result_client_girl_userbd  = mysql_query($sql_client_girl_userbd);
while($row_client_girl_userbd = mysql_fetch_array($result_client_girl_userbd)) 
	{ 
		$data_girl_id_userbd[$count_userbd] = $row_client_girl_userbd['girl_id'];
		$count_userbd++;
	}
//////////////////////////////////////////////////////////////////////////////

///////////Количество девушек в галерее/////////////////
$result_count_gellery = mysql_query("SELECT * FROM girls WHERE gallery_status='1' AND activation_status='1';");
while($row_count_gellery = mysql_fetch_array($result_count_gellery)) 
	{ 
		if (!in_array($row_count_gellery['girl_id'], $data_girl_id_userbd)) 
		{
			$count_gellery++;
		}
	}
/////////////////////////////////////////////////////////


/////////////////////////////////////////////////////////////////////////////////////////////////////
?>