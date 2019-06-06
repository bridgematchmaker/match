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
        <link href="assets/css/messages.css" rel="stylesheet" type="text/css">
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
            <div class="main-content col-md-9 col-xl-8">

            <h4 class="content-title">
                    My messages
                </h4>
                <div class="row no-gutters mt-3">
                    <div class="col-sm-6">
                        <a href="./messages.php" class="btn-tab active"> Messages</a>
                    </div>
                    <div class="col-sm-6">
                        <a href="./feeds.php" class="btn-tab"> Feeds</a>
                    </div>
                </div>
                <div class="message-list  mt-5">
                <?
                ///////////////////////////////////////////Загрузка фидов//////////////////////////////////////////////
                $girl_id = $_GET['girl_id'];
                $girl_id = htmlspecialchars($girl_id);
                $girl_id = mysql_escape_string($girl_id);

                if($girl_id <> '') {
                    ////////////////////Проверка анкеты девушки на существование///////////////////////////
                    $result_repeat = mysql_query("SELECT * FROM girls WHERE girl_id='$girl_id';");
                    $num = mysql_num_rows($result_repeat);
                    if($num !== 1) { 
                            $sql_messages = "SELECT * FROM orders WHERE user_id='$user_id' AND type='0' AND (status='0' OR status='2') ORDER BY order_id DESC LIMIT 100";
                        } 
                    else {
                        $sql_messages = "SELECT * FROM orders WHERE user_id='$user_id' AND type='0' AND (status='0' OR status='2') AND girl_id='$girl_id' ORDER BY order_id DESC LIMIT 100";
                    }
                } else {
                    $sql_messages = "SELECT * FROM orders WHERE user_id='$user_id' AND type='0' AND (status='0' OR status='2') ORDER BY order_id DESC LIMIT 100";
                }

                $result_messages  = mysql_query($sql_messages);
                while($row = mysql_fetch_array($result_messages)) 
                    {
                        $message_id = $row['order_id'];
                        $message_status = $row['status'];
                        $message_girl_id = $row['girl_id'];
                        $message_date_add = $row['date_add'];

                        switch ($message_status)
							{
								case 0:
                                    $message_status_print = '
                                                                <div class="photo-block-title">
                                                                <p class="alert-message">
                                                                    <img src="assets/images/message-icon.png" alt="">
                                                                    Waiting for a answered
                                                                </p>
                                                                <a href="./message.php?message_id='.$message_id.'" class="btn btn-gradient"> REad the message</a>
                                                                </div>
                                                            ';
								break;
			
								case 2:
                                    $message_status_print = '
                                                                <div class="photo-block-title">
                                                                <p class="alert-message done">
                                                                    <img src="assets/images/message-icon-2.png" alt="">
                                                                    Answered
                                                                </p>
                                                                <a href="./message.php?message_id='.$message_id.'" class="btn btn-done"> REad the message</a>
                                                                </div>
                                                            ';
								break;
			
							}

                        ///////////Загружаем данные девки////////////
                        $zapros_message_girl = "SELECT first_name, last_name, foto, country, birthday FROM girls WHERE girl_id='".$message_girl_id."'";
                        $requirest_message_girl = mysql_query($zapros_message_girl);
                        while($row_message_girl = mysql_fetch_array($requirest_message_girl)) 
                            {
                                $message_girl_first_name = $row_message_girl['first_name'];
                                $message_girl_last_name = $row_message_girl['last_name'];
                                $message_girl_foto = $row_message_girl['foto'];
                                $message_girl_country = $row_message_girl['country'];
                                $message_girl_birthday = $row_message_girl['birthday'];
                            }
                        /////////////////////////////////////////////
                        echo('
                                <div class="message-block">
                                    <div class="photo-block">
                                    <div class="photo-block-header ">
                                        <div class="row">
                                            <div class="col-lg-4">
                                                <div class="media img-block">
                                                    <img src="../'.$message_girl_foto.'"  width="100" alt="" class="mr-3">
                                                    <div class="media-body">
                                                        <h6><a href="#" class="name">'.$message_girl_first_name.'</a></h6>
                                                        <ul>
                                                            <li>
                                                                ID: <span>'.$message_girl_id.'</span>
                                                            </li>
                                                            <li>
                                                                Birthday: <span>'.$message_girl_birthday.'</span>
                                                            </li>
                                                            <li>
                                                                Country: <span>'.$message_girl_country.'</span>
                                                            </li>
                                                        </ul>
                                                    </div>
                                                </div>

                                            </div>
                                            <div class="col-lg-5 col-xl-6">
                                                '.$message_status_print.'
                                            </div>
                                            <div class="col-lg-3 col-xl-2">
                                                <ul class="time-list">
                                                    <li>
                                                        Date:<span>'.$message_date_add.'</span>
                                                    </li>
                                                    <li>
                                                        <a href="./messages.php?girl_id='.$message_girl_id.'" class="btn-message"> All her messages </a>
                                                    </li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </div></div>
                        
                        ');    
                    }
                ///////////////////////////////////////////////////////////////////////////////////////////////////////
                ?>
          
                    
            
                </div>
                <div id="pagination-message" class="pagination-nav mt-5">

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
    <script src="assets/js/pagination.js"></script>
    <script src="assets/js/messages.js"></script>

<!-- Site Scripts (end)-->

</body>

</html>