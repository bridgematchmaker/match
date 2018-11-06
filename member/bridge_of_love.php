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
        <!-- Bootstrap -->
        <link href="assets/css/bootstrap.min.css" rel="stylesheet" type="text/css">
        <!-- Font Awesome -->
        <link href="assets/css/font-awesome.min.css" rel="stylesheet" type="text/css">
        <!-- Owl Carousel -->
        <link href="assets/css/owl.carousel.min.css" rel="stylesheet" type="text/css">
        <!-- Custom Style -->
        <link href="assets/css/style.css" rel="stylesheet" type="text/css">
		<!--Style Content Page-->
        <link href="assets/css/style.bridge_of_love.css" rel="stylesheet" type="text/css">
        <!-- Favicon -->
        <link rel="icon" href="" type="image/png" />

    </head>

<body>
<?
$page_menu_name = "Bridge_of_love";
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
                    <div class="col-lg-11">
                       
                        <h5>
                            Dear client!
                        </h5>
                        <h5>
                            According to setting of your cabinet you refused from help of matchmaker and indicated  that you will make your own search on Bridge-of-love website.  For this was created account for you access to which is achieved by entering your login and password in the window by the link
                        </h5>
                        <div class="block-setting">
                            <h5>
                                If you would like to change your settings and to get help of professional matchmaker you need to follow the link and
                            </h5>
                            <a href="./choose_service.php" class="btn btn-gradient-blue">change your setting</a>
                            <div class="logo">
                                <img src="assets/images/logo-dark.png" alt="">
                            </div>

                        </div>
                        <div class="block-login">
                            <p class="block-login-title">
                                Or make <span>REGISTRATION</span> Bridge-of-Love.com
                            </p>
                            <div class="block-login-inner">
                                <div class="block-logo">
                                    <img src="assets/images/logo-green.png" alt="">
                                </div>

                                <div class="block-login-form">
                                    <form class="app-get" action="https://www.bridge-of-love.com/index.php?app=member&act=register&utm_source=fromMatchMaker" method="post">
                                        <input type="hidden" name="utm_source" value="fromMatchMaker">	
                                        <input id="clause" type="hidden" name="agree" value="1">
                                        <div class="form-wrap">
                                            <label for="name"> First name
                                                <span>*</span>
                                            </label>
                                            <input type="text" name="user_name" id="name">
                                        </div>
                                        <div class="form-wrap">
                                            <label for="email"> Your email
                                                <span>*</span>
                                            </label>
                                            <input type="text" name="email" id="email">
                                        </div>
                                        <div class="form-wrap">
                                            <label for="pass"> Your password
                                                <span>*</span>
                                            </label>
                                            <input type="password" name="password" id="pass">
                                        </div>
                                        <div class="form-wrap">
                                            <label for="pass2"> Repeat password
                                                <span>*</span>
                                            </label>
                                            <input type="password" name="password_confirm" id="pass2">
                                        </div>
                                        <button class="btn btn-gradient">
                                            Register now For FREE
                                        </button>
                                        <p>
                                            By clicking «Register now For FREE» you agree
                                            with the <a href="#">Terms</a> and Conditions and <a href="#">License agreement</a>.
                                        </p>
                                    </form>

                                </div>
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
    <script type="text/javascript">
        function setFormElement(t) {
            var a = new ClientJS
            , r = a.getFingerprint()
            , e = '<input type="hidden" name="key" value="' + r + '"/>';
            $(t).append(e)
        }
        setFormElement('.app-get'); 
    </script>
<!-- Site Scripts (end)-->

</body>

</html>