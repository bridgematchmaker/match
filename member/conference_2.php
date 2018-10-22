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

        <link href="https://fonts.googleapis.com/css?family=Open+Sans:400,600,700" rel="stylesheet">

        <link href="https://cdn.materialdesignicons.com/2.8.94/css/materialdesignicons.min.css" rel="stylesheet">
        <!-- Bootstrap -->
        <link href="assets/css/bootstrap.min.css" rel="stylesheet" type="text/css">
        <!-- Font Awesome -->
        <link href="assets/css/font-awesome.min.css" rel="stylesheet" type="text/css">
        <!-- Owl Carousel -->
        <link href="assets/css/owl.carousel.min.css" rel="stylesheet" type="text/css">

        <link href="assets/css/jquery.mCustomScrollbar.min.css" rel="stylesheet" type="text/css">

        <link href="assets/css/select2-conf.css" rel="stylesheet" type="text/css">
        <!-- Favicon -->
        <!-- Custom Style -->
        <link href="assets/css/style.css" rel="stylesheet" type="text/css">
		<!--Style Content Page-->

        <link href="assets/css/style.conference_2.css" rel="stylesheet" type="text/css">

        <link href="assets/css/time-picker.css" rel="stylesheet" type="text/css">
       
        <link rel="icon" href="" type="image/png" />

    </head>

<body>
<?
include("../connect.php");
include("./function/user_bd.php");
include("./function/user_check.php");
require "./header.php";
$page_menu_name = "Skype";
date_default_timezone_set('UTC+3');


if($skypes < 1) { echo("<script>javascript:window.location='./index.php'</script>"); } 

$girl_id = $_POST['girl_id'];
$girl_id = htmlspecialchars($girl_id);
$girl_id = mysql_escape_string($girl_id);

if($girl_id <> '') {
    ////////////////////Проверка анкеты девушки на существование///////////////////////////
    $result_repeat = mysql_query("SELECT * FROM girls WHERE girl_id='$girl_id';");
    $num = mysql_num_rows($result_repeat);
    if($num !== 1) 
        { 
            echo("
                <script>javascript:window.location='./index.php'</script>
            ");
            exit();
        } 
    ///////////////////////////////////////////////////////////////////////////////////////

    /////////////////Загружаем данные анкеты девушки///////////////////////////////////////
    include("./function/girl_bd.php");
    ///////////////////////////////////////////////////////////////////////////////////////

    /////////////////Проверяем доступность профиля девушки для клиента/////////////////////

    $result_access = mysql_query("SELECT * FROM clients_girl WHERE girl_id='$girl_id' AND user_id='$user_id';");
    $num_access = mysql_num_rows($result_access);
    if($num_access !== 1) 
        { 
            if($girl_gallery_status <> "1")
            {
                    echo("
                        <script>javascript:window.location='./index.php'</script>
                        ");
                    exit();
            }
        } 

    ///////////////////////////////////////////////////////////////////////////////////////
}


?>
<div class="site-wrapper">
    <div class="container">
        <div class="row">
			<? require "./menu.php"; ?>
			
		<!-- Main Page Content (start)-->
        <div class="main-content col-md-9">
                <div class="row">
                    <div class="col-lg-12">
                        <h2 class="page-title text-gray">
                            Ordering Video conference between you and your lady
                        </h2>

                        <div class="row mt-4">
                            <div class="col-md-6">
                                <ul class="list-inline step-list">
                                    <li class="list-inline-item">
                                        Step 1
                                    </li>
                                    <li class="list-inline-item  active">
                                        Step 2
                                    </li>
                                </ul>
                            </div>

                            <div class="col-12 mt-4">
                                <form class="user-info-form" method="post" action="./function/skype_end.php">
                                    <input type="hidden" name="tarif_day" value="<? echo $data_print; ?>">
							        <input type="hidden" name="matchmaker_login" value="<? echo $matchmaker_login; ?>">
                                    <div class="info-block">
                                        <div class="row">
                                            <div class="col-lg-3">
                                                <div class="user-img">
                                                    <? 
                                                        if($girl_id <> '') {
                                                            echo('<img width="180" height="180" src="../'.$girl_foto.'" alt="">');
                                                        } else {
                                                            echo('<img src="assets/images/user-img-1.jpg" alt="">');
                                                        }
                                                    ?>
                                                  
                                                </div>
                                            </div>
                                            <div class="col-lg-9 mt-3 mt-lg-0">
                                                <ul class="list-info">
                                                    <?
                                                        if($girl_id <> '') {
                                                            echo('
                                                                <li>
                                                                    <p>Name</p>
                                                                    <p class="name">'.$girl_first_name.'</p>
                                                                </li>
                                                            ');
                                                        } 
                                                    ?>
                                                    <li>
                                                        <label for="numbId">
                                                            ID <span>*</span>
                                                        </label>
                                                        <input type="text" name="girl_id" id="numbId" placeholder="Enter girl ID" class="form-input form-input-sm" value="<? echo $girl_id; ?>" required>
                                                    </li>
                                                    <li>
                                                        <label for="nameSkype">
                                                            Your Skype Name <span>*</span>
                                                        </label>
                                                        <div class="block-input">
                                                            <input type="text" name="user_skype" id="nameSkype" placeholder="skype_name" class="form-input" required>
                                                            <a href="#"> What's my Skype Name?</a>
                                                        </div>

                                                    </li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="info-block">
                                        <div class="row">
                                            <div class="col-md-6 col-lg-3">
                                                <label for="time">
                                                    Choose time <span>*</span>
                                                </label>
                                                <select name="time_skype" id="time" data-placeholder="Choose time" required onchange="selValue(this)">
                                                    <option label="UTC+3"></option>
                                                    <option value="12:00:00">12:00</option>
                                                    <option value="12:30:00">12:30</option>
                                                    <option value="13:00:00">13:00</option>
                                                    <option value="13:30:00">13:30</option>
                                                    <option value="14:00:00">14:00</option>
                                                    <option value="14:30:00">14:30</option>
                                                    <option value="15:00:00">15:00</option>
                                                    <option value="15:30:00">15:30</option>
                                                    <option value="16:00:00">16:00</option>
                                                    <option value="16:30:00">16:30</option>
                                                    <option value="17:00:00">17:00</option>
                                                    <option value="17:30:00">17:30</option>
                                                    <option value="18:00:00">18:00</option>
                                                    <option value="18:30:00">18:30</option>
                                                    <option value="19:00:00">19:00</option>
                                                    <option value="19:30:00">19:30</option>
                                                    <option value="20:00:00">20:00</option>
                                                </select >
                                            </div>
                                            <div class="col-md-6 col-lg-3 mt-3 mt-md-0">
                                                <label for="date">
                                                    Date <span>*</span>
                                                </label>
                                                <input type="text" name="date_skype" id="date" data-time-picker="date" class="form-input" required onchange="dValue(this)">
                                            </div>
                                            <div class="col-12 col-lg-6 mt-3 mt-lg-0">
                                                <div class="time-block">
                                                   <ul class="time-list">
                                                       <li>
                                                           <span>
                                                               Сurrent Date and Time
                                                           </span>
                                                           <div class="right-block result">
                                                               <p class="result-date1">
                                                                    <? echo date('d.m.Y'); ?>
                                                               </p>
                                                               <p class="result-time">
                                                                   <span>UTC+3</span>
                                                                   <span class="time-value1"><? echo date('h:i'); ?></span>
                                                               </p>
                                                           </div>
                                                       </li>
                                                       <li>
                                                           <span>
                                                               Your chat starts at
                                                           </span>
                                                           <div class="right-block ">
                                                               <p class="result-date">
                                                                   25.09.2018
                                                               </p>
                                                               <p class="time">
                                                                   <span>UTC+3</span>
                                                                   <span class="time-value">23:00</span>
                                                               </p>
                                                           </div>
                                                       </li>
                                                       <li>
                                                           <span>
                                                               Your chat ends at
                                                           </span>
                                                           <div class="right-block ">
                                                               <p class="result-date">
                                                                   25.09.2018
                                                               </p>
                                                               <p class="time">
                                                                   <span>UTC+3</span>
                                                                   <span class="time-value">23:30</span>
                                                               </p>
                                                           </div>
                                                       </li>
                                                   </ul>

                                                </div>
                                            </div>
                                            <div class="col-12  mt-3">
                                                <div class="align-self-center checkbox-block">
                                                    <label for="agree">
                                                        <input type="checkbox" id="agree">
                                                        <span></span>
                                                    </label>
                                                    <p>
                                                        I agree that the time of communication in the chat is limited and after the time ends there will be an interruption.
                                                    </p>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="info-block">
                                        <?
                                            if($girl_id <> '') {
                                                echo('
                                                        <h4>
                                                            Lady asks you to read her desires to you about Skype conference
                                                        </h4>
                                                        <div class="block-chat-message media mt-4">
                                                            <div class="chat-message-img">
                                                                <img width="63" height="63" src="../'.$girl_foto.'" alt="">
                                                            </div>
                                                            <div class="media-body chat-message-body">
                                                                <p>
                                                                    '.$question49.'
                                                                </p>
                                                            </div>
                                                        </div>
                                                ');
                                            }    
                                        ?>
                                        
                                        <div class="mt-4">
                                            <p class="mb-0">
                                                Your comments for the matchmaker
                                            </p>
                                            <textarea name="description2" class="form-input">
                                            </textarea>
                                            <div class="text-center">
                                                <button class="btn btn-gradient block-center btn-lg disabled" type="submit">
                                                    PAY
                                                </button>
                                            </div>

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
    <script src="assets/js/select2_2.min.js"></script>
    <script src="assets/js/timepicker.min.js"></script>
    <script src="assets/js/scriptTimepicker.js"></script>
    <script src="assets/js/select2.js"></script>
    <script src="assets/js/custom.js"></script>
    <script src="assets/js/customConference_2.js"></script>
<!-- Site Scripts (end)-->

</body>

</html>