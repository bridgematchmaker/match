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
$page_name = "email";
include "menu.php";

$email_id = $_GET['id'];

/////////////Фильтрация///////////////////
$email_id = htmlspecialchars($email_id);
$email_id = mysql_escape_string($email_id);

$zapros = "SELECT * FROM email_templates WHERE id='$email_id'";
			$result = mysql_query($zapros);
			while ($row = mysql_fetch_assoc($result)) 
				{ ////////////////////Начало цикла таблицы//////////////////////////////
				
					//////////////////////Загружаем данные шаблона/////////////////////////					
					$email_name = $row['name'];
					$email_description = $row['description'];
					$email_subject = $row['subject'];
					$email_content = $row['content'];
					////////////////////////////////////////////////////////////////////////////////////////

				}
?>

<body>
<div style="padding:20px;">
	<h3>Шаблон автописьма: <? echo $email_name; ?></h3>
	<div class="row">
		<div class="col-lg-4 col-md-4 col-sm-8 col-xs-12">
			<form enctype='multipart/form-data' action="./function/email_edit_end.php" method="POST" role="form">
				<input name="id" type="hidden" value="<? echo $email_id; ?>">
				
				<div class="form-group">
					<label>Тема письма:</label>
					<input name="subject" type="text" value="<? echo $email_subject; ?>" class="form-control rounded">
				</div>
				
				<div class="form-group">
					<label>Содержание письма:</label>
					<textarea name="content" id="notification" class="form-control rounded" style="height: 300px;" ><? echo $email_content; ?></textarea>
				</div>
				
				<div class="form-group">
					<button type="submit" class="btn btn-success" >Редактировать</button>
				</div>
		</div>
</div>
</body>
</html>