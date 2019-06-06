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
        <link href="assets/css/message.css" rel="stylesheet" type="text/css">
        <!-- Favicon -->
        <link rel="icon" href="" type="image/png" />

    </head>

<body>
<?
include("../connect.php");
include("./function/user_bd.php");
include("./function/user_check.php");
require "./header.php";


$message_id = $_GET['message_id'];
$message_id = htmlspecialchars($message_id);
$message_id = mysql_escape_string($message_id);

$zapros1 = "SELECT * FROM orders WHERE order_id='".$message_id."'";

//////////////////////////////Загрузка данных из базы////////////////////////
$requirest1 = mysql_query($zapros1);
while($row1 = mysql_fetch_array($requirest1)) 
	{
		$message_date_add = $row1['date_add'];
		$message_user_id = $row1['user_id'];
        $message_girl_id = $row1['girl_id'];
        $message_status = $row1['status'];
		$message_type = $row1['type'];
		$message_mail_client = $row1['mail_client'];
		$message_mail_girl = $row1['mail_girl'];
    }

if($message_user_id != $user_id) {
    echo("
            <script>javascript:window.location='./index.php'</script>
        ");
    exit();
}

if($message_type != '0') {
    echo("
            <script>javascript:window.location='./index.php'</script>
        ");
    exit();
}

/////////////////////////////////////////////////////////////////////

$zapros_girl = "SELECT * FROM girls WHERE girl_id='".$message_girl_id."'";

//////////////////////////////Загрузка данных из базы////////////////////////
$requirest_girl = mysql_query($zapros_girl);
while($row_girl = mysql_fetch_array($requirest_girl)) 
	{
		$girl_first_name = $row_girl['first_name'];
		$girl_last_name = $row_girl['last_name'];
		$girl_country = $row_girl['country'];
		$girl_city  = $row_girl['city'];
		$girl_foto = $row_girl['foto'];
		$girl_birthday = $row_girl['birthday'];
	}


if ($message_status == '2') {
    $message_status_print = '
                            <div class="question-block media flex-column flex-sm-row">
                                <div class="media-left">
                                    <img src="../'.$girl_foto.'" width="100" alt="">
                                </div> 
                                <div class="media-body">
                                    <div class="d-flex flex-column flex-lg-row">
                                        <p class="pr-3">
                                            '.$message_mail_girl.' 
                                        </p>
                                    </div>
                                </div>
                            </div>
                            ';
}
?>
<div class="site-wrapper">
    <div class="container">
        <div class="row">
			<? require "./menu.php"; ?>
			
			<!-- Main Page Content (start)-->
            <div class="main-content col-md-9">

            <a href="./messages.php" class="button-back">
                    Back to messages
                </a>
                <div class="message-block">
                    <div class="message-block-header ">
                        <div class="row">
                            <div class="col">
                                <div class="message-block-title">
                                    <h5>
                                        Message #<? echo $message_id; ?>
                                    </h5>
                                </div>

                            </div>
                            <div class="col-md-4 col-lg-3">
                                <div class="d-flex justify-content-between align-items-center">
                                    <ul class="time-list">
                                        <li>
                                            Date: <span><? echo $message_date_add; ?></span>
                                        </li>
                                        <li>
                                            --------
                                        </li>
                                    </ul>
                                    <div>
                                    </div>
                                </div>

                            </div>
                        </div>
                    </div>

                    <div class="message-block-body">
                        <div class="message-block-body-inner">
                            <p>
                                <? echo $message_mail_client; ?> 
                            </p>

                        </div>
                       <? echo $message_status_print; ?>

                        <?
                        if ($matchmaker_login !== "None") {
                            echo('

                            <div class="message-block-body-banner">
                                <h5 class="text-accent">
                                    Your personal matchmaker
                                </h5>
                                <h3 class="chat-info">
                                    '.$name_match.'
                                    <span>
                                            <i class="fa fa-phone"></i>
                                            <a href="tel:#">
                                                '.$phone_match.'
                                            </a>
                                        </span>
                                </h3>
                                <div class="d-flex align-items-center">
                                    <div class="mr-3">
                                        <p class="text-gray text-sbold">
                                            Working hours:
                                        </p>
                                        <h5>
                                           '.$time_match.'
                                        </h5>
                                    </div>
                                    <a href="./chat_matchmaker.php" class="btn btn-gradient">write questions</a>
                                </div>


                                <div class="block-chat-img">
                                    <img src="assets/images/chat-img.png" alt="">
                                </div>

                            </div>
                            
                            ');
                        }
                        ?>
                        
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