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
?>


<body>
    <div style="padding:20px;">
        <div class="row">
            <div class="col-lg-4 col-md-4 col-sm-8 col-xs-12">
                <form action="./function/send_hand_email.php" method="POST" role="form">
                    
                    <div class="form-group">
                        <label>E-Mail получателя</label>
                        <input name="email" type="email" class="form-control rounded">
                    </div>

                    <div class="form-group">
                        <label>Тема письма</label>
                        <input name="subject" type="text" class="form-control rounded">
                    </div>
                    
                    <div class="form-group">
                        <label>Текст письма</label>
                        <textarea name="message" id="notification" class="form-control rounded" style="height: 300px;" ></textarea>
                    </div>
                    
                    <div class="form-group">
                        <button type="submit" class="btn btn-success" >Отправить</button>
                    </div>
            </div>

        </div>
    </div>
</body>
</html>