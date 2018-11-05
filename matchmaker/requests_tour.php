<?
session_start();
isset($_SESSION['login_match']) or die("<script>javascript:window.location='index.php'</script>");

include("../connect.php");
///////////////////////////////Проверка статуса мачмеккера////////////////////////////
$zapros_match = "SELECT * FROM matchmakers WHERE login='".$_SESSION['login_match']."'";
$requirest_match = mysql_query($zapros_match);
while($row_match = mysql_fetch_array($requirest_match)) { $status_match = $row_match['status']; }
if($status_match == "0") { echo("<script>alert('Доступ запрещен');</script><script>javascript:window.location='index.php?logout'</script>");}
if($status_match == "2") { echo("<script>alert('Аккаунт заблокирован');</script><script>javascript:window.location='index.php?logout'</script>");}
//////////////////////////////////////////////////////////////////////////////////////

$zapros_tarif = "SELECT * FROM request_tour_price";
$requirest_tarif = mysql_query($zapros_tarif);
while($row_tarif = mysql_fetch_array($requirest_tarif)) 
	{
            $question1_price = $row_tarif['question1_price'];
            $question2_price = $row_tarif['question2_price'];
            $question3_price = $row_tarif['question3_price'];
            $question4_price = $row_tarif['question4_price'];
            $question5_price = $row_tarif['question5_price'];
            $question6_price = $row_tarif['question6_price'];
            $question7_price = $row_tarif['question7_price'];
            $question8_price = $row_tarif['question8_price'];
            $question9_price = $row_tarif['question9_price'];
            $question10_price = $row_tarif['question10_price'];
            $question11_price = $row_tarif['question11_price'];
            $question12_price = $row_tarif['question12_price'];
            $question13_price = $row_tarif['question13_price'];
    }

$zapros = "SELECT * FROM request_tour ORDER BY id DESC";

?>
<html>
<head>
	<meta charset="utf-8">
	<title></title>
	<link rel="stylesheet" href="./css/bootstrap.min.css" />
	<link rel="stylesheet" href="./css/font-awesome.min.css" />
    <style>
        .hiddenRow {
            padding: 0 !important;
        }
    </style>
	<script src="./js/jquery-1.11.3.min.js"></script>
	<script src="./js/bootstrap.min.js"></script>  
</head>



<?
$page_name = "girls";
include "header.php";
?>


<body>
<div style="padding:20px;">

	<table class="table table-striped table-bordered">
		<thead>
			<tr>
				<th>Номер заявки:</th>
				<th>Дата заявки:</th>
				<th>Имя:</th>
                <th>Фамилия:</th>
				<th>Email:</th>
				<th></th>
			</tr>
		</thead>
			
		<tbody>
			<?
			$result = mysql_query($zapros);
			while ($row = mysql_fetch_assoc($result)) 
				{ ////////////////////Начало цикла таблицы//////////////////////////////
				
					//////////////////////Загружаем данные пользователей/////////////////////////
					$id = $row['id'];					
                    $first_name = $row['first_name'];
                    $last_name = $row['last_name'];
					$email = $row['email'];
                    $date_add = $row['date_add'];
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
					////////////////////////////////////////////////////////////////////////////////////////
    
					////////////////////////////Вывод таблицы на экран///////////////////////////////    
					echo ("
					<tr data-toggle='collapse' data-target='#id-$id' class='accordion-toggle'>
						<td>$id</td>
						<td>$date_add</td>
                        <td>$first_name</td>
                        <td>$last_name</td>
						<td>$email</td>
						<td><a href='./function/request_tour_del.php?id=$id'><span style='font-size:22px; margin-left:10px;' class='glyphicon glyphicon-remove'></span></a></td>
                    </tr>
                    <tr>
                        <td colspan='6' class='hiddenRow'>
                            <div class='accordian-body collapse' id='id-$id'>
                                <table class='table table-bordered'>
                                    <tr><td>Accompanying person ($question1_price Cr.):</td><td>$question1</td></tr>
                                    <tr><td>Insurance ($question2_price Cr.):</td><td>$question2</td></tr>
                                    <tr><td>Rent a car during your stay in the country ($question3_price Cr.):</td><td>$question3</td></tr>
                                    <tr><td>Transfer from the airport to the hotel ($question4_price Cr.):</td><td>$question4</td></tr>
                                    <tr><td>Accommodation at 3 star or 4 star Hotels ($question5_price Cr.):</td><td>$question5</td></tr>
                                    <tr><td>Booking railway tickets ($question6_price Cr.):</td><td>$question6</td></tr>
                                    <tr><td>Excursion and sightseeing ($question7_price Cr.):</td><td>$question7</td></tr>
                                    <tr><td>Entertainment ( cafe, nightclub, concerts, etc) ($question8_price Cr.):</td><td>$question8</td></tr>
                                    <tr><td>Translator ($question9_price Cr.):</td><td>$question9</td></tr>
                                    <tr><td>Matchmaker Advice ($question10_price Cr.):</td><td>$question10</td></tr>
                                    <tr><td>Help in choosing a gift for a lady ($question11_price Cr.):</td><td>$question11</td></tr>
                                    <tr><td>Unexpected Date ($question12_price Cr.):</td><td>$question12</td></tr>
                                    <tr><td>Entertainment during the date with a lady ($question13_price Cr.):</td><td>$question13</td></tr>
                                </table>
                            </div> 
                        </td>
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