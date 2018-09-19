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

        <!-- Bootstrap -->
        <link href="assets/css/bootstrap.min.css" rel="stylesheet" type="text/css">
        <!-- Font Awesome -->
        <link href="assets/css/font-awesome.min.css" rel="stylesheet" type="text/css">
        <!-- Owl Carousel -->
        <link href="assets/css/owl.carousel.min.css" rel="stylesheet" type="text/css">
		
		<link href="assets/css/style.personal-matchmaker.css" rel="stylesheet" type="text/css">
        <!-- Favicon -->
        <link rel="icon" href="" type="image/png" />

    </head>

<body>
<?
include("../connect.php");
include("./function/user_bd.php");
include("./function/user_check.php");
require "./header.php";

if($matchmaker_login == "None") 
	{
		echo("<script>javascript:window.location='./index.php'</script>");
	}

switch ($rating_match) 
	{
		case 1:
			$rating_class = "rating-one";
		break;
		
		case 2:
			$rating_class = "rating-two";
		break;
		
		case 3:
			$rating_class = "rating-three";
		break;
		
		case 4:
			$rating_class = "rating-four";
		break;
		
		case 5:
			$rating_class = "rating-five";
		break;
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
                        <h2 class="page-title">
                            <i class="fa fa-home"></i>
                            Personal matchmaker
                        </h2>
                        <h5>
                            Matchmaker- is your professional assistant, site employee who individually helps users (men and women) to find each other.
                        </h5>
                        <p>
                            Matchmaker analyzes your search criteria and compare them  with search criteria of a lady, also analyzing  other information which helps or interfere creating a couple.
                        </p>
                        <p>
                            She attentively analyzes your preferences and also give you  her recommendation  and pay your attention on profiles which remain unnoticed by you.
                        </p>
                        <p>
                            Matchmaker is your guide on a difficult path to your happiness and success in a new relationship. Be prepared to communicate with her at any comfortable time for you and also listen to her recommendations.
                        </p>
                        <p class="text-accent">
                            Attention! Matchmaker is a website employee  and doesn't have a desire to create relation for her.
                            It's only our employee doing her job. Any of your appeals to the matchmaker about the interest in her directly - will be ignored by us.
                        </p>
                        <h4 class="text-accent">
                            Your personal matchmaker
                        </h4>
                        <div class="box-user-info">

                            <div class="row">
                                <div class="col-md-5 col-lg-4">
                                    <figure>
                                        <img width="220" height="220" src="../<? echo $foto_match; ?>" alt="">
                                    </figure>
                                    <h5 class="box-user-name">
										<? echo $name_match; ?>
                                    </h5>
                                    <dl class="info-list">
                                        <dt>
                                            Number of meetings
                                        </dt>
                                        <dd>
                                            <? echo $meetings_match; ?>
                                        </dd>
                                        <dt>
                                            Rating
                                        </dt>
                                        <dd>
                                            <div class="box-user-rating <? echo $rating_class; ?>" >
                                                <i class="fa"></i>
                                                <i class="fa"></i>
                                                <i class="fa"></i>
                                                <i class="fa"></i>
                                                <i class="fa"></i>
                                            </div>
                                        </dd>
                                    </dl>

                                </div>
                                <div class="col-md-7 col-lg-8 mt-4 mt-md-0">
                                    <dl class="info-list">
                                        <dt>
                                            Email
                                        </dt>
                                        <dd>
                                            <a href="mailto:<? echo $email_match; ?>">
                                                <? echo $email_match; ?>
                                            </a>
                                        </dd>
                                        <dt>
                                            Skype
                                        </dt>
                                        <dd>
                                            <? echo $skype_match; ?>
                                        </dd>
                                        <dt>
                                            Age
                                        </dt>
                                        <dd>
                                            <? echo $age_match; ?>
                                        </dd>
                                        <dt>
                                            Phone
                                        </dt>
                                        <dd>
                                            <a href="tel:<? echo $phone_match; ?>">  <? echo $phone_match; ?></a>
                                        </dd>
                                        <dt>
                                            Working hours
                                        </dt>
                                        <dd>
                                            <? echo $time_match; ?>
                                        </dd>
                                        <dt>
                                            Country
                                        </dt>
                                        <dd>
                                            <? echo $country_match; ?>
                                        </dd>
                                        <dt>
                                           Description
                                        </dt>
                                        <dd>
                                            <? echo $description_match; ?>
                                        </dd>
                                    </dl>
                                </div>
                            </div>
                        </div>
                        <div  class="text-center py-4">
                            <a href="#" class="btn btn-gradient">
                                Change matchmaker
                            </a>
                        </div>
                        <p>
                            If status of your subscription is GOLD or higher, then you can replace your assistant Matchmaker, on any other among provided in this gallery. Click on "Change Matchmaker" button and notice us about it.
                        </p>
                        <div class="row mt-4">
                           
						   <?
								$zapros_matches = "SELECT * FROM matchmakers WHERE login <> '".$matchmaker_login."' AND status='1'";	
								$requirest_matches = mysql_query($zapros_matches);
								while($row_matches = mysql_fetch_array($requirest_matches)) 
									{
										$name_match = $row_matches['name'];
										$description_match = $row_matches['description'];
										$foto_match = $row_matches['foto'];
										$email_match = $row_matches['email'];
										$skype_match = $row_matches['skype'];
										$age_match = $row_matches['age'];
										$country_match = $row_matches['country'];
										$phone_match = $row_matches['phone']; 
										$time_match = $row_matches['time']; 
										$meetings_match = $row_matches['meetings']; 
										$rating_match = $row_matches['rating']; 	
										switch ($rating_match) 
											{
												case 1:
													$rating_class = "rating-one";
												break;
												
												case 2:
													$rating_class = "rating-two";
												break;
												
												case 3:
													$rating_class = "rating-three";
												break;
												
												case 4:
													$rating_class = "rating-four";
												break;
												
												case 5:
													$rating_class = "rating-five";
												break;
											}
										echo('
												<div class="col-md-6 mt-4 mt-md-0">
													<div class="box-user-info box-user-info-mini" style="margin-top:10px;">
														<div class="row">
															<div class="col-8 col-md-12 col-lg-8">
																<figure>
																	 <img width="200" height="200" src="../'.$foto_match.'" alt="">
																</figure>
																<h5 class="box-user-name">
																	'.$name_match.'
																</h5>
																<dl class="info-list">
																	<dt>
																		Number of meetings
																	</dt>
																	<dd>
																		'.$meetings_match.'
																	</dd>
																	<dt>
																		Rating
																	</dt>
																	<dd>
																		<div class="box-user-rating '.$rating_class.'" >
																			<i class="fa"></i>
																			<i class="fa"></i>
																			<i class="fa"></i>
																			<i class="fa"></i>
																			<i class="fa"></i>
																		</div>
																	</dd>
																</dl>

															</div>
															<div class="col">
																<dl class="info-list">
																	<dt>
																		Age
																	</dt>
																	<dd>
																		'.$age_match.'
																	</dd>

																	<dt>
																		Working hours
																	</dt>
																	<dd>
																		'.$time_match.'
																	</dd>
																	<dt>
																		Country
																	</dt>
																	<dd>
																		'.$country_match.'
																	</dd>
																</dl>
															</div>
														</div>
													</div>
												</div>
											');
									}
						   ?>
						   
						   
                            
							
							
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