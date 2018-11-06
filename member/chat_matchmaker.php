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
        <!-- Main Style -->
        <link href="assets/css/jquery.mCustomScrollbar.min.css" rel="stylesheet" type="text/css">
        <link href="assets/css/select2.css" rel="stylesheet" type="text/css">
        <!--Style Content Page-->
        <!-- Custom Style -->
        <link href="assets/css/style.css" rel="stylesheet" type="text/css">
        <link href="assets/css/style.content.css" rel="stylesheet" type="text/css">
        <link href="assets/css/style.chat.css" rel="stylesheet" type="text/css">
        
        <!-- Favicon -->
        <link rel="icon" href="" type="image/png" />

    </head>

<body>
<?
include("../connect.php");
include("./function/user_bd.php");
include("./function/user_check.php");
require "./header.php";
$page_menu_name = "Chat with Matchmaker";

if($matchmaker_login == "None") 
	{
		echo("<script>javascript:window.location='./index.php'</script>");
	}
?>
<div class="site-wrapper">
    <div class="container">
        <div class="row">
			<? require "./menu.php"; ?>
            
 <!-- Main Page Content (start)-->
            <div class="main-content col-md-9">
                <div class="row">
                    <div class="col-lg-11">
                        <h2 class="page-title text-gray">
                            <i class="fa fa-home"></i>
                            Chat with Matchmaker
                        </h2>

                        <h5>
                            This page contains your correspondence with a professional Matchmaker’s
                        </h5>
                        <div class="block-chat">
                            <div class="block-chat-header">
                                <h4 class="text-accent">
                                    Your personal matchmaker
                                </h4>
                                <h3 class="chat-info">
                                    <? echo $name_match; ?>
                                    <span>
                                        <i class="fa fa-phone"></i>
                                        <a href="tel:<? echo $phone_match; ?>">
                                           <? echo $phone_match; ?>
                                        </a>
                                    </span>
                                </h3>
                                <p class="text-gray text-sbold">
                                    Working hours:
                                </p>
                                <h5>
                                   <? echo $time_match; ?>
                                </h5>
                                <div class="block-chat-img">
                                    <img src="assets/images/chat-img.png" alt="">
                                </div>
                            </div>
                            <div class="block-chat-body" id="myScroll">
                                <div class="block-chat-body-inner">

                                    <? 
                                        $result_tickets_count = mysql_query("SELECT * FROM tickets WHERE user_id=$user_id AND status='0';");
                                        $num = mysql_num_rows($result_tickets_count);
		
                                        $zapros_tickets = "SELECT * FROM tickets WHERE user_id=$user_id";
                                        $result_tickets = mysql_query($zapros_tickets);
                                        while ($row_tickets = mysql_fetch_assoc($result_tickets)) 
                                            { 
                                                if($row_tickets['matchmaker_login'] == $matchmaker_login)
                                                if($row_tickets['status'] == "1")
                                                    {
                                                        echo('
                                                                <div class="block-chat-message block-chat-message-right media">
                                                                    <div class="chat-message-img">
                                                                        <img width="63" height="63" src="../'.$foto.'" alt="">
                                                                    </div>
                                                                    <div class="media-body chat-message-body">
                                                                        <p>
                                                                           '.$row_tickets['date_add'].'<br>
                                                                           '.$row_tickets['question'].'
                                                                        </p>
                                                                    </div>
                                                                </div>
                                                                <div class="block-chat-message media">
                                                                    <div class="chat-message-img">
                                                                        <img width="63" height="63" src="../'.$foto_match.'" alt="">
                                                                    </div>
                                                                    <div class="media-body chat-message-body">
                                                                        <p>
                                                                            '.$row_tickets['date_end'].'<br>
                                                                            '.$row_tickets['answer'].'   
                                                                        </p>
                                                                    </div>
                                                                </div>  
                                                            ');
                                                    }
                                                else
                                                    {
                                                        echo('
                                                                <div class="block-chat-message block-chat-message-right media">
                                                                    <div class="chat-message-img">
                                                                        <img width="63" height="63" src="../'.$foto.'" alt="">
                                                                    </div>
                                                                    <div class="media-body chat-message-body">
                                                                        <p>
                                                                           '.$row_tickets['date_add'].'<br>
                                                                           '.$row_tickets['question'].'
                                                                        </p>
                                                                    </div>
                                                                </div>
                                                            ');
                                                    }
                                            }
                                    ?>

                                </div>
                            </div>
                            <form action="./function/ticket_add.php" method="POST" enctype="multipart/form-data">
                                <input type="hidden" name="user_id" value="<? echo $user_id; ?>">
                                <input type="hidden" name="matchmaker_login" value="<? echo $matchmaker_login; ?>">
                            <div class="block-chat-footer">
                                <div class="row align-items-md-center">
                                    <form action="./function/ticket_add.php" method="POST">
                                        <div class="col-md-9">
                                            <div class="form-item">
                                                <?
                                                    if($num > 0) 
                                                        {
                                                            echo(' <textarea class="text-message" name="question" placeholder="Message" disabled>Expect a response from your personal manager</textarea>');
                                                        }
                                                    else
                                                        {
                                                            echo('<textarea class="text-message" name="question" placeholder="Message"></textarea>');
                                                        }
                                                ?>
                                            
                                                <label for="load" class="load">
                                                    <i class="fa fa-paperclip" aria-hidden="true"></i>
                                                    <input type="file" name="file" id="load" multiple accept="image/*"> 
                                                </label>
                                            </div>
                                        </div>
                                        <div class="col-md-3 text-center mt-4 mt-md-0">
                                            <?
                                                if($num > 0) 
                                                    {
                                                        echo(' <button type="submit" class="btn btn-gradient" disabled>SEND</button>');
                                                    }
                                                else
                                                    {
                                                        echo(' <button type="submit" class="btn btn-gradient">SEND</button>');
                                                    }
                                            ?>
                                        </div>
                                    </div>
                                </form>
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
    <script src="assets/js/select2.min.js"></script>
    <script src="assets/js/select2.js"></script>
    <script src="assets/js/jquery.mCustomScrollbar.min.js"></script>
    <script src="assets/js/custom.js"></script>
    <script src="assets/js/customChat.js"></script>
<!-- Site Scripts (end)-->

</body>

</html>