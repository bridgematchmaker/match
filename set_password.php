<?php
include ("./connect.php");
if(empty($_GET['id']) or empty($_GET['key'])) 
	{ 
		echo("<script>javascript:window.location='./index.php'</script>");
		exit();
	} 
	
$id = $_GET['id'];
$key = $_GET['key'];

/////////////Фильтрация///////////////////
$id = htmlspecialchars($id);
$id = mysql_escape_string($id);
$id = preg_replace("/[^0-9]/", '', $id);

$key = htmlspecialchars($key);
$key = mysql_escape_string($key);


//////////Проверка ключа/////////////////////
$result_repeat = mysql_query("SELECT * FROM clients WHERE user_id='$id';");
$num = mysql_num_rows($result_repeat);
	if($num > 0) 
		{ 
			$zapros_id = "SELECT * FROM clients WHERE user_id='$id'";
			$requirest_id = mysql_query($zapros_id);
			while($row = mysql_fetch_array($requirest_id)) 
				{ 
					$valid_key = md5($row['password']);
					$status_system = $row['status_system'];
					$first_name = $row['first_name'];
					$last_name = $row['last_name'];
					$email_client = $row['email_client'];
				}
			if($key == $valid_key) 
				{
					$validation = "1";
				}
		} 
/////////////////////////////////////////////

////////////////////////Запись в базу и отправка письма///////////////////////////////////
if($validation <> "1")
	{
		echo("<script>javascript:window.location='./login.php'</script>");
		exit();
	}
?>
<!DOCTYPE html>
<html lang="en">

<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1"/>
	<meta name="description" content="Something There">
	<meta name="author" content="">
	<title>BridgeMatchmaker</title>

	<link href="https://fonts.googleapis.com/css?family=Open+Sans:400,600" rel="stylesheet">
	<!-- Main Style -->

	<!--Style Content Page-->

	<!-- Bootstrap -->
	<link href="assets/css/bootstrap.min.css" rel="stylesheet" type="text/css">
	<!-- Font Awesome -->
	<link href="assets/css/font-awesome.min.css" rel="stylesheet" type="text/css">
	<!-- Owl Carousel -->
	<link href="assets/css/owl.carousel.min.css" rel="stylesheet" type="text/css">

	<link href="assets/css/style-main.css" rel="stylesheet" type="text/css">
	<!-- Favicon -->
	<link rel="icon" href="" type="image/png"/>

</head>

<body class="page">
<?
require "./header.php";
?>

<section class="section-main-content text-spacing-25">
	<div class="container">
			<div class="row justify-content-center">
			<div class="col-lg-4 col-lg-offset-4 col-md-4 col-md-offset-4 col-xs-6">
				<br><br>
				<form action="./function/set_pass.php" method="POST">
					<div class="form-group">
						<input type="hidden" name="id" value="<? echo $id; ?>">
						<input type="hidden" name="key" value="<? echo $key; ?>">
						<input type="password" name="password" class="form-control" id="pass" placeholder="Your password" required="required">
					</div>
					<button type="submit" class="btn btn-success btn-block">Set password</button>
				</form>
			</div>	
		</div>
	</div>
</section>

<? require "footer.php";?>

				

<!-- Site Scripts (start)-->
<script src="assets/js/core.min.js"></script>
<script src="assets/js/custom.js"></script>

<!-- Site Scripts (end)-->

</body>

</html>
		