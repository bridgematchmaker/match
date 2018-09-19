<?
session_start();
isset($_SESSION['email_client']) or die("<script>javascript:window.location='../login.php'</script>");
?>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1" />
        <meta name="description" content="Something There">
        <meta name="author" content="">
        <title>BridgeMatchmaker</title>

        <link href="https://fonts.googleapis.com/css?family=Open+Sans:400,600" rel="stylesheet">
        <!-- Custom Style -->
        <link href="assets/css/style.css" rel="stylesheet" type="text/css">
		<!--Style Content Page-->
        <link href="assets/css/style.content.css" rel="stylesheet" type="text/css">
		
		<link href="assets/css/style_sent.css" rel="stylesheet" type="text/css">
		 
        <!-- Bootstrap -->
        <link href="assets/css/bootstrap.min.css" rel="stylesheet" type="text/css">
        <!-- Font Awesome -->
        <link href="assets/css/font-awesome.min.css" rel="stylesheet" type="text/css">
        <!-- Owl Carousel -->
        <link href="assets/css/owl.carousel.min.css" rel="stylesheet" type="text/css">
        <!-- Favicon -->
        <link rel="icon" href="" type="image/png" />

    </head>

<body>
<?
include("../connect.php");
include("./function/user_bd.php");
include("./function/user_check.php");
require "./header.php";

$page_menu_name = "Send E-mail to lady";

//////////////////Загрузка и фильтрация ID девушки/////////////////////////////////////
$girl_id = $_GET['girl_id'];
$girl_id = htmlspecialchars($girl_id);
$girl_id = mysql_escape_string($girl_id);
///////////////////////////////////////////////////////////////////////////////////////


?>
<div class="site-wrapper">
    <div class="container">
        <div class="row">
			<? require "./menu.php"; ?>
			
			<!-- Main Page Content (start)-->
            <div class="main-content col-md-9">
				 <div class="row">
                   <div class="col-lg-6 col-md-6 col-sm-7 col-xs-7 welcome">
                        <p><span class="glyphicon glyphicon-home"></span>Send E-mail to lady</p>
						
                    </div>  
										
                </div>
                <div class="row">
                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
						There are <? echo $letters; ?> more letters available for you.
                        <form action="./function/send_email_end.php" method="POST" class="sent-form" enctype="multipart/form-data">
							<input type="hidden" name="tarif_day" value="<? echo $data_print; ?>">
							<input type="hidden" name="matchmaker_login" value="<? echo $matchmaker_login; ?>">
                            <div class="form-group">
                                Lady ID: <input type="text" name="girl_id" class="input1" value="<? echo $girl_id; ?>"><label class="label1" for=""><a href="#">How to send messages and get a response</a></label>
                            </div>
							
                            <div class="form-group">
                                <textarea name="mail_text" id="" placeholder="Text"></textarea>
                            </div>
                            <div class="form-group">
                                    <input type="file" id="file" name="file" multiple accept="image/*">
                                    <label class="label2" for="">You can upload up to 1 photo. Notice that a photo you are going to upload on our site must not exceed 2Mb.</label>
                            </div>
                            <div class="form-group">
                                   <div class="row">
                                       <div class="col-lg-9">
                                           <input type="checkbox" id="your-interests1" class="form-check-input"  name="chk_group5" value="" onchange="check();"/>
                                                <label name="check-label" class="form-check-label"for="your-interests1">Putting a check, I  confirm agreement with delivery rules, that the letter will be checked by my matchmaker and send to the lady on her email address.  Reply on this letter I'll get  during 3 days on my email addres - <? echo $email_client; ?></label>
                                       </div>
                                       <div class="col-lg-3 save-prifile">
                                           <input onclick="check2();" type="submit" class="submit" value="SEND" name="submit" >
                                       </div>
                                   </div>
                            </div>
                            
                        </form>
                    </div>
                </div>
            </div>
			<!-- Main Page Content (end)-->
        </div>
    </div>
</div>

<? require "footer.php";?>

<!-- Site Scripts (start)-->
    <script src="assets/js/jquery.min.js"></script>
    <script src="assets/js/owl.carousel.min.js"></script>
    <script src="assets/js/bootstrap.min.js"></script>
    <script src="assets/js/custom.js"></script>
<!-- Site Scripts (end)-->
	<script>
	function check() {
		var chk_group5 = document.getElementsByName('chk_group5')[0],
			submit = document.getElementsByName('submit')[0];
		if (chk_group5.checked)
			submit.disabled = '';
		else
			submit.disabled = 'disabled';
	}
	
	function check2() {
		var chk_group5 = document.getElementsByName('chk_group5')[0],
			check_label = document.getElementsByName('check-label')[0],
			submit = document.getElementsByName('submit')[0];
		if (chk_group5.checked == false)
		{
			check_label.style.color='red';
			submit.disabled = 'disabled';
		}
	
	}
	</script>

</body>

</html>