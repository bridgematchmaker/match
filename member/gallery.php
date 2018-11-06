<?
session_start();
isset($_SESSION['email_client']) or die("<script>javascript:window.location='../login.php'</script>");

include("../connect.php");
include("./function/user_bd.php");
include("./function/user_check.php");

function calculate_age($birthday) {
	$birthday_timestamp = strtotime($birthday);
	$age = date('Y') - date('Y', $birthday_timestamp);
	if (date('md', $birthday_timestamp) > date('md')) {
	  $age--;
	}
	return $age;
  }

$quantity=9; // Количество записей на странице
$limit=5; // Ограничиваем количество ссылок, которые будут выводиться перед и после текущей страницы
$page = $_GET[page];


// Если значение page= не является числом, то показываем
// пользователю первую страницу
if(!is_numeric($page)) $page=1;

// Если пользователь вручную поменяет в адресной строке значение page= на нуль,
// то мы определим это и поменяем на единицу, то-есть отправим на первую
// страницу, чтобы избежать ошибки
if ($page<1) $page=1;


$view = $_GET['view'];
if($view == "") {$view = "gallery"; }

switch ($view) 
	{
		case gallery:
			$page_menu_name = "Women profiles";

			////////////////////////Загружаем массив девушек добавленных в блек лист и рекомендации///////////////////////////////
			$data_girl_id = Array(); // Масив с id девушек
			$count = 0;
			$sql_client_girl = "SELECT * FROM clients_girl WHERE user_id='".$user_id."' AND (girl_status='0' OR girl_status='2')";
			$result_client_girl  = mysql_query($sql_client_girl);
			while($row_client_girl = mysql_fetch_array($result_client_girl)) 
				{ 
					$data_girl_id[$count] = $row_client_girl['girl_id'];
					$count++;
					$sql_into = $sql_into . " AND girl_id <> '" . $row_client_girl['girl_id'] . "'";
				}
			/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
			
			
			// Узнаем количество всех доступных записей 
			$result_count = mysql_query("SELECT * FROM girls WHERE gallery_status='1' AND activation_status='1';");
			while($row_count = mysql_fetch_array($result_count)) 
				{ 
					if (!in_array($row_count['girl_id'], $data_girl_id)) 
					{
						$num++;
					}
				}
		break;
		
		case recomendation:
			$page_menu_name = "Matchmaker's recomendation";
			// Узнаем количество всех доступных записей 
			$result_count = mysql_query("SELECT * FROM clients_girl WHERE user_id='$user_id' AND girl_status='0';");
			$num = mysql_num_rows($result_count);
		break;	
		
		case blacklist:
			$page_menu_name = "Black List";
			// Узнаем количество всех доступных записей 
			$result_count = mysql_query("SELECT * FROM clients_girl WHERE user_id='$user_id' AND girl_status='2';");
			$num = mysql_num_rows($result_count);
		break;	
		
	}

// Вычисляем количество страниц, чтобы знать сколько ссылок выводить
$pages = $num/$quantity;

// Округляем полученное число страниц в большую сторону
$pages = ceil($pages);


// Здесь мы увеличиваем число страниц на единицу чтобы начальное значение было
// равно единице, а не нулю. Значение page= будет
// совпадать с цифрой в ссылке, которую будут видеть посетители
$pages++; 

// Если значение page= больше числа страниц, то выводим первую страницу
if ($page>$pages) $page = 1;

// Переменная $list указывает с какой записи начинать выводить данные.
// Если это число не определено, то будем выводить
// с самого начала, то-есть с нулевой записи
if (!isset($list)) $list=0;

// Чтобы у нас значение page= в адресе ссылки совпадало с номером
// страницы мы будем его увеличивать на единицу при выводе ссылок, а
// здесь наоборот уменьшаем чтобы ничего не нарушить.
$list=--$page*$quantity;

switch ($view) 
	{
		case gallery:
			$girl_zapros = "SELECT * FROM girls WHERE gallery_status='1' AND activation_status='1' $sql_into LIMIT $quantity OFFSET $list;";
		break;
		
		case recomendation:
			$girl_zapros = "SELECT * FROM clients_girl WHERE user_id='$user_id' AND girl_status='0' LIMIT $quantity OFFSET $list;";
		break;

		case blacklist:
			$girl_zapros = "SELECT * FROM clients_girl WHERE user_id='$user_id' AND girl_status='2' LIMIT $quantity OFFSET $list;";
		break;
		
	}

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
		<link href="assets/css/style.css" rel="stylesheet" type="text/css">
		<!-- Select2 -->
		<link href="assets/css/select2.min.css" rel="stylesheet" type="text/css">
		<!--Style Content Page-->
		<link href="assets/css/gallery-girl.css" rel="stylesheet" type="text/css">

    </head>

<body>
<?
require "./header.php";
?>
<div class="site-wrapper">
    <div class="container">
        <div class="row">
			<? require "./menu.php"; ?>
			
			<!-- Main Page Content (start)-->

            <div class="main-content col-md-9">
                <div class="row">

                    <div class="col-md-6">
                        <h2 style="font-size: 20px;" class="page-title"><? if($view == "gallery") { echo('Women profiles'); } if($view == "recomendation") { echo('Matchmaker\'s recomendation'); } if($view == "blacklist") { echo('Black List'); } ?> <span class="count-gallery"><? echo $num; ?></span></h2>
                    </div>

                    <div class="col-md-6 text-right d-flex align-items-center justify-content-end">
                        <h3 class="page-title-count">Profiles Database<span class="count-gallery-data">1235</span></h3>
                    </div>

					<?
						if(($num == 0) AND ($view !== 'blacklist')) {
							echo('
									<div class="temp_msg offset-1 col-md-10">
										<div class="row">
											<div class="temp_img col-md-2">
												<img width="75" src="./assets/images/warning.png"/>
											</div>
											<div class="temp_text col-md-8">
												<b>
													Unfortunately at the moment we still don\'t add ladies who match your criteria. There maybe  many reasons for this, we ask you to fill in <a href="./profile_about_me.php">more information about you</a> on this page and be patient. Also you can <a href="./chat_matchmaker.php">write to your matchmaker</a> to get more information.
												</b>
												<br>
											</div>
										</div>
									</div>  
								');
						}

						if(($num == 0) AND ($view == 'blacklist')) {
							echo('
									<div class="temp_msg offset-1 col-md-10">
										<div class="row">
											<div class="temp_img col-md-2">
												<img width="75" src="./assets/images/warning.png"/>
											</div>
											<div class="temp_text col-md-8">
												<p class="text-center">
													<b>
														Your blacklist is empty
													</b><br><br>
													<a href="'.$_SERVER['HTTP_REFERER'].'"><button type="button" class="btn btn-warning btn-md"><b><div style="margin-left:20px; margin-right:20px;">Go back</div></b></button></a>
												</p>
											</div>
										</div>
									</div>  
								');
						}
					?>
					
                        
						
						<?
							// Делаем запрос подставляя значения переменных $quantity и $list
							$result = mysql_query($girl_zapros);

							// Считаем количество полученных записей
							$num_result = mysql_num_rows($result);
							
							if($view == "gallery")
								{
									
				
									for ($i = 0; $i<$num_result; $i++) 
										{
									
											$row = mysql_fetch_array($result);
										
											$girl_id = $row['girl_id'];
											$girl_first_name = $row['first_name'];
											$girl_birthday = $row['birthday'];
											$girl_age = calculate_age($girl_birthday);
											$girl_foto = $row['foto'];
											$girl_height = $row['question3'];
											$girl_weight = $row['question4'];
											
											if (!in_array($girl_id, $data_girl_id)) 
												{
													//////////////Вывод анкеты/////////////////
													echo('
															<div class="col-md-4">
																<div class="gallery-item-wrapper">
																	<div class="image-wrapper">
																		<a href="./girl.php?girl_id='.$girl_id.'"><img width="220" height="220" src="../'.$girl_foto.'" alt="Foto">
																	</div>

																	<div class="container name-id">
																		<div class="row">
																			<div class="col-6"><a href="./girl.php?girl_id='.$girl_id.'" class="name">'.$girl_first_name.'</a></div>
																			<div class="col-6 id text-right"><span>ID:</span> '.$girl_id.'</div>
																		</div>
																	</div>

																	<div class="container age-height-weight">
																		<div class="row">
																			<div class="col-4 text-left">
																				<p class="title">Age</p>
																				<p class="value">'.$girl_age.'</p>
																			</div>
																			<div class="col-4 text-center">
																				<p class="title">Height</p>
																				<p class="value">'.$girl_height.' sm</p>
																			</div>
																			<div class="col-4 text-right">
																				<p class="title">Weight</p>
																				<p class="value">'.$girl_weight.' kg</p>
																			</div>
																		</div>
																	</div>

																	<div class="container video-dating">
																		<div class="row">
																			<div class="col-md-12  text-center">
																				<a style="font-size: 14px;" href="#">
																					<i class="fa fa-video-camera" aria-hidden="true"></i>Introduction video
																				</a>
																			</div>
																		</div>
																	</div>

																	<div class="col-md-12">
																		<div class="button-area">
																			<ul>
																				<li>
																					<a href="./send_email.php?girl_id='.$girl_id.'">
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
																					<a href="./conference_1.php?girl_id='.$girl_id.'">
																						<span class="icon"><i class="fa fa-skype" aria-hidden="true"></i></span>
																						<p>Video conference</p>
																					</a>
																				</li>
																			</ul>
																		</div>
																	</div>

																	<div class="container black-list">
																		<div class="row">
																			<div class="col-md-12 text-center">
																				<a href="./function/blacklist_add.php?girl_id='.$girl_id.'&user_id='.$user_id.'">
																					<i class="fa fa-plus" aria-hidden="true"></i>Add to black list
																				</a>
																			</div>
																		</div>
																	</div>

																</div>
															</div>
														');
													
													///////////////////////////////////////////
												}
										
											
										
					
										}
								}
								
								if($view == "recomendation")
								{
				
									for ($i = 0; $i<$num_result; $i++) 
										{
									
											$row = mysql_fetch_array($result);
										
											$girl_id = $row['girl_id'];
											$conformity = $row['conformity'];
											
											$zapros_recomendation = "SELECT * FROM girls WHERE girl_id='$girl_id'";
											$requirest_recomendation = mysql_query($zapros_recomendation);
											while($row_recomendation = mysql_fetch_array($requirest_recomendation)) 
												{ 
													$girl_first_name = $row_recomendation['first_name'];
													$girl_birthday = $row_recomendation['birthday'];
													$girl_age = calculate_age($girl_birthday);
													$girl_foto = $row_recomendation['foto'];
													$girl_height = $row_recomendation['question3'];
													$girl_weight = $row_recomendation['question4'];
												}

							
										
											//////////////Вывод анкеты/////////////////
											echo('
													<div class="col-md-4">
														<div class="gallery-item-wrapper">
															<div class="image-wrapper">
																<a href="./girl.php?girl_id='.$girl_id.'"><img width="220" height="220" src="../'.$girl_foto.'" alt="Foto">
																<div class="count-matchmaker">
																	<span>'.$conformity.'</span>
																	<i class="fa fa-heart" aria-hidden="true"></i>
																</div>
															</div>

															<div class="container name-id">
																<div class="row">
																	<div class="col-6"><a href="./girl.php?girl_id='.$girl_id.'" class="name">'.$girl_first_name.'</a></div>
																	<div class="col-6 id text-right"><span>ID:</span> '.$girl_id.'</div>
																</div>
															</div>

															<div class="container age-height-weight">
																<div class="row">
																	<div class="col-4 text-left">
																		<p class="title">Age</p>
																		<p class="value">'.$girl_age.'</p>
																	</div>
																	<div class="col-4 text-center">
																		<p class="title">Height</p>
																		<p class="value">'.$girl_height.' sm</p>
																	</div>
																	<div class="col-4 text-right">
																		<p class="title">Weight</p>
																		<p class="value">'.$girl_weight.' kg</p>
																	</div>
																</div>
															</div>

															<div class="container video-dating">
																<div class="row">
																	<div class="col-md-12  text-center">
																		<a style="font-size: 14px;" href="#">
																			<i class="fa fa-video-camera" aria-hidden="true"></i>Introduction video
																		</a>
																	</div>
																</div>
															</div>

															<div class="col-md-12">
																<div class="button-area">
																	<ul>
																		<li>
																			<a href="./send_email.php?girl_id='.$girl_id.'">
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
																			<a href="./conference_1.php?girl_id='.$girl_id.'">
																				<span class="icon"><i class="fa fa-skype" aria-hidden="true"></i></span>
																				<p>Video conference</p>
																			</a>
																		</li>
																	</ul>
																</div>
															</div>

															<div class="container black-list">
																<div class="row">
																	<div class="col-md-12 text-center">
																		<a href="./function/blacklist_add.php?girl_id='.$girl_id.'&user_id='.$user_id.'">
																			<i class="fa fa-plus" aria-hidden="true"></i>Add to black list
																		</a>
																	</div>
																</div>
															</div>

														</div>
													</div>
												');
											///////////////////////////////////////////			
					
										}
								}
								
								if($view == "blacklist")
								{
				
									for ($i = 0; $i<$num_result; $i++) 
										{
									
											$row = mysql_fetch_array($result);
											$girl_id = $row['girl_id'];
											
											$zapros_blacklist = "SELECT * FROM girls WHERE girl_id='$girl_id'";
											$requirest_blacklist = mysql_query($zapros_blacklist);
											while($row_blacklist = mysql_fetch_array($requirest_blacklist)) 
												{ 
													$girl_first_name = $row_blacklist['first_name'];
													$girl_birthday = $row_blacklist['birthday'];
													$girl_age = calculate_age($girl_birthday);
													$girl_foto = $row_blacklist['foto'];
													$girl_height = $row_blacklist['question3'];
													$girl_weight = $row_blacklist['question4'];
												}

							
										
											//////////////Вывод анкеты/////////////////
											echo('
													<div class="col-md-4">
														<div class="gallery-item-wrapper">
															<div class="image-wrapper">
																<a href="./girl.php?girl_id='.$girl_id.'"><img width="220" height="220" src="../'.$girl_foto.'" alt="Foto">
															</div>

															<div class="container name-id">
																<div class="row">
																	<div class="col-6"><a href="./girl.php?girl_id='.$girl_id.'" class="name">'.$girl_first_name.'</a></div>
																	<div class="col-6 id text-right"><span>ID:</span> '.$girl_id.'</div>
																</div>
															</div>

															<div class="container age-height-weight">
																<div class="row">
																	<div class="col-4 text-left">
																		<p class="title">Age</p>
																		<p class="value">'.$girl_age.'</p>
																	</div>
																	<div class="col-4 text-center">
																		<p class="title">Height</p>
																		<p class="value">'.$girl_height.' sm</p>
																	</div>
																	<div class="col-4 text-right">
																		<p class="title">Weight</p>
																		<p class="value">'.$girl_weight.' kg</p>
																	</div>
																</div>
															</div>

															<div class="container video-dating">
																<div class="row">
																	<div class="col-md-12  text-center">
																		<a style="font-size: 14px;" href="./function/blacklist_remove.php?girl_id='.$girl_id.'&user_id='.$user_id.'">
																			Remove from Blacklist
																		</a>
																	</div>
																</div>
															</div>

														</div>
													</div>
												');
											///////////////////////////////////////////			
					
										}
								}
						
						?>

                   


                    <div class="col-md-12">
                        <p class="gallery-text-info">
						<?
							if($num != 0) {
							echo('
                            	On this page are all available profiles which were selected in accordance with your search criteria and based on our assumption of your possible interest. Each profile has short video where lady tells about herself  and her search.
								To watch this video is free for you.
								');
							}
						?>
                        </p>
                    </div>

                    <nav class="col-md-12 mb-4">
                        <ul class="pagination justify-content-center">
                            <span>Pages</span>
							<?
								// На данном этапе номер текущей страницы = $page+1
								$_this = $page+1;
								// Узнаем с какой ссылки начинать вывод
								$start = $_this-$limit;

								// Узнаем номер последней ссылки для вывода
								$end = $_this+$limit;

								// Выводим ссылки на все страницы
								// Начальное число $j в нашем случае должно равнятся единице, а не нулю
								for ($j = 1; $j<$pages; $j++) 
									{
										// Выводим ссылки только в том случае, если их номер больше или равен
										// начальному значению, и меньше или равен конечному значению
										if ($j>=$start && $j<=$end) 
											{
												// Ссылка на текущую страницу выделяется жирным
												if ($j==($page+1)) echo '<li class="page-item active"><a  class="page-link" href="' . $_SERVER['SCRIPT_NAME'] . '?view='.$view.'&page=' . $j . '">' . $j . '</a></li>';
												// Ссылки на остальные страницы
												else echo '<li class="page-item"><a class="page-link" href="' . $_SERVER['SCRIPT_NAME'] . '?view='.$view.'&page=' . $j . '">' . $j . '</a></li>';
											}
									}

							?>
                        </ul>
                    </nav>
                </div>

            </div>

            <!-- Main Page Content (end)-->
        </div>
    </div>
</div>

<? require "footer.php";?>

<!-- Site Scripts (start)-->
<script src="assets/js/jquery.min.js"></script>
<script src="assets/js/popper.min.js"></script>
<script src="assets/js/bootstrap.min.js"></script>
<script src="assets/js/owl.carousel.min.js"></script>
<script src="assets/js/custom.js"></script>
<!-- Site Scripts (end)-->

</body>

</html>