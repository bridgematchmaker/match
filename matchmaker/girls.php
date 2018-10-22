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


$view = $_GET['view'];

if($view == "")
	{
		if($status_match == "0") { $view = "my"; }
		if($status_match == "1") { $view = "all"; }
	}

if($view == "all")
	{
		if($status_match == "0") { $view = "my"; }
	}

switch ($view) 
	{
		case all:
			$zapros = "SELECT * FROM girls ORDER BY girl_id DESC;";
		break;
		
		case gallery:
			$zapros = "SELECT * FROM girls WHERE gallery_status='1' ORDER BY girl_id DESC;";
		break;
		
		case my:
			$zapros = "SELECT * FROM girls WHERE login_match='".$_SESSION['login_match']."' ORDER BY girl_id DESC;";
		break;
	}
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
		$('#girls').DataTable( {
			"pagingType": "full_numbers"
		} );
	} );

	</script>
</head>



<?
$page_name = "girls";
include "header.php";
?>



<body>
<div style="padding:20px;">
	<? if($status_match <> "0") 
		{
			echo('
					<form class="form-inline" action="./function/girl_search.php" method="POST">
						<label>Поиск девушки:</label><br>
						<select class="selectpicker" size="1" name="search_type" style="width:200px;">
							<option value="id">Поиск по ID</option>
							<option value="email">Поиск по E-Mail</option>
							<option value="phone">Поиск по телефону</option>
						</select>
						<input class="form-control" size="20" type="text" name="search"> 
						<button type="submit" class="btn btn-success" data-original-title="" title="">Поиск девушки</button>
					</form>
					<hr>
				');
		} 
	?>
	<table id="girls" class="table table-striped table-bordered">
		<thead>
			<tr>
				<th></th>
				<th>ID:</th>
				<th>Имя:</th>
				<th>Фамилия:</th>
				<th>Город:</th>
				<th>Дата рождения:</th>
				<th>Возраст:</th>
				<th>Email:</th>
				<th>Добавил:</th>
				
			</tr>
		</thead>
		<tbody>
			<?  
				
				$requirest = mysql_query($zapros);
				while($row = mysql_fetch_array($requirest)) 
					{
						////////////////////Начало цикла таблицы//////////////////////////////

						//////////////////////Загружаем данные пользователей/////////////////////////   
						$girl_id = $row['girl_id'];
						$first_name = $row['first_name'];
						$last_name = $row['last_name'];
						$city = $row['city'];
						$birthday = $row['birthday'];
						$age = calculate_age($birthday);
						$email = $row['question45'];
						$login_match = $row['login_match'];
						$activation_status = $row['activation_status'];
						
						if($activation_status == "0") { $activation_print = "<span style='font-size:22px; margin-left:10px; color:red;' class='glyphicon glyphicon-remove'></span>"; }
						if($activation_status == "1") { $activation_print = "<span style='font-size:22px; margin-left:10px; color:green;' class='glyphicon glyphicon-ok'></span>"; }
						//////////////////////////////////////////////////////////////////////////////
    
						////////////////////////////Вывод таблицы на экран///////////////////////////////    
						echo ("
								<tr>
									<td>
									  <a href='./girl_profile.php?girl_id=$girl_id'><span style='font-size:22px; margin-left:10px;' class='glyphicon glyphicon-user'></span></a> $activation_print
									</td>
									<td>
										$girl_id
									</td>
									<td>
										$first_name
									</td>
									<td>
										$last_name
									</td>
									<td>
										$city
									</td>
									<td>
										$birthday
									</td>
									<td>
										$age
									</td>
									<td>
										$email
									</td>
									<td>
										$login_match
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
