<?
session_start();
if (isset($_SESSION['email_client'])) 
	{
		echo("
				<script>javascript:window.location='./member/index.php'</script>
			");
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

    <!-- Main Style -->
    <link href="assets/css/style.css" rel="stylesheet" type="text/css">
    <!-- Main Style -->
    <link href="assets/css/blanking.css" rel="stylesheet" type="text/css">
    <!-- Bootstrap -->
    <link href="assets/css/bootstrap.min.css" rel="stylesheet" type="text/css">
    <!-- Font Awesome -->
    <link href="assets/css/font-awesome.min.css" rel="stylesheet" type="text/css">

	<link href="assets/css/style-main.css" rel="stylesheet" type="text/css">
	<!-- Favicon -->
	<link rel="icon" href="" type="image/png"/>

</head>

<body class="page">
<?
require "./header.php";
?>

<div class="site-wrapper blanking-background">
    <div class="container">
        <div class="row">

<!-- Main Page Content (start)-->
        <div class="main-content col-md-12">
            <div class="row">

                <div class="col-md-10 col-sm-12 offset-md-1">
                    <div class="blanking-page">
                        <div class="thumb-wrap">
                            <iframe width="560" height="315" src="https://www.youtube.com/embed/DrQBqwafvvo" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>
                        </div>
                        <br>
                        <ul>
                            <li class="d-flex align-middle"><span class="number">1</span><p>First project, that unites matchmakers and people who look for serious relationships.</p></li>
                            <li class="d-flex align-middle"><p>Unique method of  profiles reality control based on a blockchain technology. Fully isolated from spam, fraud and scam.</p><span class="number">2</span></li>
                            <li class="d-flex align-middle"><span class="number">3</span><p>Professional team of matchmakers who helps to realize client's expectations  in shortest terms. A big client database.</p></li>
                            <li class="d-flex align-middle"><p>Individual work with each client. Loyal price policy. Administration is in hands of every customer.</p><span class="number">4</span></li>
                            <li class="d-flex align-middle"><span class="number">5</span><p>Free communication between men&women without any payments for correspondence.</p></li>
                            <li class="d-flex align-middle last"><p>Real dates, real relationships!</p><span class="number">6</span></li>
                        </ul>
                        <a href="./registration.php" class="button-register d-flex align-items-center">Register Now Completely Free!</a>
                        <p class="registred text-center mb-0">Already registered? <a href="./login.php">Sign in</a></p>
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
<script src="assets/js/core.min.js"></script>
<script src="assets/js/custom.js"></script>
<script src="assets/js/jquery.min.js"></script>
<script src="assets/js/bootstrap.min.js"></script>

<!-- Site Scripts (end)-->

</body>

</html>