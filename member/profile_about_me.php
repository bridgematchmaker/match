<?
session_start();
isset($_SESSION['email_client']) or die("<script>javascript:window.location='../login.php'</script>");
$page_menu_name = "More about me";
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
		<!--Style Content Page-->
		<link href="assets/css/member.regestration.css" rel="stylesheet" type="text/css">
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
                        <div class="member-profile-page">
                            <div class="member-profile">
                                <h2 class="page-title">More about me</h2>
                                <p class="message-profile-message">Please fill in the details about you so that we can fully search for the profiles of the girls that suit you. This information will be used by the matchmaker for a detailed analysis of your criteria and will not be available to the girls of the site without your knowledge.</p>

                                <form action="./function/profile2add.php" method="POST" class="member-profile-form">
								<input type="hidden" name="user_id" value="<? echo $user_id; ?>">
                                    <div class="form-group">
                                        <label for="experience-family">Do you have experience in family life?</label>
                                        <select name="question17" class="form-control" id="experience-family">    
											<?
												if($question17 <> "")
													{
														echo('<option value="'.$question17.'">'.$question17.'</option>');
													}
												else
													{
														echo('<option value=""></option>');
													}
											?>
                                            <option value="Yes">Yes</option>
                                            <option value="No">No</option>
                                        </select>
                                    </div>
                                    <div class="form-group  mb-4">
                                        <label for="want-children">Do you want children in a new relationship?<span class="required"> *</span></label>
                                        <select name="question18" class="form-control require" id="want-children" required>
                                            <?
												if($question18 <> "")
													{
														echo('<option value="'.$question18.'">'.$question18.'</option>');
													}
												else
													{
														echo('<option value=""></option>');
													}
											?>
                                            <option value="Yes">Yes</option>
                                            <option value="No">No</option>
                                        </select>
                                    </div>

                                    <div class="form-group row">
                                        <h4 class="col-md-12">What’s your interests in…?</h4>
                                        <div class="col-md-4">

                                            <div class="form-check">
                                                <input type="checkbox" id="your-interests1" class="form-check-input" name="question19_1" value="1" <?if (in_array("Watching movies", $question19arr)) { echo('checked'); } ?>/>
                                                <label class="form-check-label" for="your-interests1">Watching movies</label>
                                            </div>

                                            <div class="form-check">
                                                <input type="checkbox" id="your-interests2" class="form-check-input" name="question19_2" value="1" <?if (in_array("Listening to music", $question19arr)) { echo('checked'); } ?>/>
                                                <label class="form-check-label" for="your-interests2">Listening to music</label>
                                            </div>

                                            <div class="form-check">
                                                <input type="checkbox" id="your-interests3" class="form-check-input" name="question19_3" value="1" <?if (in_array("Watching TV", $question19arr)) { echo('checked'); } ?>/>
                                                <label class="form-check-label" for="your-interests3">Watching TV</label>
                                            </div>

                                            <div class="form-check">
                                                <input type="checkbox" id="your-interests4" class="form-check-input" name="question19_4" value="1" <?if (in_array("Reading", $question19arr)) { echo('checked'); } ?>/>
                                                <label class="form-check-label" for="your-interests4">Reading</label>
                                            </div>

                                        </div>

                                        <div class="col-md-4">

                                            <div class="form-check">
                                                <input type="checkbox" id="your-interests5" class="form-check-input" name="question19_5" value="1" <?if (in_array("Parties", $question19arr)) { echo('checked'); } ?>/>
                                                <label class="form-check-label" for="your-interests5">Parties</label>
                                            </div>

                                            <div class="form-check">
                                                <input type="checkbox" id="your-interests6" class="form-check-input" name="question19_6" value="1" <?if (in_array("Traveling", $question19arr)) { echo('checked'); } ?>/>
                                                <label class="form-check-label" for="your-interests6">Traveling</label>
                                            </div>

                                            <div class="form-check">
                                                <input type="checkbox" id="your-interests7" class="form-check-input" name="question19_7" value="1" <?if (in_array("Shopping", $question19arr)) { echo('checked'); } ?>/>
                                                <label class="form-check-label" for="your-interests7">Shopping</label>
                                            </div>

                                            <div class="form-check">
                                                <input type="checkbox" id="your-interests8" class="form-check-input" name="question19_8" value="1" <?if (in_array("Talking with friends", $question19arr)) { echo('checked'); } ?>/>
                                                <label class="form-check-label" for="your-interests8">Talking with friends</label>
                                            </div>

                                        </div>

                                        <div class="col-md-4">

                                            <div class="form-check">
                                                <input type="checkbox" id="your-interests9" class="form-check-input" name="question19_9" value="1" <?if (in_array("Religious Community", $question19arr)) { echo('checked'); } ?>/>
                                                <label class="form-check-label" for="your-interests9">Religious Community</label>
                                            </div>

                                            <div class="form-check">
                                                <input type="checkbox" id="your-interests10" class="form-check-input" name="question19_10" value="1" <?if (in_array("Conversation", $question19arr)) { echo('checked'); } ?>/>
                                                <label class="form-check-label" for="your-interests10">Conversation</label>
                                            </div>

                                            <div class="form-check">
                                                <input type="checkbox" id="your-interests11" class="form-check-input" name="question19_11" value="1" <?if (in_array("Hosting / Entertaining", $question19arr)) { echo('checked'); } ?>/>
                                                <label class="form-check-label" for="your-interests11">Hosting / Entertaining</label>
                                            </div>

                                        </div>
                                    </div>

                                    <div class="form-group">
                                        <label for="attitude">Attitude to pets</label>
                                        <input type="text" class="form-control" id="attitude" name="question20" value="<? echo $question20; ?>">
                                    </div>
                                    <div class="form-group">
                                        <label for="lifestyle" required>Write briefly about yourself, about your lifestyle, your likes and dislikes<span class="required"> *</span></label>
                                        <input type="text" class="form-control require" id="lifestyle" name="question21" value="<? echo $question21; ?>">
                                    </div>
                                    <div class="form-group">
                                    <label for="perfect-morning">Describe your perfect morning (you are a night owl or an early bird?)</label>
                                    <input type="text" class="form-control" id="perfect-morning" name="question22" value="<? echo $question22; ?>">
                                </div>
                                <div class="form-group">
                                    <label for="best-friends-describe">If your best friends will have to choose four words to describe you, which four words will they choose?</label>
                                    <input type="text" class="form-control" id="best-friends-describe" name="question23" value="<? echo $question23; ?>">
                                </div>

                                <div class="form-group row">
                                    <h4 class="col-md-12">Choose which one describes you well?</h4>
                                    <div class="col-md-6">
                                        <div class="form-check">
                                            <input type="checkbox" id="describes-well1" class="form-check-input" name="question24_1" value="1" <?if (in_array("I do things according to my plan", $question24arr)) { echo('checked'); } ?>/>
                                            <label class="form-check-label" for="describes-well1">I do things according to my plan</label>
                                        </div>
                                        <div class="form-check">
                                            <input type="checkbox" id="describes-well2" class="form-check-input" name="question24_2" value="1" <?if (in_array("I take time out for others", $question24arr)) { echo('checked'); } ?>/>
                                            <label class="form-check-label" for="describes-well2">I take time out for others</label>
                                        </div>
                                        <div class="form-check">
                                            <input type="checkbox" id="describes-well3" class="form-check-input" name="question24_3" value="1" <?if (in_array("I seek adventure", $question24arr)) { echo('checked'); } ?>/>
                                            <label class="form-check-label" for="describes-well3">I seek adventure</label>
                                        </div>
                                        <div class="form-check">
                                            <input type="checkbox" id="describes-well4" class="form-check-input" name="question24_4" value="1" <?if (in_array("I desire sexual activity", $question24arr)) { echo('checked'); } ?>/>
                                            <label class="form-check-label" for="describes-well4">I desire sexual activity</label>
                                        </div>
                                    </div>

                                    <div class="col-md-6">
                                        <div class="form-check">
                                            <input type="checkbox" id="describes-well5" class="form-check-input" name="question24_5" value="1" <?if (in_array("I think it is important to improve myself", $question24arr)) { echo('checked'); } ?>/>
                                            <label class="form-check-label" for="describes-well5">I think it is important to improve myself</label>
                                        </div>
                                        <div class="form-check">
                                            <input type="checkbox" id="describes-well6" class="form-check-input" name="question24_6" value="1" <?if (in_array("I care about the physical shape I am in", $question24arr)) { echo('checked'); } ?>/>
                                            <label class="form-check-label" for="describes-well6">I care about the physical shape I'm in</label>
                                        </div>
                                        <div class="form-check">
                                            <input type="checkbox" id="describes-well7" class="form-check-input" name="question24_7" value="1" <?if (in_array("I feel better when I am around other people", $question24arr)) { echo('checked'); } ?>/>
                                            <label class="form-check-label" for="describes-well7">I feel better when I am around other people</label>
                                        </div>
                                        <div class="form-check">
                                            <input type="checkbox" id="describes-well8" class="form-check-input" name="question24_8" value="1" <?if (in_array("I get angry easily", $question24arr)) { echo('checked'); } ?>/>
                                            <label class="form-check-label" for="describes-well8">I get angry easily</label>
                                        </div>
                                    </div>
                                </div>

                                    <div class="form-group skilled row">
                                            <h4 class="col-md-12">How skilled you are in the following things? </h4>
                                            <div class="col-md-6">
                                                <div class="form-check">
                                                    <input type="checkbox" id="skilled1" class="form-check-input" name="question25_1" value="1" <?if (in_array("I Creating romance in a relationship", $question25arr)) { echo('checked'); } ?>/>
                                                    <label class="form-check-label" for="skilled1">I Creating romance in a relationship</label>
                                                </div>
                                                <div class="form-check">
                                                    <input type="checkbox" id="skilled2" class="form-check-input" name="question25_2" value="1" <?if (in_array("Keeping physically fit", $question25arr)) { echo('checked'); } ?>/>
                                                    <label class="form-check-label" for="skilled2">Keeping physically fit</label>
                                                </div>
                                            </div>
                                            <div class="col-md-6">
                                                <div class="form-check">
                                                    <input type="checkbox" id="skilled3" class="form-check-input" name="question25_3" value="1" <?if (in_array("Finding and taking on challenging activities", $question25arr)) { echo('checked'); } ?>/>
                                                    <label class="form-check-label" for="skilled3">Finding and taking on challenging activities</label>
                                                </div>
                                                <div class="form-check">
                                                    <input type="checkbox" id="skilled4" class="form-check-input" name="question25_4" value="1" <?if (in_array("Finding compromise in relationship", $question25arr)) { echo('checked'); } ?>/>
                                                    <label class="form-check-label" for="skilled4">Finding compromise in relationship</label>
                                                </div>
                                            </div>

                                    </div>

                                    <div class="form-group row list-agree-disagree">

                                        <h4 class="col-md-12">What things from the list you agree or disagree with…?</h4>
                                        <div class="col-md-12">
                                            <div class="form-check">
                                                <input type="checkbox" id="agree-disagree1" class="form-check-input" name="question26_1" value="1" <?if (in_array("When I get romantically involved, I tell about everything to my partner", $question26arr)) { echo('checked'); } ?>/>
                                                <label class="form-check-label" for="agree-disagree1">When I get romantically involved, I tell about everything to my partner</label>
                                            </div>
                                            <div class="form-check">
                                                <input type="checkbox" id="agree-disagree2" class="form-check-input" name="question26_2" value="1" <?if (in_array("A serious relationship needs to be monogamous", $question26arr)) { echo('checked'); } ?>/>
                                                <label class="form-check-label" for="agree-disagree2">A serious relationship needs to be monogamous</label>
                                            </div>
                                            <div class="form-check">
                                                <input type="checkbox" id="agree-disagree3" class="form-check-input" name="question26_3" value="1" <?if (in_array("I know I can always count on the people who are closest to me", $question26arr)) { echo('checked'); } ?>/>
                                                <label class="form-check-label" for="agree-disagree3">I know I can always count on the people who are closest to me</label>
                                            </div>
                                            <div class="form-check">
                                                <input type="checkbox" id="agree-disagree4" class="form-check-input" name="question26_4" value="1" <?if (in_array("I don't need to have close relationships to be happy", $question26arr)) { echo('checked'); } ?>/>
                                                <label class="form-check-label" for="agree-disagree4">I don't need to have close relationships to be happy</label>
                                            </div>
                                            <div class="form-check">
                                                <input type="checkbox" id="agree-disagree5" class="form-check-input" name="question26_5" value="1" <?if (in_array("To my mind being monogamous helps build trust in a romantic relationship", $question26arr)) { echo('checked'); } ?>/>
                                                <label class="form-check-label" for="agree-disagree5">To my mind being monogamous helps build trust in a romantic relationship</label>
                                            </div>
                                            <div class="form-check">
                                                <input type="checkbox" id="agree-disagree6" class="form-check-input" name="question26_6" value="1" <?if (in_array("People often let me down if I depend on them", $question26arr)) { echo('checked'); } ?>/>
                                                <label class="form-check-label" for="agree-disagree6">People often let me down if I depend on them</label>
                                            </div>
                                            <div class="form-check">
                                                <input type="checkbox" id="agree-disagree7" class="form-check-input" name="question26_7" value="1" <?if (in_array("It is important for me to have close friends in my life", $question26arr)) { echo('checked'); } ?>/>
                                                <label class="form-check-label" for="agree-disagree7">It's important for me to have close friends in my life</label>
                                            </div>
                                            <div class="form-check">
                                                <input type="checkbox" id="agree-disagree8" class="form-check-input" name="question26_8" value="1" <?if (in_array("Being monogamous is one of benefits of being in a successful relationship", $question26arr)) { echo('checked'); } ?>/>
                                                <label class="form-check-label" for="agree-disagree8">Being monogamous is one of benefits of being in a successful relationship</label>
                                            </div>
                                            <div class="form-check">
                                                <input type="checkbox" id="agree-disagree9" class="form-check-input" name="question26_9" value="1" <?if (in_array("I sometimes find it difficult to trust people I get romantic relation", $question26arr)) { echo('checked'); } ?>/>
                                                <label class="form-check-label" for="agree-disagree9">I sometimes find it difficult to trust people I get romantic relation</label>
                                            </div>
                                            <div class="form-check">
                                                <input type="checkbox" id="agree-disagree10" class="form-check-input" name="question26_10" value="1" <?if (in_array("I find it easy to get emotionally close to people", $question26arr)) { echo('checked'); } ?>/>
                                                <label class="form-check-label" for="agree-disagree10">I find it easy to get emotionally close to people</label>
                                            </div>
                                        </div>

                                    </div>
                                    <div class="form-group">
                                        <label for="desired future">Describe your desired future (goals, lifestyle, relationships in the family)</label>
										<textarea rows="4" name="question27" class="form-control" id="desired future"><? echo $question27; ?></textarea>
                                    </div>
                                    <div class="form-group">
                                        <label for="forgive-can-not">What could you forgive and what can not? <span class="required"> *</span></label>
                                        <input name="question28" type="text" class="form-control  require" id="forgive-can-not" value="<? echo $question28; ?>" required>
                                    </div>

                                    <div class="form-group">
                                        <label for="choose-online-dating">Why did you decide to choose an online dating site for your search?</label>
                                        <input name="question29" type="text" class="form-control" id="choose-online-dating" value="<? echo $question29; ?>">
                                    </div>

                                    <div class="form-group">
                                        <label for="partner-yet">Why do you think that you haven’t found a suitable partner yet?</label>
                                        <input name="question30" type="text" class="form-control" id="partner-yet" value="<? echo $question30; ?>">
                                    </div>

                                    <div class="form-group">
                                        <label for="feelings">In your opinion after how many dates a man can open his feelings to a girl?</label>
                                        <input name="question31" type="text" class="form-control" id="feelings" value="<? echo $question31; ?>">
                                    </div>

                                    <div class="search-for-lady row">
                                        <h3 class="title-lady-search col-md-12">Search criteria for your lady</h3>

                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label for="age" required>Age (date of birth) <span class="required">*</span></label>
                                                <select name="question32" class="form-control require" id="age">
													<?
														if($question32 <> "")
															{
																echo('<option value="'.$question32.'">'.$question32.'</option>');
															}
														else
															{
																echo('<option value=""></option>');
															}
													?>
                                                    <option value="18-25">18-25</option>
                                                    <option value="26-35">26-35</option>
													<option value="36-45">36-45</option>
													<option value="46-55">46-55</option>
                                                </select>
                                            </div>
                                        </div>

                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label for="hair-color">Hair color<span class="required">*</span></label>
                                                <select name="question36" class="form-control require" id="hair-color" required>
                                                    <?
														if($question36 <> "")
															{
																echo('<option value="'.$question36.'">'.$question36.'</option>');
															}
														else
															{
																echo('<option value=""></option>');
															}
													?>
                                                    <option value="Black">Black</option>
													<option value="Blond">Blond</option>
													<option value="Light-brown">Light-brown</option>
													<option value="Red">Red</option>
													<option value="Chestnut">Chestnut</option>
													<option value="Does not matter">Does not matter</option>
                                                </select>
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label for="height">Height <span class="required">*</span></label>
                                                <select name="question33" class="form-control require" id="height"  required>
                                                    <?
														if($question33 <> "")
															{
																echo('<option value="'.$question33.'">'.$question33.'</option>');
															}
														else
															{
																echo('<option value=""></option>');
															}
													?>
                                                    <option value="to 4 feet 0 inches (121.92 cm)">to 4 feet 0 inches (121.92 cm)</option>
                                                    <option value="4 feet 0 inches (121.92 cm) - 5 feet 0 inches (152.40 cm)">4 feet 0 inches (121.92 cm) - 5 feet 0 inches (152.40 cm)</option>
													<option value="5 feet 0 inches (152.40 cm) - 5 feet 8 inches (172.72 cm)">5 feet 0 inches (152.40 cm) - 5 feet 8 inches (172.72 cm)</option>
													<option value="5 feet 8 inches (172.72 cm) - 5 feet 11 inches (180.34 cm)">5 feet 8 inches (172.72 cm) - 5 feet 11 inches (180.34 cm)</option>
													<option value="5 feet 11 inches (180.34 cm) or more">5 feet 11 inches (180.34 cm) or more</option>
													<option value="Doesn't matter">Doesn't matter</option>
                                                </select>
                                            </div>
                                        </div>

                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label for="nationality">Nationality</label>
                                                <select name="question37" class="form-control" id="nationality">
                                                    <?
														if($question37 <> "")
															{
																echo('<option value="'.$question37.'">'.$question37.'</option>');
															}
														else
															{
																echo('<option value=""></option>');
															}
													?>
                                                    <option value="Ukrainian">Ukrainian</option>
                                                    <option value="Russian">Russian</option>
													<option value="Belarus">Belarus</option>
                                                    <option value="Moldova">Moldova</option>
													<option value="Does not matter">Does not matter</option>
                                                </select>
                                            </div>
                                        </div>

                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label for="weight">Weight <span class="required">*</span></label>
                                                <select name="question34" class="form-control require" id="weight" required>
                                                    <?
														if($question34 <> "")
															{
																echo('<option value="'.$question34.'">'.$question34.'</option>');
															}
														else
															{
																echo('<option value=""></option>');
															}
													?>
                                                    <option value="130 lbs (59 kg) -  150 lbs (68 kg)">130 lbs (59 kg) -  150 lbs (68 kg)</option>
                                                    <option value="150 lbs (68 kg)- 165 lbs (74.8 kg)">150 lbs (68 kg)- 165 lbs (74.8 kg)</option>
													<option value="165 lbs (74.8 kg)-178 lbs (80.7 kg)">165 lbs (74.8 kg)-178 lbs (80.7 kg)</option>
                                                    <option value="178 lbs (80.7 kg)-186 lbs (84.4 kg)">178 lbs (80.7 kg)-186 lbs (84.4 kg)</option>
													<option value="186 lbs (84.4 kg) and more">186 lbs (84.4 kg) and more</option>
                                                    <option value="Doesn't matter">Doesn't matter</option>
                                                </select>
                                            </div>
                                        </div>

                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label for="have-children">Have children?</label>
                                                <select name="question39" class="form-control" id="have-children" selected>
                                                    <?
														if($question39 <> "")
															{
																echo('<option value="'.$question39.'">'.$question39.'</option>');
															}
														else
															{
																echo('<option value=""></option>');
															}
													?>
                                                    <option value="Yes">Yes</option>
                                                    <option value="No">No</option>
													<option value="Doesn't matter">Doesn't matter</option>
                                                </select>
                                            </div>
                                        </div>

                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label for="eye-color">Eye color <span class="required">*</span></label>
                                                <select name="question35" class="form-control require" required id="eye-color" required>
                                                    <?
														if($question35 <> "")
															{
																echo('<option value="'.$question35.'">'.$question35.'</option>');
															}
														else
															{
																echo('<option value=""></option>');
															}
													?>
                                                    <option value="Blue">Blue</option>
													<option value="Brown">Brown</option>
													<option value="Green">Green</option>
													<option value="Grey">Grey</option>
													<option value="Grey-Blue">Grey-Blue</option>
													<option value="Black">Black</option>
													<option value="Doesn't matter">Doesn't matter</option>
                                                </select>
                                            </div>
                                        </div>
										
										<div class="col-md-6">
                                            <div class="form-group">
                                                <label for="religion">Religion <span class="required">*</span></label>
                                                <select name="question38" class="form-control  require" id="religion">
                                                    <?
														if($question38 <> "")
															{
																echo('<option value="'.$question38.'">'.$question38.'</option>');
															}
														else
															{
																echo('<option value=""></option>');
															}
													?>
                                                    <option value="Cristian">Cristian</option>
                                                    <option value="Ateist">Ateist</option>
													<option value="Doesn't matter">Doesn't matter</option>
                                                </select>
                                            </div>
                                        </div>

                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label for="has-kids" required>Will you accept a partner who already has kids? <span class="required">*</span></label>
                                                <input name="question40" type="text" class="form-control require" id="has-kids" value="<? echo $question40; ?>">
                                            </div>
                                        </div>

                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label for="smoking" required>Attitude to smoking, alcohol, drugs <span class="required">*</span></label>
                                                <select name="question42" class="form-control  require" id="smoking" required>
													<?
														if($question42 <> "")
															{
																echo('<option value="'.$question42.'">'.$question42.'</option>');
															}
														else
															{
																echo('<option value=""></option>');
															}
													?>
                                                    <option value="Negative">Negative</option>
                                                    <option value="Nutral">Nutral</option>
													<option value="Positive">Positive</option>
													<option value="Indifferent">Indifferent</option>
                                                </select>
                                            </div>
                                        </div>
										
										  <div class="col-md-6">
                                            <div class="form-group">
                                                <label for="lady-city">Marital status<span class="required">*</span></label>
                                                <select name="question41" class="form-control  require" id="lady-city" required>
                                                    <?
														if($question41 <> "")
															{
																echo('<option value="'.$question41.'">'.$question41.'</option>');
															}
														else
															{
																echo('<option value=""></option>');
															}
													?>
                                                    <option value="Never Married">Never Married</option>
                                                    <option value="Divorced">Divorced</option>
													<option value="Window">Window</option>
													<option value="Seperated">Seperated</option>
                                                </select>
                                            </div>
                                        </div>

                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label for="traits">Desired traits of character in a lady <span class="required">*</span></label>
                                                <input name="question43" type="text" class="form-control require" required id="traits" value="<? echo $question43; ?>">
                                            </div>
                                        </div>
                                        <div class="col-md-12">
                                            <div class="form-group">
                                                <label for="character" required>Character traits that you can not be tolerate with <span class="required">*</span></label>
                                                <input name="question44" type="text" class="form-control require" id="character" value="<? echo $question44; ?>">
                                            </div>
                                        </div>

                                        <div class="col-md-12">
                                            <div class="form-group">
                                                <label for="language">Do you want the lady to know your native language or another language in which you can communicate? </label>
                                                <input name="question45" type="text" class="form-control" id="language" value="<? echo $question45; ?>">
                                            </div>
                                            <div class="form-group">
                                                <label for="prefer">A girl should prefer an active or passive rest?</label>
                                                <input name="question46" type="text" class="form-control" id="prefer" value="<? echo $question46; ?>">
                                            </div>
                                            <div class="form-group">
                                                <label for="describe-lady">Describe the lady you would like to meet on our website. What is most important for you? <span class="required">*</span></label>
												<textarea rows="4" name="question47" class="form-control require" required id="describe-lady"><? echo $question47; ?></textarea>
                                            </div>
                                            <div class="form-group">
                                                <label for="personal-introduction">Your personal introduction letter (3000 characters)</label>
												<textarea rows="4" name="question48" class="form-control" id="personal-introduction"><? echo $question48; ?></textarea>
                                            </div>
                                        </div>
                                    </div>


                                    <div class="messenger-connected  row d-flex align-items-center">
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <label for="phone">What messenger connected to you cell phone? <span class="required">*</span></label>
                                                    <input type="tel" placeholder="<? echo $telefon; ?>" id="phone" class="require" value="<? echo $telefon; ?>" required>
                                                </div>
                                            </div>
                                            <div class="col-md-6">
                                                <div class="form-check">
                                                    <input type="checkbox" id="viber" class="form-check-input" name="question49_1" value="1" <?if (in_array("Viber", $question49arr)) { echo('checked'); } ?>/>
                                                    <label class="form-check-label" for="viber">Viber</label>
                                                </div>
                                                <div class="form-check">
                                                    <input type="checkbox" id="whatsapp" class="form-check-input" name="question49_2" value="1" <?if (in_array("WhatsApp", $question49arr)) { echo('checked'); } ?>/>
                                                    <label class="form-check-label" for="whatsapp">WhatsApp</label>
                                                </div>
                                                <div class="form-check">
                                                    <input type="checkbox" id="telegram" class="form-check-input" name="question49_3" value="1" <?if (in_array("Telegram", $question49arr)) { echo('checked'); } ?>/>
                                                    <label class="form-check-label" for="telegram">Telegram</label>
                                                </div>
                                            </div>
                                    </div>

                                    <div class="col-md-12 save-prifile text-center">
                                        <input type="submit" value="SEND FORM">
                                        <div class="danger-alert">*You have to fill in all required fields!</div>
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
    <script src="assets/js/custom.js"></script>
	<script src="assets/js/validation.registration.form.js"></script>
<!-- Site Scripts (end)-->

</body>

</html>