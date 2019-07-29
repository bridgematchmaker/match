<?
session_start();
isset($_SESSION['login_match']) or die("<script>javascript:window.location='index.php'</script>");

include("../connect.php");
///////////////////////////////Проверка статуса мачмеккера////////////////////////////
$zapros_match = "SELECT * FROM matchmakers WHERE login='".$_SESSION['login_match']."'";
$requirest_match = mysql_query($zapros_match);
while($row_match = mysql_fetch_array($requirest_match)) { $status_match = $row_match['status']; }
if($status_match == "2") { echo("<script>alert('Аккаунт заблокирован');</script><script>javascript:window.location='index.php?logout'</script>");}
//////////////////////////////////////////////////////////////////////////////////////

$zapros = "SELECT * FROM orders_tour ORDER BY id DESC;";

?>

<html>
<head>
	<meta charset="utf-8">
	<link rel="stylesheet" href="./css/bootstrap.min.css" />
	<link rel="stylesheet" href="./css/font-awesome.min.css" />
	<link rel="stylesheet" href="./css/bootstrap-select.css">
	<link rel="stylesheet" type="text/css" href="./css/jquery.dataTables.min.css">
	<script src="./js/jquery-1.11.3.min.js"></script>
	<script src="./js/bootstrap.min.js"></script>  
	<script src="./js/bootstrap-select.js"></script>
	<script type="text/javascript" language="javascript" src="./js/jquery.dataTables.min.js"></script>
	<script type="text/javascript" class="init">
	
	$(document).ready(function() {
		$('#tours').DataTable( {
			"pagingType": "full_numbers"
		} );
	} );

	</script>
</head>



<?
$page_name = "tours";
include "header.php";
?>



<body>
<div style="padding:20px;">
	<table id="tours" class="table table-striped table-bordered">
		<thead>
			<tr>
                <th>ID:</th>
				<th>Имя:</th>
                <th>Телефон:</th>
				<th>Город:</th>
				<th>Дата тура:</th>
				<th>Цена тура:</th>
                <th>Тариф тура:</th>
                <th>Дата добавления:</th>
                <th>Дата оплаты:</th>
				<th>Статус:</th>
				
			</tr>
		</thead>
		<tbody>
			<?  
				
				$requirest = mysql_query($zapros);
				while($row = mysql_fetch_array($requirest)) 
					{
						////////////////////Начало цикла таблицы//////////////////////////////

						//////////////////////Загружаем данные пользователей/////////////////////////   
                        $tour_id = $row['id'];
                        $tour_first_name = $row['first_name'];
                        $tour_last_name = $row['last_name'];
                        $tour_user = $tour_first_name . ' ' .  $tour_last_name;
                        $phone = $row['phone'];
                        $messenger = $row['messenger'];
                        $tour_phone = "$phone ($messenger)";
                        $tour_city = $row['city'];
                        $tour_date = $row['tour_date'];
                        $tour_price = $row['tour_price'];
                        $tour_name = $row['tour_name'];
                        $tour_date_add = $row['date_add'];
                        $tour_date_pay = $row['date_pay'];
                        $tour_status = $row['status'];
                        if ($tour_status == '0') {
                            $tour_status_print = 'Не оплачен';
                        } else {
                            $tour_status_print = 'Оплачен';
                        }
						
						////////////////////////////Вывод таблицы на экран///////////////////////////////    
						echo ("
								<tr>
									<td>
                                        $tour_id
									</td>
									<td>
                                        $tour_user
									</td>
									<td>
                                        $tour_phone
									</td>
									<td>
                                        $tour_city
									</td>
									<td>
                                        $tour_date
									</td>
									<td>
                                        $tour_price
									</td>
									<td>
                                        $tour_name
									</td>
									<td>
                                        $tour_date_add 
                                    </td>
                                    <td>
                                        $tour_date_pay 
                                    </td>
                                    <td>
                                        $tour_status_print
									</td>
									
								</tr>
							");
					}
						////////////////////////////////////////////////////////////////////////////////////////
				?>
		</tbody>
	</table>
	</div>


</body>
</html>
