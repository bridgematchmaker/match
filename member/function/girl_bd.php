<?

//////////Функция вычесления возраста по дате рождения//////////
function calculate_age($birthday) {
	$birthday_timestamp = strtotime($birthday);
	$age = date('Y') - date('Y', $birthday_timestamp);
	if (date('md', $birthday_timestamp) > date('md')) {
	  $age--;
	}
	return $age;
  }
/////////////////////////////////////////////////////////////////

$zapros = "SELECT * FROM girls WHERE girl_id='".$girl_id."'";

//////////////////////////////Загрузка данных из базы////////////////////////
$requirest = mysql_query($zapros);
while($row = mysql_fetch_array($requirest)) 
	{
		$girl_first_name = $row['first_name'];
		$girl_last_name = $row['last_name'];
		$girl_country = $row['country'];
		$girl_city  = $row['city'];
		$girl_foto = $row['foto'];
		$girl_video = $row['video'];
		$girl_birthday = $row['birthday'];
		$girl_age = calculate_age($girl_birthday);
		$girl_gallery_status = $row['gallery_status'];
		$girl_login_match = $row['login_match'];
		$girl_dreams = $row['dreams'];
		$girl_meeting = $row['meeting'];
		
		$question1 = $row['question1'];
		$question2 = $row['question2'];
		$question3 = $row['question3'];
		$question4 = $row['question4'];
		$question5 = $row['question5'];
		$question6 = $row['question6'];
		$question7 = $row['question7'];
		$question8 = $row['question8'];
		$question9 = $row['question9'];
		$question10 = $row['question10'];
		$question11 = $row['question11'];
		$question12 = $row['question12'];
		$question13 = $row['question13'];
		$question14 = $row['question14'];
		$question15 = $row['question15'];
		$question16 = $row['question16'];
		$question17 = $row['question17'];
		$question18 = $row['question18'];
		$question19 = $row['question19'];
		$question20 = $row['question20'];
		$question21 = $row['question21'];
		$question22 = $row['question22'];
		$question23 = $row['question23'];
		$question24 = $row['question24'];
		$question25 = $row['question25'];
		$question26 = $row['question26'];
		$question27 = $row['question27'];
		$question28 = $row['question28'];
		$question29 = $row['question29'];
		$question30 = $row['question30'];
		$question31 = $row['question31'];
		$question32 = $row['question32'];
		$question33 = $row['question33'];
		$question34 = $row['question34'];
		$question35 = $row['question35'];
		$question36 = $row['question36'];
		$question37 = $row['question37'];
		$question38 = $row['question38'];
		$question39 = $row['question39'];
		$question40 = $row['question40'];
		$question41 = $row['question41'];
		$question42 = $row['question42'];
		$question43 = $row['question43'];
		$question44 = $row['question44'];
		$question45 = $row['question45'];
		$question46 = $row['question46'];
		$question47 = $row['question47'];
		$question48 = $row['question48'];
		$question49 = $row['question49'];
		
		$ask1 = $row['ask1'];
		$ask2 = $row['ask2'];
		$ask3 = $row['ask3'];
		$ask4 = $row['ask4'];
		$ask5 = $row['ask5'];
		$ask6 = $row['ask6'];
		$ask7 = $row['ask7'];
		$ask8 = $row['ask8'];
		$ask9 = $row['ask9'];
		$ask10 = $row['ask10'];
		$ask11 = $row['ask11'];
		$ask12 = $row['ask12'];
		$ask13 = $row['ask13'];
		$ask14 = $row['ask14'];
		$ask15 = $row['ask15'];
		$ask16 = $row['ask16'];
		$ask17 = $row['ask17'];
		$ask18 = $row['ask18'];
		$ask19 = $row['ask19'];
		$ask20 = $row['ask20'];
		$ask21 = $row['ask21'];
		$ask22 = $row['ask22'];
		$ask23 = $row['ask23'];
		$ask24 = $row['ask24'];
		$ask25 = $row['ask25'];
		$ask26 = $row['ask26'];
		$ask27 = $row['ask27'];
		$ask28 = $row['ask28'];
		$ask29 = $row['ask29'];
		$ask30 = $row['ask30'];
	}
?>