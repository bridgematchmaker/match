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
</head>

<?
$page_name = "emails";
include "menu.php";
?>


<body>
<div style="padding:20px;">
	<div class="row">
		<div class="col-lg-4 col-md-4 col-sm-8 col-xs-12">
            <textarea rows="30" style="width: 100%"><?
			$zapros = "SELECT first_name, last_name, email_client FROM clients WHERE status_system<>'4'";
			$result = mysql_query($zapros);
			while ($row = mysql_fetch_assoc($result)) 
				{
				
					//////////////////////Загружаем данные пользователей/////////////////////////
                    $first_name = $row['first_name'];
                    $last_name = $row['last_name'];
					$email = $row['email_client'];
                    ////////////////////////////////////////////////////////////////////////////////////////
                    
                    $print = $first_name . " " . $last_name . ";" . $email;
                    $print = ltrim($print);
                    echo $print . PHP_EOL;

				}
			?>
            </textarea>
        </div>
    </div>
</div>

</body>
</html>