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

    <!-- Main Style -->
    <link href="assets/css/style.css" rel="stylesheet" type="text/css">
    <!-- Select2 -->
    <link href="assets/css/select2.min.css" rel="stylesheet" type="text/css">
    <!--Style Content Page-->
    <link href="assets/css/girl-profile.css" rel="stylesheet" type="text/css">
    <!-- Bootstrap -->
    <link href="assets/css/bootstrap.min.css" rel="stylesheet" type="text/css">
    <!-- Font Awesome -->
    <link href="assets/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <!-- Owl Carousel -->
    <link href="assets/css/owl.carousel.min.css" rel="stylesheet" type="text/css">

</head>

<body>
<?
include("../connect.php");
include("./function/user_bd.php");
include("./function/user_check.php");
require "./header.php";


//////////////////Загрузка и фильтрация ID девушки/////////////////////////////////////
$girl_id = $_GET['girl_id'];
$girl_id = htmlspecialchars($girl_id);
$girl_id = mysql_escape_string($girl_id);
///////////////////////////////////////////////////////////////////////////////////////

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
		
//////////////////Уровень совместимости/////////////////////////
if($num_access == 1)
	{
		$result_conformity = mysql_query("SELECT * FROM clients_girl WHERE girl_id='$girl_id' AND user_id='$user_id' AND girl_status='0';");
		while($row_conformity = mysql_fetch_array($result_conformity)) 
			{
				$conformity = $row_conformity['conformity'];
			}
	}
/////////////////////////////////////////////////////////////////
	
///////////////////////////////////////////////////////////////////////////////////////

////////////////Считаем количество ответов на вопросы девушке//////////////////////////
for ($i=0; $i<31; $i++)
	{
		if(${'ask'.$i} <> "")
		{
			$status_ask++;
		}
	}
///////////////////////////////////////////////////////////////////////////////////////

?>
<div class="site-wrapper">
    <div class="container">
        <div class="row">
			<? require "./menu.php"; ?>
			
			<!-- Main Page Content (start)-->
            <div class="main-content col-md-9">
				<div class="row">
                        <div class="col-md-12">
                            <h2 class="page-title"><i class="fa fa-home" aria-hidden="true"></i>Girl Profile</h2>
                        </div>

                        <div class="col-md-5">

							<div class="girl-gallery-foto">
                                <div id="sync1" class="owl-carousel owl-theme">
									<?
										$zapros_foto = "SELECT * FROM girls_foto WHERE girl_id='".$girl_id."' AND status_foto='1'";
										$requirest_foto = mysql_query($zapros_foto);
										while($row_foto = mysql_fetch_array($requirest_foto)) 
											{
												echo('
														<div class="item">
															<div class="image-wrapper">
																<img height="392" weight="293" src="../'.$row_foto['foto'].'" alt="Lady Foto">
															</div>
														</div>
													');
											}
									?>
                                </div>

                                <div id="sync2" class="owl-carousel owl-theme owl-thumbs">
									<?
										$zapros_foto = "SELECT * FROM girls_foto WHERE girl_id='".$girl_id."' AND status_foto='1'";
										$requirest_foto = mysql_query($zapros_foto);
										while($row_foto = mysql_fetch_array($requirest_foto)) 
											{
												echo('
														<div class="owl-thumb-item">
															<div class="image-wrapper">
																<img src="../'.$row_foto['foto'].'" alt="Lady Foto">
															</div>
														</div>
													');
											}
									?>
                          
                                </div>

                            </div>

                            <div class="girl-video">
                                <i class="fa fa-video-camera" aria-hidden="true"></i>Introduction video
                                <iframe width="270" height="180" src="<? echo $girl_video; ?>" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>
                            </div>

							<?
								if($matchmaker_login !== "None")
								{
									echo('
											<div class="personal-matchmaker">
												<div class="personal-matchmaker-text">
													<h3>Your personal matchmaker</h3>
													<div class="name-matchmaker">'.$match_fio[0].'</div>
													<div class="phone-matchmaker"><i class="fa fa-phone" aria-hidden="true"></i>'.$phone_match.'</div>
													<div class="work-our-matchmaker">
														<div class="title">Working hours</div>
														<div class="hour">'.$time_match.'</div>
													</div>
													<a href="./chat_matchmaker.php" class="button-matchmaker">Write questions</a>
												</div>
												<img src="assets/images/matchmaker.jpg" alt="Matchmaker" class="mr-1">
											</div>
									');
								}
							?>

                        

                        </div>
                        <div class="col-md-7">

                            <div class="row">
                                <div class="col-md-12">
                                    <div class="count-matchmaker">
                                        <a id="popoverData" class="btn" data-content="Matchmaker set this number as an indicator of your compatibility with this girl." data-placement="bottom" data-toggle="popover" data-trigger="hover">
                                            <span><? echo $conformity; ?></span>
                                            <i class="fa fa-heart" aria-hidden="true"></i>
                                        </a>
                                    </div>

                                    <ul class="girl-name-id">
                                        <li class="name"><? echo $girl_first_name; ?></li>
                                        <li class="id">id :<? echo $girl_id; ?></li>
                                    </ul>
                                </div>
                            </div>

                            <div class="girl-tab-info">
                                <ul class="nav nav-tabs" id="myTab" role="tablist">
                                    <li class="nav-item">
                                        <a class="nav-link active" id="about-tab" data-toggle="tab" href="#about" role="tab" aria-selected="true">About me</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" id="profile-tab" data-toggle="tab" href="#charecter" role="tab"  aria-selected="false">My charecter</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" id="contact-tab" data-toggle="tab" href="#looking" role="tab"  aria-selected="false">Looking for a man</a>
                                    </li>
                                </ul>
                                <div class="tab-content" id="myTabContent">
                                    <div class="tab-pane fade show active" id="about" role="tabpanel">
                                       <div class="row">
                                        <div class="col-md-6">
                                            <ul>
                                                <li>
                                                    <p class="title">Birthday</p>
                                                    <p class="value"><? echo $girl_birthday; ?></p>
                                                </li>
                                                <li>
                                                    <p class="title">Height</p>
                                                    <p class="value"><? echo $question3; ?> sm</p>
                                                </li>
                                                <li>
                                                    <p class="title">Weight</p>
                                                    <p class="value"><? echo $question4; ?> kg</p>
                                                </li>
                                                <li>
                                                    <p class="title">Body type</p>
                                                    <p class="value"><? echo $question5; ?></p>
                                                <li>
                                                    <p class="title">Eye color</p>
                                                    <p class="value"><? echo $question6; ?></p>
                                                </li>
                                                <li>
                                                    <p class="title">Hair color</p>
                                                    <p class="value"><? echo $question7; ?></p>
                                                </li>
                                                <li>
                                                    <p class="title">Attitude to smoking, alcogol, drugs</p>
                                                    <p class="value"><? echo $question9; ?></p>
                                                </li>
                                            </ul>
                                        </div>
                                        <div class="col-md-6">
                                            <ul>
                                                <li>
                                                    <p class="title">Nationality</p>
                                                    <p class="value"><? echo $question1; ?></p>
                                                </li>
                                                <li>
                                                    <p class="title">City</p>
                                                    <p class="value"><? echo $girl_city; ?></p>
                                                </li>
                                                <li>
                                                    <p class="title">Religion</p>
                                                    <p class="value"><? echo $question2; ?></p>
                                                </li>
                                                <li>
                                                    <p class="title">Education</p>
                                                    <p class="value"><? echo $question8; ?></p>
                                                </li>
                                                <li>
                                                    <p class="title">Ocupation</p>
                                                    <p class="value"><? echo $question17; ?></p>
                                                <li>
                                                    <p class="title">Matirial status</p>
                                                    <p class="value"><? echo $question10; ?></p>
                                                </li>
                                            </ul>
                                        </div>
                                       </div>
                                    </div>

                                    <div class="tab-pane fade" id="charecter" role="tabpanel">
                                        <ul>
                                            <li>
                                                <p class="title">What languages can you speak?</p>
                                                <p class="value"><? if($question12 == "" ) { $question12 = "-"; } echo $question12; ?></p>
                                            </li>
                                            <li>
                                                <p class="title">What is your native language?</p>
                                                <p class="value"><? if($question11 == "" ) { $question11 = "-"; } echo $question11; ?></p>
                                            </li>
                                            <li>
                                                <p class="title">Have children</p>
                                                <p class="value"><? if($question13 == "" ) { $question13 = "-"; } echo $question13; ?></p>
                                            </li>
                                            <li>
                                                <p class="title">My character traits</p>
                                                <p class="value"><? if($question14 == "" ) { $question14 = "-"; } echo $question14; ?></p>
                                            <li>
                                                <p class="title">What do I expect from the search here?</p>
                                                <p class="value"><? if($question15 == "" ) { $question15 = "-"; } echo $question15; ?></p>
                                            </li>
                                            <li>
                                                <p class="title">Profession</p>
                                                <p class="value"><? if($question16 == "" ) { $question16 = "-"; } echo $question16; ?></p>
                                            </li>
                                            <li>
                                                <p class="title">Occupation</p>
                                                <p class="value"><? if($question17 == "" ) { $question17 = "-"; } echo $question17; ?></p>
                                            </li>
                                            <li>
                                                <p class="title">What countries I visited</p>
                                                <p class="value"><? if($question18 == "" ) { $question18 = "-"; } echo $question18; ?></p>
                                            </li>
                                            <li>
                                                <p class="title">What countries I'd like to visit</p>
                                                <p class="value"><? if($question19 == "" ) { $question19 = "-"; } echo $question19; ?></p>
                                            </li>
                                            <li>
                                                <p class="title">Brief information about me, my lifestyle, my likes and dislikes</p>
                                                <p class="value"><? if($question20 == "" ) { $question20 = "-"; } echo $question20; ?></p>
                                            </li>
                                            <li>
                                                <p class="title">Want children in new relation?</p>
                                                <p class="value"><? if($question22 == "" ) { $question22 = "-"; } echo $question22; ?></p>
                                            </li>
                                            <li>
                                                <p class="title">Hobbies and interests</p>
                                                <p class="value"><? if($question21 == "" ) { $question21 = "-"; } echo $question21; ?></p>
                                            </li>
                                            <li>
                                                <p class="title">What country I'd  like to meet my man from? </p>
                                                <p class="value"><? if($question23 == "" ) { $question23 = "-"; } echo $question23; ?></p>
                                            </li>
                                            <li>
                                                <p class="title">My perfect morning (you are a night owl or an early bird?)</p>
                                                <p class="value"><? if($question24 == "" ) { $question24 = "-"; } echo $question24; ?></p>
                                            </li>
                                            <li>
                                                <p class="title">Attitude to pets</p>
                                                <p class="value"><? if($question26 == "" ) { $question26 = "-"; } echo $question26; ?></p>
                                            </li>
                                            <li>
                                                <p class="title">What could I forgive and what cannot?</p>
                                                <p class="value"><? if($question27 == "" ) { $question27 = "-"; } echo $question27; ?></p>
                                            </li>
                                            <li>
                                                <p class="title">Why I decided to choose online dating site for my search?</p>
                                                <p class="value"><? if($question28 == "" ) { $question28 = "-"; } echo $question28; ?></p>
                                            </li>
                                            <li>
                                                <p class="title">Why I decided to choose online dating site for my search?</p>
                                                <p class="value"><? if($question29 == "" ) { $question29 = "-"; } echo $question29; ?></p>
                                            </li>
                                        </ul>
                                    </div>

                                    <div class="tab-pane fade" id="looking" role="tabpanel">
										<ul>
											<li>
                                                <p class="title">Age range</p>
                                                <p class="value"><? if($question30 == "" ) { $question30 = "-"; } echo $question30; ?></p>
                                            </li>
											<li>
                                                <p class="title">Country</p>
                                                <p class="value"><? if($question31 == "" ) { $question31 = "-"; } echo $question31; ?></p>
                                            </li>
											<li>
                                                <p class="title">Height</p>
                                                <p class="value"><? if($question32 == "" ) { $question32 = "-"; } echo $question32; ?></p>
                                            </li>
											<li>
                                                <p class="title">Weight</p>
                                                <p class="value"><? if($question33 == "" ) { $question33 = "-"; } echo $question33; ?></p>
                                            </li>
											<li>
                                                <p class="title">Eye color</p>
                                                <p class="value"><? if($question34 == "" ) { $question34 = "-"; } echo $question34; ?></p>
                                            </li>
											<li>
                                                <p class="title">Hair color</p>
                                                <p class="value"><? if($question35 == "" ) { $question35 = "-"; } echo $question35; ?></p>
                                            </li>
											<li>
                                                <p class="title">Nationality</p>
                                                <p class="value"><? if($question36 == "" ) { $question36 = "-"; } echo $question36; ?></p>
                                            </li>
											<li>
                                                <p class="title">Religion</p>
                                                <p class="value"><? if($question37 == "" ) { $question37 = "-"; } echo $question37; ?></p>
                                            </li>
											<li>
                                                <p class="title">Have children</p>
                                                <p class="value"><? if($question38 == "" ) { $question38 = "-"; } echo $question38; ?></p>
                                            </li>
											<li>
                                                <p class="title">Desired traits of character in a man</p>
                                                <p class="value"><? if($question39 == "" ) { $question39 = "-"; } echo $question39; ?></p>
                                            </li>
											<li>
                                                <p class="title">Character traits that you can not be tolerate with</p>
                                                <p class="value"><? if($question40 == "" ) { $question40 = "-"; } echo $question40; ?></p>
                                            </li>
											<li>
                                                <p class="title">Do you want the man to know your native language or another language in which you can communicate?</p>
                                                <p class="value"><? if($question41 == "" ) { $question41 = "-"; } echo $question41; ?></p>
                                            </li>
											<li>
                                                <p class="title">A man should prefer an active or passive rest?</p>
                                                <p class="value"><? if($question42 == "" ) { $question42 = "-"; } echo $question42; ?></p>
                                            </li>
											<li>
                                                <p class="title">Describe the man you would like to meet on our website. What is most important for you?</p>
                                                <p class="value"><? if($question43 == "" ) { $question43 = "-"; } echo $question43; ?></p>
                                            </li>
										</ul>
                                    </div>

                                </div>
                            </div>
                            <div class="button-area">
                                <ul>
                                    <li>
                                        <a href="./send_email.php?girl_id=<? echo $girl_id; ?>">
                                            <span class="icon"><i class="fa fa-envelope" aria-hidden="true"></i></span>
                                            <p>Send messages</p>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="./temp_msg.php">
                                            <span class="icon"><i class="fa fa-gift" aria-hidden="true"></i></span>
                                            <p>Send gifts</p>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="./temp_msg.php">
                                            <span class="icon"><i class="fa fa-skype" aria-hidden="true"></i></span>
                                            <p>Skype conference</p>
                                        </a>
                                    </li>
                                </ul>
                            </div>
                            <div class="button-area-second">
                                <div class="row">
									<? if($status_ask > 0) { echo(' <div class="col-md-12"><button class="girl-info-question" data-toggle="modal" data-target="#firstQuestion"><i class="fa fa-question" aria-hidden="true"></i>Ask me your question</button></div>'); }?>
                
                                    <div class="col-md-6"><button class="girl-info-dreams" data-toggle="collapse" href="#girl-info-dreams"><i class="fa fa-chain-broken" aria-hidden="true"></i>My dreams</button></div>
                                    <div class="col-md-6"><button class="girl-info-meet" data-toggle="collapse" href="#girl-info-meet"><i class="fa fa-clock-o" aria-hidden="true"></i>How to meet this lady</button></div>

                                    <div class="collapse col-md-12" id="girl-info-dreams">
                                        <div class="card card-body">
											<? echo $girl_dreams; ?>
                                        </div>
                                    </div>

                                    <div class="collapse col-md-12" id="girl-info-meet">
                                        <div class="card card-body">
                                           <?  echo $girl_meeting; ?>
                                        </div>
                                    </div>

                                </div>
								<br>
								<p style="color: #696969; font-size:10pt;">* All information posted about the girl on this page was checked by the site's service on the reliability. We also confirm that the girl in real life looks exactly like on the video and photo  located on this page</p>
                            </div>
                        </div>

                     </div>
            </div>
			<!-- Main Page Content (end)-->
        </div>
    </div>
</div>

<? require "footer.php";?>

<!-- Modal -->
    <div class="modal fade girl-question-modal" id="firstQuestion" tabindex="-1" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">

                <div class="modal-header">
                    <h5 class="modal-title">
                        In this window you can ask any questions to the 
						girl <? echo $girl_first_name; ?> ID: <? echo $girl_id; ?> 
						from the list which below or to write to your matchmaker 
						if you want to ask another question
                    </h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>

                <form action="" method="POST" class="question-for-girl">
                    <div class="modal-body">
					
                        
						<?
							if($ask1 <> "")
							{
								echo('
										<div class="form-check">
											<input type="checkbox" id="checkbox1" class="form-check-input" name="ask1" value="1">
											<label class="form-check-label" for="checkbox1">What kind of a child were you? A hooligan or a quiet girl?</label>
										</div>
									');
							}
							
							if($ask2 <> "")
							{
								echo('
										<div class="form-check">
											<input type="checkbox" id="checkbox2" class="form-check-input" name="ask2" value="1">
											<label class="form-check-label" for="checkbox2">What do you choose: Spontaneity or stability?</label>
										</div>
									');
							}
							
							if($ask3 <> "")
							{
								echo('
										<div class="form-check">
											<input type="checkbox" id="checkbox3" class="form-check-input" name="ask3" value="1">
											<label class="form-check-label" for="checkbox3">What mood do you usually have in the morning?</label>
										</div>
									');
							}
							
							if($ask4 <> "")
							{
								echo('
										<div class="form-check">
											<input type="checkbox" id="checkbox4" class="form-check-input" name="ask4" value="1">
											<label class="form-check-label" for="checkbox4">Do you want to learn to dance tango, waltz or hip-hop?</label>
										</div>
									');
							}
							
							if($ask5 <> "")
							{
								echo('
										<div class="form-check">
											<input type="checkbox" id="checkbox5" class="form-check-input" name="ask5" value="1">
											<label class="form-check-label" for="checkbox5">What the most bright moment did you have in life?</label>
										</div>
									');
							}
							
							if($ask6 <> "")
							{
								echo('
										<div class="form-check">
											<input type="checkbox" id="checkbox6" class="form-check-input" name="ask6" value="1">
											<label class="form-check-label" for="checkbox6">Do you want to learn some foreign language?</label>
										</div>
									');
							}
							
							if($ask7 <> "")
							{
								echo('
										<div class="form-check">
											<input type="checkbox" id="checkbox7" class="form-check-input" name="ask7" value="1">
											<label class="form-check-label" for="checkbox7">What is your favorit flower?</label>
										</div>
									');
							}
							
							if($ask8 <> "")
							{
								echo('
										<div class="form-check">
											<input type="checkbox" id="checkbox8" class="form-check-input" name="ask8" value="1">
											<label class="form-check-label" for="checkbox8">Guess what attracts me in you the most?</label>
										</div>
									');
							}
							
							if($ask9 <> "")
							{
								echo('
										<div class="form-check">
											<input type="checkbox" id="checkbox9" class="form-check-input" name="ask9" value="1">
											<label class="form-check-label" for="checkbox9">Are you a vegetarian?</label>
										</div>
									');
							}
							
							if($ask10 <> "")
							{
								echo('
										<div class="form-check">
											<input type="checkbox" id="checkbox10" class="form-check-input" name="ask10" value="1">
											<label class="form-check-label" for="checkbox10">Is the glass half empty or half full?</label>
										</div>
									');
							}
							
							if($ask11 <> "")
							{
								echo('
										<div class="form-check">
											<input type="checkbox" id="checkbox11" class="form-check-input" name="ask11" value="1">
											<label class="form-check-label" for="checkbox11">What kind of humor do you like the most?</label>
										</div>
									');
							}
							
							if($ask12 <> "")
							{
								echo('
										<div class="form-check">
											<input type="checkbox" id="checkbox12" class="form-check-input" name="ask12" value="1">
											<label class="form-check-label" for="checkbox12">Do you like travelling?</label>
										</div>
									');
							}
							
							if($ask13 <> "")
							{
								echo('
										<div class="form-check">
											<input type="checkbox" id="checkbox13" class="form-check-input" name="ask13" value="1">
											<label class="form-check-label" for="checkbox13">Can you cook?</label>
										</div>
									');
							}
							
							if($ask14 <> "")
							{
								echo('
										<div class="form-check">
											<input type="checkbox" id="checkbox14" class="form-check-input" name="ask14" value="1">
											<label class="form-check-label" for="checkbox14">What do you value in a man?</label>
										</div>
									');
							}
							
							if($ask15 <> "")
							{
								echo('
										<div class="form-check">
											<input type="checkbox" id="checkbox15" class="form-check-input" name="ask15" value="1">
											<label class="form-check-label" for="checkbox15">What the main trait would you identified in yourself?</label>
										</div>
									');
							}
							
							if($ask16 <> "")
							{
								echo('
										<div class="form-check">
											<input type="checkbox" id="checkbox16" class="form-check-input" name="ask16" value="1">
											<label class="form-check-label" for="checkbox16">What brings you pleasure?</label>
										</div>
									');
							}
							
							if($ask17 <> "")
							{
								echo('
										<div class="form-check">
											<input type="checkbox" id="checkbox17" class="form-check-input" name="ask17" value="1">
											<label class="form-check-label" for="checkbox17">If there were 25 hours in the day, what would you do in extra hour?</label>
										</div>
									');
							}
							
							if($ask18 <> "")
							{
								echo('
										<div class="form-check">
											<input type="checkbox" id="checkbox18" class="form-check-input" name="ask18" value="1">
											<label class="form-check-label" for="checkbox18">How much does someone else\'s opinion influence you?</label>
										</div>
									');
							}
							
							if($ask19 <> "")
							{
								echo('
										<div class="form-check">
											<input type="checkbox" id="checkbox19" class="form-check-input" name="ask19" value="1">
											<label class="form-check-label" for="checkbox19">What should every person try?</label>
										</div>
									');
							}
							
							if($ask20 <> "")
							{
								echo('
										<div class="form-check">
											<input type="checkbox" id="checkbox20" class="form-check-input" name="ask20" value="1">
											<label class="form-check-label" for="checkbox20">What talent would you like to have?</label>
										</div>
									');
							}
							
							if($ask21 <> "")
							{
								echo('
										<div class="form-check">
											<input type="checkbox" id="checkbox21" class="form-check-input" name="ask21" value="1">
											<label class="form-check-label" for="checkbox21">Being in what place, do you feel maximum comfort?</label>
										</div>
									');
							}
							
							if($ask22 <> "")
							{
								echo('
										<div class="form-check">
											<input type="checkbox" id="checkbox22" class="form-check-input" name="ask22" value="1">
											<label class="form-check-label" for="checkbox22">Do you speak or listen more?</label>
										</div>
									');
							}
							
							if($ask23 <> "")
							{
								echo('
										<div class="form-check">
											<input type="checkbox" id="checkbox23" class="form-check-input" name="ask23" value="1">
											<label class="form-check-label" for="checkbox23">Do you likee unexpected things and surprises?</label>
										</div>
									');
							}
							
							if($ask24 <> "")
							{
								echo('
										<div class="form-check">
											<input type="checkbox" id="checkbox24" class="form-check-input" name="ask24" value="1">
											<label class="form-check-label" for="checkbox24">How do you think what a person needs to be happy on the fullest?</label>
										</div>
									');
							}
							
							if($ask25 <> "")
							{
								echo('
										<div class="form-check">
											<input type="checkbox" id="checkbox25" class="form-check-input" name="ask25" value="1">
											<label class="form-check-label" for="checkbox25">In your opinion, what part of the day is the most romanrtic?</label>
										</div>
									');
							}
							
							if($ask26 <> "")
							{
								echo('
										<div class="form-check">
											<input type="checkbox" id="checkbox26" class="form-check-input" name="ask26" value="1">
											<label class="form-check-label" for="checkbox26">Do you like rain?</label>
										</div>
									');
							}
							
							if($ask27 <> "")
							{
								echo('
										<div class="form-check">
											<input type="checkbox" id="checkbox27" class="form-check-input" name="ask27" value="1">
											<label class="form-check-label" for="checkbox27">What do you like to do when there\'s a thunderstorm outside the window?</label>
										</div>
									');
							}
							
							if($ask28 <> "")
							{
								echo('
										<div class="form-check">
											<input type="checkbox" id="checkbox28" class="form-check-input" name="ask28" value="1">
											<label class="form-check-label" for="checkbox28">How do you feel about very expensive and very cheap gifts?</label>
										</div>
									');
							}
							
							if($ask29 <> "")
							{
								echo('
										<div class="form-check">
											<input type="checkbox" id="checkbox29" class="form-check-input" name="ask29" value="1">
											<label class="form-check-label" for="checkbox29">How long have you been on a date? Do you want to refresh your memories?</label>
										</div>
									');
							}
							
							if($ask30 <> "")
							{
								echo('
										<div class="form-check">
											<input type="checkbox" id="checkbox30" class="form-check-input" name="ask30" value="1">
											<label class="form-check-label" for="checkbox30">I would like to invite you for coffee, but I do not know how. Will you help me?</label>
										</div>
									');
							}
						
						?>

                    </div>

                    <div class="modal-footer">
                        <p>
                            Reply to selected question will be delivered
                            to your email address immediately, as a lady already answered
                            on them in private conversation with matchmaker.
                        </p>
                        <button type="submit" class="send-questions">Send</button>
                    </div>
                </form>


            </div>
        </div>
    </div>

    <!-- Site Scripts (start)-->
    <script src="assets/js/jquery.min.js"></script>
    <script src="assets/js/popper.min.js"></script>
    <script src="assets/js/bootstrap.min.js"></script>
    <script src="assets/js/owl.carousel.min.js"></script>
    <script src="assets/js/girl-profile.js"></script>
    <script src="assets/js/custom.js"></script>
    <!-- Site Scripts (end)-->
</body>

</html>