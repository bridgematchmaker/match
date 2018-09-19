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
		<link href="assets/css/style.temp.css" rel="stylesheet" type="text/css">
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
?>
<div class="site-wrapper">
    <div class="container">
        <div class="row">
			<? require "./menu.php"; ?>
			
			<!-- Main Page Content (start)-->
            <div class="main-content col-md-9">
				<div class="row">
					<div class="temp_msg offset-1 col-md-10">
						<div class="row">
							<div class="temp_img col-md-2">
								<img width="75" src="./assets/images/warning.png"/>
							</div>
							<div class="temp_text col-md-8">
								 <b>
								 I'm sorry!<br>
								 The following article is in work and will be available asap. If you have questions about this article or about website in general please write a letter to this address. 
								 <br>
								 <a href="admin@bridgematchmaker.com">admin@bridgematchmaker.com</a>
								 </b>
								 <br><br>
								 <p class="text-center">
									<a href="<? echo $_SERVER['HTTP_REFERER']; ?>"><button type="button" class="btn btn-warning btn-md"><b><div style="margin-left:20px; margin-right:20px;">Go back</div></b></button></a>
								 </p>
							</div>
						</div>
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

</body>

</html>