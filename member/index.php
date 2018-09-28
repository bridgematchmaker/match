<?
session_start();
isset($_SESSION['email_client']) or die("<script>javascript:window.location='../login.php'</script>");
$page_menu_name = "Home";
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
        <!-- Main Style -->
        <link href="assets/css/style.css" rel="stylesheet" type="text/css">
        <!--Style Content Page-->
        <link href="assets/css/style.content.css" rel="stylesheet" type="text/css">
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

                    <div class="col-md-12">
                        <div class="member-page">
                            <div class="member-profile">

                                <div class="welcome-wrapper">
                                    <div class="row">
                                        <div class="col-md-6 d-flex align-items-center">
                                            <div class="welcome-text">
                                                <h2>Welcome <? echo $first_name; ?>!</h2>
                                            </div>
                                        </div>
                                        <div class="col-md-6 d-flex align-items-center justify-content-end site-usage-rules">
                                                <a href="./temp_msg.php">How to start using the site</a>
                                        </div>
                                    </div>
                                </div>

                                <div class="member-info-wrapper">
                                    <div class="row">
                                        <div class="col-md-4">
                                            <div class="member-main-foto">
                                                <img width="220" height="220" src="../<? echo $foto; ?>" alt="Member Foto">
                                            </div>
                                            <div class="member-info">
                                                <!--<div class="member-gallery"><a href="#"><i class="fa fa-picture-o" aria-hidden="true"></i>Photo gallery</a></div> -->
                                                <div class="member-id"><span>ID: </span><? echo $user_id; ?></div>
                                                <div class="member-name"><span>Name: </span><? echo $first_name; ?></div>
                                                <div class="member-date-registration">
                                                    <span>Date of registration: <? echo $date_reg; ?></span>
                                                    <div class="date-registration"></div>
                                                </div>
                                                <div class="site-rules"><a href="./temp_msg.php"><i class="fa fa-book" aria-hidden="true"></i>Site Rules</a><span> (No agreement)</span></div>
                                            </div>
                                        </div>
                                        <div class="col-md-8">

                                           <div class="member-activity">
                                                <table>
                                                    <tbody>
                                                    <tr class="member-servises">
                                                        <td><span>Your services:</span></td>
                                                        <td>
                                                            <div class="services">
                                                                <div><? echo $service_print;?></div>
                                                                <a href="./choose_service.php">Change service</a>
                                                            </div>
                                                        </td>
                                                    </tr>

                                                    <tr class="member-status">
                                                        <td><span>Status:</span></td>
                                                        <td><span class="status"><? echo $status_system_print; ?></span></td>
                                                    </tr>

                                                    <tr class="member-tariff-plan">
                                                        <td><span>Tariff plan:</span></td>
                                                        <td>
															<span class="tariff-plan"><? echo $status_tarif_print; ?> <span class="day" <? if($data_print < 4) { echo('style="color:#EA5518;"');} ?>>(<? echo $data_print; ?> day)</span><? if($data_print < 4) { echo('<a href="./temp_msg.php">Purchase of services</a>');} ?>	</span>
														</td>
														
                                                    </tr>
													
                                                    </tbody>
                                                </table>
                                           </div>
											<?
											if($matchmaker_login !== "None")
												{
													echo('
															<div class="personal-matchmaker">
																<div class="personal-matchmaker-text">
																	<h3>Your personal matchmaker</h3>
																	<div class="name-matchmaker">'.$name_match.'</div>
																	<div class="phone-matchmaker"><i class="fa fa-phone" aria-hidden="true"></i>'.$phone_match.'</div>
																	<div class="work-our-matchmaker">
																		<div class="title">Working hours</div>
																		<div class="hour">'.$time_match.'</div>
																	</div>
                                                                   
                                                                    <a href="./personal_matchmaker.php" class="button-matchmaker-index">More information</a>
                                                                    <a href="./chat_matchmaker.php" class="button-matchmaker-index">Write questions</a>
																</div>
																<img src="assets/images/matchmaker.jpg" alt="Matchmaker" class="mr-1">
															</div>
													');
												}
                                            
											?>

                                            <div class="information-banner"></div>

                                            <div class="available-services">
                                                <h3>Available services</h3>
                                                <div class="table-services-wrapper">
                                                    <table class="table-services">
                                                        <tbody>
                                                        <tr>
                                                            <td>Writing letters</td>
                                                            <td class="text-center"><? echo $letters; ?></td>
                                                            <td><a href="./temp_msg.php" class="read-more">More about the service</a></td>
                                                        </tr>
                                                        <tr>
                                                            <td>Skype conference</td>
                                                            <td class="text-center"><? echo $skypes; ?></td>
                                                            <td><a href="./temp_msg.php" class="read-more">More about the service</a></td>
                                                        </tr>
                                                        <tr>
                                                            <td>Send gifts</td>
                                                            <td class="text-center"><? echo $gifts; ?></td>
                                                            <td><a href="./temp_msg.php" class="read-more">More about the service</a></td>
                                                        </tr>
                                                        <tr>
                                                            <td>Detailed advice from matchmakers</td>
                                                            <td class="text-center"><? echo $advice_match; ?></td>
                                                            <td><a href="./temp_msg.php" class="read-more">More about the service</a></td>
                                                        </tr>
                                                        <tr>
                                                            <td>Express assessment of the matchmaker</td>
                                                            <td class="text-center"><? echo $assessment_match; ?></td>
                                                            <td><a href="./temp_msg.php" class="read-more">More about the service</a></td>
                                                        </tr>
                                                        </tbody>
                                                    </table>
                                                </div>
                                                <a href="./temp_msg.php" class="purchse-more">Purchse more</a>
                                            </div>

                                        </div>

                                    </div>
                                </div>

                                <div class="member-lady-like">
                                    <div class="row">
                                        <div class="col-md-12">
                                            <h3>Random girls profile:</h3>
                                            <div class="lady-carousel owl-carousel owl-theme owl-loaded owl-drag">

<?
////////////////////////Загружаем массив девушек добавленных клиенту в профиль/////////////////////////
$data_girl_id = Array(); // Масив с id девушек
$count = 0;
$sql_client_girl = "SELECT * FROM clients_girl WHERE user_id='".$user_id."'";
$result_client_girl  = mysql_query($sql_client_girl);
while($row_client_girl = mysql_fetch_array($result_client_girl)) 
    { 
        $data_girl_id[$count] = $row_client_girl['girl_id'];
        $count++;
    }
///////////////////////////////////////////////////////////////////////////////////////////////////////

///////////Загрузка девушек из галереи, которые не добавленны у пользователя///////////////////////////
$sql_gellary_girl = "SELECT * FROM girls WHERE gallery_status='1' AND activation_status='1' ORDER BY RAND()";
$result_gellary_girl  = mysql_query($sql_gellary_girl);
while($row_gellary_girl = mysql_fetch_array($result_gellary_girl)) 
    {
        if (!in_array($row_gellary_girl['girl_id'], $data_girl_id)) 
            {
                echo('
												<div class="item text-center">
                                                    <div class="image-wrapper">
														<form action="" id="form_girl_'.$row_gellary_girl['girl_id'].'" method="POST">
															<input type="hidden" name="girl_id" value="'.$row_gellary_girl['girl_id'].'">
															<input type="hidden" name="user_id" value="'.$user_id.'">
														</form>
                                                        <a href="./girl.php?girl_id='.$row_gellary_girl['girl_id'].'"><img width="220" height="220" src="../'.$row_gellary_girl['foto'].'" alt="Lady Image"></a>
                                                    </div>
                                                    <span class="lady-name"><a href="./girl.php?girl_id='.$row_gellary_girl['girl_id'].'">'.$row_gellary_girl['first_name'].'</a></sapn> <span class="id">ID:</span><span class="id-number">'.$row_gellary_girl['girl_id'].'</span>
                                                </div>
                    ');
            }
    }
///////////////////////////////////////////////////////////////////////////////////////////////////////
    ?>

                                            </div>
                                        </div>
                                    </div>
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
	<script src="assets/js/member.js"></script>
<!-- Site Scripts (end)-->


</body>

</html>