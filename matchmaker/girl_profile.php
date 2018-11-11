<?
session_start();
isset($_SESSION['login_match']) or die("<script>javascript:window.location='index.php'</script>");

include("../connect.php");

function checkInputError($str)
{
	if(trim(explode('||', $str)[1]) == "Некорректное заполнение поля!") { 
		return "class='danger'";
	}
}

///////////////////////////////Проверка статуса мачмеккера////////////////////////////
$zapros_match = "SELECT * FROM matchmakers WHERE login='".$_SESSION['login_match']."'";
$requirest_match = mysql_query($zapros_match);
while($row_match = mysql_fetch_array($requirest_match)) { $status_match = $row_match['status']; }
if($status_match == "2") { echo("<script>alert('Аккаунт заблокирован');</script><script>javascript:window.location='index.php?logout'</script>");}
//////////////////////////////////////////////////////////////////////////////////////
$girl_id = $_GET['girl_id'];
/////////////Фильтрация///////////////////
$girl_id = htmlspecialchars($girl_id);
$girl_id = mysql_escape_string($girl_id);

$zapros = "SELECT * FROM girls WHERE girl_id='".$girl_id."'";

//////////////////////////////Загрузка данных из базы////////////////////////
$requirest = mysql_query($zapros);
while($row = mysql_fetch_array($requirest)) 
	{
		$first_name = $row['first_name'];
		$last_name = $row['last_name'];
		$country = $row['country'];
		$city  = $row['city'];
		$foto = $row['foto'];
		$video = $row['video'];
		$birthday = $row['birthday'];
		$gallery_status = $row['gallery_status'];
		$activation_status = $row['activation_status'];
		$login_match = $row['login_match'];
		$dreams = $row['dreams'];
		$meeting = $row['meeting'];
		
		$question1 = $row['question1'];
		$question2 = $row['question2'];
		$question3 = $row['question3'];
		$question4 = $row['question4'];
		$question5 = $row['question5'];
		$question6 = $row['question6'];
		$question7 = $row['question7'];
		$question8 = $row['question8'];
		$question9 = $row['question9'];
		$question10 = $row['question10'];
		$question11 = $row['question11'];
		$question12 = $row['question12'];
		$question13 = $row['question13'];
		$question14 = $row['question14'];
		$question15 = $row['question15'];
		$question16 = $row['question16'];
		$question17 = $row['question17'];
		$question18 = $row['question18'];
		$question19 = $row['question19'];
		$question20 = $row['question20'];
		$question21 = $row['question21'];
		$question22 = $row['question22'];
		$question23 = $row['question23'];
		$question24 = $row['question24'];
		$question25 = $row['question25'];
		$question26 = $row['question26'];
		$question27 = $row['question27'];
		$question28 = $row['question28'];
		$question29 = $row['question29'];
		$question30 = $row['question30'];
		$question31 = $row['question31'];
		$question32 = $row['question32'];
		$question33 = $row['question33'];
		$question34 = $row['question34'];
		$question35 = $row['question35'];
		$question36 = $row['question36'];
		$question37 = $row['question37'];
		$question38 = $row['question38'];
		$question39 = $row['question39'];
		$question40 = $row['question40'];
		$question41 = $row['question41'];
		$question42 = $row['question42'];
		$question43 = $row['question43'];
		$question44 = $row['question44'];
		$question45 = $row['question45'];
		$question46 = $row['question46'];
		$question47 = $row['question47'];
		$question48 = $row['question48'];
		$question49 = $row['question49'];
		
		$ask1 = $row['ask1'];
		$ask2 = $row['ask2'];
		$ask3 = $row['ask3'];
		$ask4 = $row['ask4'];
		$ask5 = $row['ask5'];
		$ask6 = $row['ask6'];
		$ask7 = $row['ask7'];
		$ask8 = $row['ask8'];
		$ask9 = $row['ask9'];
		$ask10 = $row['ask10'];
		$ask11 = $row['ask11'];
		$ask12 = $row['ask12'];
		$ask13 = $row['ask13'];
		$ask14 = $row['ask14'];
		$ask15 = $row['ask15'];
		$ask16 = $row['ask16'];
		$ask17 = $row['ask17'];
		$ask18 = $row['ask18'];
		$ask19 = $row['ask19'];
		$ask20 = $row['ask20'];
		$ask21 = $row['ask21'];
		$ask22 = $row['ask22'];
		$ask23 = $row['ask23'];
		$ask24 = $row['ask24'];
		$ask25 = $row['ask25'];
		$ask26 = $row['ask26'];
		$ask27 = $row['ask27'];
		$ask28 = $row['ask28'];
		$ask29 = $row['ask29'];
		$ask30 = $row['ask30'];
	}

	
if($foto == "")
	{
		$foto_print = "../uploads/girls/avatar.jpg";
	}
else
	{
		$foto_print = "../".$foto;
	}

switch ($activation_status) 
	{
		case 0:
			$activation_status_print = "Не активный";
		break;
			
		case 1:
			$activation_status_print = "Активный";
		break;
	}

if($status_match == "1" AND $activation_status == "0") {
	$status_error_btn = 1;
}
/////////////////////////////////////////////////////////////////////

///////////////////////////Проверка прав доступа к анкете для агенств/////////////////////////////
if($status_match == "0")
	{
		if($login_match <> $_SESSION['login_match'])
		{
			echo("<script>alert('Доступ к анкете запрещен');</script><script>javascript:window.location='index.php?logout'</script>");
		}
	}
///////////////////////////////////////////////////////////////////////////////////////////////////
?>
<html>
<head>
	<meta charset="utf-8">
	<title>Профиль девушки</title>
	<link rel="stylesheet" href="./css/bootstrap.min.css" />
	<link rel="stylesheet" href="./css/font-awesome.min.css" />
	<link rel="stylesheet" href="./css/bootstrap-datetimepicker.min.css" />
	<script src="./js/jquery-1.11.3.min.js"></script>
	<script src="./js/moment-with-locales.min.js"></script>
	<script src="./js/bootstrap.min.js"></script>  
	<script src="./js/bootstrap-datetimepicker.min.js"></script>
	<script type="text/javascript">
    $(function () {
      $('#datetimepicker1').datetimepicker({
	    locale: '',
		stepping:10,
		format: 'YYYY-MM-DD'
	  });
    });
	</script>

	<script>
	function someFunc(inputName,buttonId){
		document.getElementsByName(inputName)[0].value = document.getElementsByName(inputName)[0].value + " || Некорректное заполнение поля!";
		document.getElementById(buttonId).disabled = true; 
	}
	</script>

	<script>
    // После загрузки DOM-дерева (страницы)
    $(function() {
        //при нажатии на ссылку, содержащую Thumbnail
        $('a.thumbnail').click(function(e) {
            //отменить стандартное действие браузера
            e.preventDefault();
            //присвоить атрибуту scr элемента img модального окна
            //значение атрибута scr изображения, которое обёрнуто
            //вокруг элемента a, на который нажал пользователь
            $('#image-modal .modal-body img').attr('src', $(this).find('img').attr('src'));
            //открыть модальное окно
            $("#image-modal").modal('show');
        });
        //при нажатию на изображение внутри модального окна
        //закрыть его
        $('#image-modal .modal-body img').on('click', function() {
            $("#image-modal").modal('hide')
        });
    });
	</script>
	
</head>



<?
$page_name = "girls";
include "header.php";
?>


<body>

<div class="container" style="margin-top:40px;">
<div id="main">
	<div class="row" id="real-estates-detail">
		<div class="col-lg-4 col-md-4 col-xs-12">
			<div class="panel panel-default">
					<div class="panel-heading">
						<header class="panel-title">
							<div class="text-center">
								<strong>ID: <? echo $girl_id; ?></strong> Статус: <? echo $activation_status_print; ?>
							<br>
								<?
									if($status_match == "1")
									{
										if($activation_status == "0") { echo('<a href="./function/girl_activation_status.php?girl_id='.$girl_id.'&activation_status=1"><button type="button" class="btn btn-success btn-xs">Активировать</button></a>'); }
										if($activation_status == "1") { echo('<a href="./function/girl_activation_status.php?girl_id='.$girl_id.'&activation_status=0"><button type="button" class="btn btn-danger btn-xs">Деактивировать</button></a>'); }
									}
								?>
							</div>
						</header>
					</div>
					<div class="panel-body">
						<div class="text-center" id="author">
							<img width="220" height="220" src="<? echo $foto_print; ?>">
							<hr>
							<form name='form' enctype='multipart/form-data' method='post' action='./function/girl_add_foto.php'>
								<input name="girl_id" type="hidden" value="<? echo $girl_id ?>">
								<p class="text-left"><label></label>
								<input type='file' name='file'/>
								<i>Избражение 220px на 220px до 1 Мб</i>
								<br>
								<br>
								<button type="submit" class="btn btn-success btn-md" data-original-title="" title="">Загрузить аватар</button></p>	
							</form>
							
							<hr>
							<?
							if($status_match == "1")
								{	
									echo('
											<form action="./function/girl_edit_match.php" method="POST" role="form">
												<input name="girl_id" type="hidden" value="'.$girl_id.'">
												<div class="form-group">
													<label>Мои мечты</label>
													<textarea name="dreams" class="form-control rounded" style="height: 50px;" >'.$dreams.'</textarea>
												</div>
												<div class="form-group">
													<label>Как встретится со мной</label>
													<textarea name="meeting" class="form-control rounded" style="height: 50px;" >'.$meeting.'</textarea>
												</div>
												<div class="form-group">
													<p class="text-left"><button type="submit" class="btn btn-success" data-original-title="" title="">Сохранить</button></p>												</div>
											</form><hr>
									');
								}
							?>
						</div>
					</div>
			</div>
		</div>
		<div class="col-lg-8 col-md-8 col-xs-12">
			<div class="panel">
				<ul id="myTab" class="nav nav-pills">
					<li class="active"><a href="#user" data-toggle="tab">О пользователе</a></li>
					<li class=""><a href="#anketa1" data-toggle="tab">Анкета Часть 1</a></li>
					<li class=""><a href="#anketa2" data-toggle="tab">Анкета Часть 2</a></li>
					<li class=""><a href="#ask" data-toggle="tab">Вопросы девушке</a></li>
					<li class=""><a href="#redakt" data-toggle="tab">Редактирование</a></li>
				</ul>
				<div class="panel-body">
					<div id="myTabContent" class="tab-content">
						<div class="tab-pane fade active in" id="user">
							<table class="table table-striped table-bordered">
									<tr><td class="active">Имя:</td><td <? echo checkInputError($first_name); ?> ><? echo $first_name; ?></td></tr>
									<tr><td class="active">Фамилия:</td><td <? echo checkInputError($last_name); ?> ><? echo $last_name; ?></td></tr>
									<tr><td class="active">Email:</td><td <? echo checkInputError($question45); ?> ><? echo $question45; ?></td></tr>
									<tr><td class="active">Дата рождения:</td><td><? echo $birthday; ?></td></tr>
									<tr><td class="active">Страна:</td><td><? echo $country; ?></td></tr>
									<tr><td class="active">Город:</td><td <? echo checkInputError($city); ?> ><? echo $city; ?></td></tr>
									<tr><td class="active">Добавил в базу:</td><td><? echo $login_match; ?></td></tr>
									<tr><td class="active">Video URL:</td><td><? echo $video; ?></td></tr>
									<? if($video <> "") { echo('<tr><td class="active"></td><td><iframe width="270" height="180" src="'.$video.'" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe></td></tr>'); } ?>
									
									 
							</table>
							<?
								if($status_match == "1")
								{
									
									
									if($gallery_status == "0") { echo('<a href="./function/girl_gallery_status.php?girl_id='.$girl_id.'&gallery_status=1"><button type="button" class="btn btn-success">Добавить в общую галерею</button></a> '); }
									if($gallery_status == "1") { echo('<a href="./function/girl_gallery_status.php?girl_id='.$girl_id.'&gallery_status=0"><button type="button" class="btn btn-danger">Удалить из общей галереи</button></a>');}
								}
							?>
							<hr><a onClick="return window.confirm('Действительно удалить анкету?');" href="./function/girl_delete.php?girl_id=<? echo $girl_id; ?>"><button type="button" class="btn btn-danger">Удалить анкету</button></a>
							
						</div>
						
						
						<div class="tab-pane fade" id="anketa1">
							<table class="table table-striped table-bordered">
									<tr><td>Nationality </td><td><? echo $question1; ?></td></tr>
									<tr><td>Religion </td><td><? echo $question2; ?></td></tr>
									<tr><td>Height </td><td><? echo $question3; ?></td></tr>
									<tr><td>Weight </td><td><? echo $question4; ?></td></tr>
									<tr><td>Body type </td><td><? echo $question5; ?></td></tr>
									<tr><td>Eye color </td><td><? echo $question6; ?></td></tr>
									<tr><td>Hair color </td><td><? echo $question7; ?></td></tr>
									<tr><td>Education </td><td><? echo $question8; ?></td></tr>
									<tr><td>Attitude to smoking, alcohol, drugs </td><td><? echo $question9; ?></td></tr>
									<tr><td>Marital status </td><td <? echo checkInputError($question10); ?> ><? echo $question10; ?></td></tr>
									<tr><td>What is your native language? </td><td <? echo checkInputError($question11); ?> ><? echo $question11; ?></td></tr>
									<tr><td>What languages can you speak? </td><td <? echo checkInputError($question12); ?> ><? echo $question12; ?></td></tr>
									<tr><td>Have children </td><td <? echo checkInputError($question13); ?> ><? echo $question13; ?></td></tr>
									<tr><td>My character traits </td><td <? echo checkInputError($question14); ?> ><? echo $question14; ?></td></tr>
									<tr><td>What do I expect from the search here? </td><td <? echo checkInputError($question15); ?> ><? echo $question15; ?></td></tr>
									<tr><td>Profession </td><td <? echo checkInputError($question16); ?> ><? echo $question16; ?></td></tr>
									<tr><td>Occupation </td><td <? echo checkInputError($question17); ?> ><? echo $question17; ?></td></tr>
									<tr><td>Which countries did you visit? </td><td <? echo checkInputError($question18); ?> ><? echo $question18; ?></td></tr>
									<tr><td>What countries would you like to visit? </td><td <? echo checkInputError($question19); ?> ><? echo $question19; ?></td></tr>
									<tr><td>Write briefly about yourself, about your lifestyle, your likes and dislikes </td><td <? echo checkInputError($question20); ?> ><? echo $question20; ?></td></tr>
									<tr><td>What are your hobbies and interests? </td><td <? echo checkInputError($question21); ?> ><? echo $question21; ?></td></tr>
									<tr><td>Do you want children in a new relation? </td><td <? echo checkInputError($question22); ?> ><? echo $question22; ?></td></tr>
									<tr><td>Describe your perfect morning (you are a night owl or an early bird?) </td><td <? echo checkInputError($question24); ?> ><? echo $question24; ?></td></tr>
									<tr><td>Describe your desired future (goals, lifestyle, relationships in the family) </td><td <? echo checkInputError($question25); ?> ><? echo $question25; ?></td></tr>
									<tr><td>Attitude to pets </td><td <? echo checkInputError($question26); ?> ><? echo $question26; ?></td></tr>
									<tr><td>What could you forgive and what can not? </td><td <? echo checkInputError($question27); ?> ><? echo $question27; ?></td></tr>
									<tr><td>Why did you decide to choose an online dating site for your search? </td><td <? echo checkInputError($question28); ?> ><? echo $question28; ?></td></tr>
									<tr><td>Why do you think that you haven’t found a suitable partner yet? </td><td <? echo checkInputError($question29); ?> ><? echo $question29; ?></td></tr>
							</table>	
						</div>
						
						<div class="tab-pane fade" id="anketa2">
							<table class="table table-striped table-bordered">
									<tr><td>Age Range </td><td <? echo checkInputError($question30); ?> ><? echo $question30; ?></td></tr>
									<tr><td>Country </td><td <? echo checkInputError($question31); ?> ><? echo $question31; ?></td></tr>
									<tr><td>Height </td><td <? echo checkInputError($question32); ?> ><? echo $question32; ?></td></tr>
									<tr><td>Weight </td><td <? echo checkInputError($question33); ?> ><? echo $question33; ?></td></tr>
									<tr><td>Eye color </td><td <? echo checkInputError($question34); ?> ><? echo $question34; ?></td></tr>
									<tr><td>Hair color </td><td <? echo checkInputError($question35); ?> ><? echo $question35; ?></td></tr>
									<tr><td>Nationality </td><td <? echo checkInputError($question36); ?> ><? echo $question36; ?></td></tr>
									<tr><td>Religion </td><td <? echo checkInputError($question37); ?> ><? echo $question37; ?></td></tr>
									<tr><td>Have children </td><td <? echo checkInputError($question38); ?> ><? echo $question38; ?></td></tr>
									<tr><td>Desired traits of character in a man </td><td <? echo checkInputError($question39); ?> ><? echo $question39; ?></td></tr>
									<tr><td>Character traits that you can not be tolerate with </td><td <? echo checkInputError($question40); ?> ><? echo $question40; ?></td></tr>
									<tr><td>Do you want the man to know your native language or another language in which you can communicate? </td><td <? echo checkInputError($question41); ?> ><? echo $question41; ?></td></tr>
									<tr><td>A man should prefer an active or passive rest? </td><td <? echo checkInputError($question42); ?> ><? echo $question42; ?></td></tr>
									<tr><td>Describe the man you would like to meet on our website. What is most important for you? </td><td <? echo checkInputError($question43); ?> ><? echo $question43; ?></td></tr>
									<tr><td>Contact phone number </td><td <? echo checkInputError($question44); ?> ><? echo $question44; ?></td></tr>
									<tr><td>Email address </td><td <? echo checkInputError($question45); ?> ><? echo $question45; ?></td></tr>
									<tr><td>Viber/Skype/WhatsApp </td><td <? echo checkInputError($question46); ?> ><? echo $question46; ?></td></tr>
									<tr><td>Do you have social nets? (If yes, please insert the link one of your social nets. Facebook Twitter Google+)</td><td <? echo checkInputError($question47); ?> ><? echo $question47; ?></td></tr>
									<tr><td>Preferred days and time of communication with you </td><td <? echo checkInputError($question48); ?> ><? echo $question48; ?></td></tr>
									<tr><td>Information for men who order Skype conference with this lady</td><td <? echo checkInputError($question49); ?> ><? echo $question49; ?></td></tr>
									
									
							</table>		
						</div>
						
						<div class="tab-pane fade" id="ask">
							<form action="./function/girl_edit_ask.php" method="POST" role="form">
								<input name="girl_id" type="hidden" value="<? echo $girl_id; ?>">
								
								<div class="form-group">
									<label>What kind of a child were you? A hooligan or a quiet girl?</label>
									<input name="ask1" type="text" class="form-control rounded" value="<? echo $ask1; ?>">
								</div>
								
								<div class="form-group">
									<label>What do you choose: Spontaneity or stability?</label>
									<input name="ask2" type="text" class="form-control rounded" value="<? echo $ask2; ?>">
								</div>
								
								<div class="form-group">
									<label>What mood do you usually have in the morning?</label>
									<input name="ask3" type="text" class="form-control rounded" value="<? echo $ask3; ?>">
								</div>
								
								<div class="form-group">
									<label>Do you want to learn to dance tango, waltz or hip-hop?</label>
									<input name="ask4" type="text" class="form-control rounded" value="<? echo $ask4; ?>">
								</div>
								
								<div class="form-group">
									<label>What the most bright moment did you have in life?</label>
									<input name="ask5" type="text" class="form-control rounded" value="<? echo $ask5; ?>">
								</div>
								
								<div class="form-group">
									<label>Do you want to learn some foreign language?</label>
									<input name="ask6" type="text" class="form-control rounded" value="<? echo $ask6; ?>">
								</div>
								
								<div class="form-group">
									<label>What is your favorit flower?</label>
									<input name="ask7" type="text" class="form-control rounded" value="<? echo $ask7; ?>">
								</div>
								
								<div class="form-group">
									<label>Guess what attracts me in you the most?</label>
									<input name="ask8" type="text" class="form-control rounded" value="<? echo $ask8; ?>">
								</div>
								
								<div class="form-group">
									<label>Are you a vegetarian?</label>
									<input name="ask9" type="text" class="form-control rounded" value="<? echo $ask9; ?>">
								</div>
								
								<div class="form-group">
									<label>Is the glass half empty or half full?</label>
									<input name="ask10" type="text" class="form-control rounded" value="<? echo $ask10; ?>">
								</div>
								
								<div class="form-group">
									<label>What kind of humor do you like the most?</label>
									<input name="ask11" type="text" class="form-control rounded" value="<? echo $ask11; ?>">
								</div>
								
								<div class="form-group">
									<label>Do you like travelling?</label>
									<input name="ask12" type="text" class="form-control rounded" value="<? echo $ask12; ?>">
								</div>
								
								<div class="form-group">
									<label>Can you cook?</label>
									<input name="ask13" type="text" class="form-control rounded" value="<? echo $ask13; ?>">
								</div>
								
								<div class="form-group">
									<label>What do you value in a man?</label>
									<input name="ask14" type="text" class="form-control rounded" value="<? echo $ask14; ?>">
								</div>
								
								<div class="form-group">
									<label>What the main trait would you identified in yourself?</label>
									<input name="ask15" type="text" class="form-control rounded" value="<? echo $ask15; ?>">
								</div>
								
								<div class="form-group">
									<label>What brings you pleasure?</label>
									<input name="ask16" type="text" class="form-control rounded" value="<? echo $ask16; ?>">
								</div>
								
								<div class="form-group">
									<label>If there were 25 hours in the day, what would you do in extra hour?</label>
									<input name="ask17" type="text" class="form-control rounded" value="<? echo $ask17; ?>">
								</div>
								
								<div class="form-group">
									<label>How much does someone else's opinion influence you?</label>
									<input name="ask18" type="text" class="form-control rounded" value="<? echo $ask18; ?>">
								</div>
								
								<div class="form-group">
									<label>What should every person try?</label>
									<input name="ask19" type="text" class="form-control rounded" value="<? echo $ask19; ?>">
								</div>
								
								<div class="form-group">
									<label>What talent would you like to have?</label>
									<input name="ask20" type="text" class="form-control rounded" value="<? echo $ask20; ?>">
								</div>
								
								<div class="form-group">
									<label>Being in what place, do you feel maximum comfort?</label>
									<input name="ask21" type="text" class="form-control rounded" value="<? echo $ask21; ?>">
								</div>
								
								<div class="form-group">
									<label>Do you speak or listen more?</label>
									<input name="ask22" type="text" class="form-control rounded" value="<? echo $ask22; ?>">
								</div>
								
								<div class="form-group">
									<label>Do you likee unexpected things and surprises?</label>
									<input name="ask23" type="text" class="form-control rounded" value="<? echo $ask23; ?>">
								</div>
								
								<div class="form-group">
									<label>How do you think what a person needs to be happy on the fullest?</label>
									<input name="ask24" type="text" class="form-control rounded" value="<? echo $ask24; ?>">
								</div>
								
								<div class="form-group">
									<label>In your opinion, what part of the day is the most romanrtic?</label>
									<input name="ask25" type="text" class="form-control rounded" value="<? echo $ask25; ?>">
								</div>
								
								<div class="form-group">
									<label>Do you like rain?</label>
									<input name="ask26" type="text" class="form-control rounded" value="<? echo $ask26; ?>">
								</div>
								
								<div class="form-group">
									<label>What do you like to do when there's a thunderstorm outside the window?</label>
									<input name="ask27" type="text" class="form-control rounded" value="<? echo $ask27; ?>">
								</div>
								
								<div class="form-group">
									<label>How do you feel about very expensive and very cheap gifts?</label>
									<input name="ask28" type="text" class="form-control rounded" value="<? echo $ask28; ?>">
								</div>
								
								<div class="form-group">
									<label>How long have you been on a date? Do you want to refresh your memories?</label>
									<input name="ask29" type="text" class="form-control rounded" value="<? echo $ask29; ?>">
								</div>
								
								<div class="form-group">
									<label>I would like to invite you for coffee, but I do not know how. Will you help me?</label>
									<input name="ask30" type="text" class="form-control rounded" value="<? echo $ask30; ?>">
								</div>
								
								<div class="form-group">
									<button type="submit" class="btn btn-success" >Редактировать</button>
								</div>
							</form>
						</div>
						
						<div class="tab-pane fade" id="redakt">
							<form action="./function/girl_edit.php" method="POST" role="form">
								<input name="girl_id" type="hidden" value="<? echo $girl_id; ?>">
				
								<div class="form-group">
									<label>First name *</label>
									<?php
										if($status_error_btn == "1")
										{
											echo('<input type="button" id="first_name" class="btn btn-warning btn-xs" value="Ошибка при заполнении" onclick="someFunc(\'first_name\',\'first_name\')">');
										}
									?>
									<input name="first_name" type="text" class="form-control rounded" value="<? echo $first_name; ?>">
								</div>
				
								<div class="form-group">
									<label>Last name *</label>
									<?php
										if($status_error_btn == "1")
										{
											echo('<input type="button" id="last_name" class="btn btn-warning btn-xs" value="Ошибка при заполнении" onclick="someFunc(\'last_name\',\'last_name\')">');
										}
									?>
									<input name="last_name" type="text" class="form-control rounded" value="<? echo $last_name; ?>">
								</div>
				
								
								<div class="form-group">
									<label>Country *</label>
									<input name="country" type="text" class="form-control rounded" value="<? echo $country; ?>">
								</div>
				
								<div class="form-group">
									<label>City *</label>
									<?php
										if($status_error_btn == "1")
										{
											echo('<input type="button" id="city" class="btn btn-warning btn-xs" value="Ошибка при заполнении" onclick="someFunc(\'city\',\'city\')">');
										}
									?>
									<input name="city" type="text" class="form-control rounded" value="<? echo $city; ?>">
								</div>
								
								<div class="form-group">
									<label>Nationality</label>
									<input name="question1" type="text" class="form-control rounded" value="<? echo $question1; ?>">
								</div>
								
								<div class="form-group">
									<label>Religion *</label>
									<input name="question2" type="text" class="form-control rounded" value="<? echo $question2; ?>">
								</div>
								
								<div class="form-group">
									<label>Age (date of birth) *</label>
									<div class="form-group">
										<div class="input-group" id="datetimepicker1">
											<input name="birthday" type="text" class="form-control" value="<? echo $birthday; ?>">
											<span class="input-group-addon">
												<span class="glyphicon glyphicon-calendar"></span>
											</span>
										</div>
									</div>
								</div>
				
								<div class="form-group">
									<label>Height *</label>
									<input name="question3" type="text" class="form-control rounded" value="<? echo $question3; ?>">
								</div>
				
								<div class="form-group">
									<label>Weight *</label>
									<input name="question4" type="text" class="form-control rounded" value="<? echo $question4; ?>">
								</div>
				
								<div class="form-group">
									<label>Body type *</label>
									<input name="question5" type="text" class="form-control rounded" value="<? echo $question5; ?>">
								</div>
				
								<div class="form-group">
									<label>Eye color *</label>
									<input name="question6" type="text" class="form-control rounded" value="<? echo $question6; ?>">
								</div>
				
								<div class="form-group">
									<label>Hair color *</label>
									<input name="question7" type="text" class="form-control rounded" value="<? echo $question7; ?>">
								</div>
				
								<div class="form-group">
									<label>Education *</label>
									<input name="question8" type="text" class="form-control rounded" value="<? echo $question8; ?>">
								</div>
				
								<div class="form-group">
									<label>Attitude to smoking, alcohol, drugs *</label>
									<input name="question9" type="text" class="form-control rounded" value="<? echo $question9; ?>">
								</div>
				
								<div class="form-group">
									<label>Marital status *</label>
									<?php
										if($status_error_btn == "1")
										{
											echo('<input type="button" id="question10" class="btn btn-warning btn-xs" value="Ошибка при заполнении" onclick="someFunc(\'question10\',\'question10\')">');
										}
									?>
									<input name="question10" type="text" class="form-control rounded" value="<? echo $question10; ?>">
								</div>
				
								<div class="form-group">
									<label>What is your native language? *</label>
									<input name="question11" type="text" class="form-control rounded" value="<? echo $question11; ?>">
								</div>
				
								<div class="form-group">
									<label>What languages can you speak? *</label>
									<input name="question12" type="text" class="form-control rounded" value="<? echo $question12; ?>">
								</div>
				
								<div class="form-group">
									<label>Have children *</label>
									<?php
										if($status_error_btn == "1")
										{
											echo('<input type="button" id="question13" class="btn btn-warning btn-xs" value="Ошибка при заполнении" onclick="someFunc(\'question13\',\'question13\')">');
										}
									?>
									<input name="question13" type="text" class="form-control rounded" value="<? echo $question13; ?>">
								</div>
				
								<div class="form-group">
									<label>My character traits *</label>
									<?php
										if($status_error_btn == "1")
										{
											echo('<input type="button" id="question14" class="btn btn-warning btn-xs" value="Ошибка при заполнении" onclick="someFunc(\'question14\',\'question14\')">');
										}
									?>
									<input name="question14" type="text" class="form-control rounded" value="<? echo $question14; ?>">
								</div>
				
								<div class="form-group">
									<label>What do I expect from the search here? *</label>
									<?php
										if($status_error_btn == "1")
										{
											echo('<input type="button" id="question15" class="btn btn-warning btn-xs" value="Ошибка при заполнении" onclick="someFunc(\'question15\',\'question15\')">');
										}
									?>
									<input name="question15" type="text" class="form-control rounded" value="<? echo $question15; ?>">
								</div>
				
								<div class="form-group">
									<label>Profession</label>
									<?php
										if($status_error_btn == "1")
										{
											echo('<input type="button" id="question16" class="btn btn-warning btn-xs" value="Ошибка при заполнении" onclick="someFunc(\'question16\',\'question16\')">');
										}
									?>
									<input name="question16" type="text" class="form-control rounded" value="<? echo $question16; ?>">
								</div>
				
								<div class="form-group">
									<label>Occupation *</label>
									<?php
										if($status_error_btn == "1")
										{
											echo('<input type="button" id="question17" class="btn btn-warning btn-xs" value="Ошибка при заполнении" onclick="someFunc(\'question17\',\'question17\')">');
										}
									?>
									<input name="question17" type="text" class="form-control rounded" value="<? echo $question17; ?>">
								</div>
				
								<div class="form-group">
									<label>Which countries did you visit?</label>
									<?php
										if($status_error_btn == "1")
										{
											echo('<input type="button" id="question18" class="btn btn-warning btn-xs" value="Ошибка при заполнении" onclick="someFunc(\'question18\',\'question18\')">');
										}
									?>
									<input name="question18" type="text" class="form-control rounded" value="<? echo $question18; ?>">
								</div>
				
								<div class="form-group">
									<label>What countries would you like to visit?</label>
									<?php
										if($status_error_btn == "1")
										{
											echo('<input type="button" id="question19" class="btn btn-warning btn-xs" value="Ошибка при заполнении" onclick="someFunc(\'question19\',\'question19\')">');
										}
									?>
									<input name="question19" type="text" class="form-control rounded" value="<? echo $question19; ?>">
								</div>
				
								<div class="form-group">
									<label>Write briefly about yourself, about your lifestyle, your likes and dislikes</label>
									<?php
										if($status_error_btn == "1")
										{
											echo('<input type="button" id="question20" class="btn btn-warning btn-xs" value="Ошибка при заполнении" onclick="someFunc(\'question20\',\'question20\')">');
										}
									?>
									<input name="question20" type="text" class="form-control rounded" value="<? echo $question20; ?>">
								</div>
				
								<div class="form-group">
									<label>What are your hobbies and interests? *</label>
									<?php
										if($status_error_btn == "1")
										{
											echo('<input type="button" id="question21" class="btn btn-warning btn-xs" value="Ошибка при заполнении" onclick="someFunc(\'question21\',\'question21\')">');
										}
									?>
									<input name="question21" type="text" class="form-control rounded" value="<? echo $question21; ?>">
								</div>
				
								<div class="form-group">
									<label>Do you want children in a new relation? *</label>
									<input name="question22" type="text" class="form-control rounded" value="<? echo $question22; ?>">
								</div>
				
								<div class="form-group">
									<label>Describe your perfect morning (you are a night owl or an early bird?)</label>
									<?php
										if($status_error_btn == "1")
										{
											echo('<input type="button" id="question24" class="btn btn-warning btn-xs" value="Ошибка при заполнении" onclick="someFunc(\'question24\',\'question24\')">');
										}
									?>
									<input name="question24" type="text" class="form-control rounded" value="<? echo $question24; ?>">
								</div>
				
								<div class="form-group">
									<label>Describe your desired future (goals, lifestyle, relationships in the family) *</label>
									<?php
										if($status_error_btn == "1")
										{
											echo('<input type="button" id="question25" class="btn btn-warning btn-xs" value="Ошибка при заполнении" onclick="someFunc(\'question25\',\'question25\')">');
										}
									?>
									<input name="question25" type="text" class="form-control rounded" value="<? echo $question25; ?>">
								</div>
				
								<div class="form-group">
									<label>Attitude to pets</label>
									<?php
										if($status_error_btn == "1")
										{
											echo('<input type="button" id="question26" class="btn btn-warning btn-xs" value="Ошибка при заполнении" onclick="someFunc(\'question26\',\'question26\')">');
										}
									?>
									<input name="question26" type="text" class="form-control rounded" value="<? echo $question26; ?>">
								</div>
				
								<div class="form-group">
									<label>What could you forgive and what can not?</label>
									<?php
										if($status_error_btn == "1")
										{
											echo('<input type="button" id="question27" class="btn btn-warning btn-xs" value="Ошибка при заполнении" onclick="someFunc(\'question27\',\'question27\')">');
										}
									?>
									<input name="question27" type="text" class="form-control rounded" value="<? echo $question27; ?>">
								</div>
				
								<div class="form-group">
									<label>Why did you decide to choose an online dating site for your search?</label>
									<?php
										if($status_error_btn == "1")
										{
											echo('<input type="button" id="question28" class="btn btn-warning btn-xs" value="Ошибка при заполнении" onclick="someFunc(\'question28\',\'question28\')">');
										}
									?>
									<input name="question28" type="text" class="form-control rounded" value="<? echo $question28; ?>">
								</div>
				
								<div class="form-group">
									<label>Why do you think that you haven’t found a suitable partner yet?</label>
									<?php
										if($status_error_btn == "1")
										{
											echo('<input type="button" id="question29" class="btn btn-warning btn-xs" value="Ошибка при заполнении" onclick="someFunc(\'question29\',\'question29\')">');
										}
									?>
									<input name="question29" type="text" class="form-control rounded" value="<? echo $question29; ?>">
								</div>
				
								<hr><h3>Search criteria for your man</h3><hr>
				
								<div class="form-group">
									<label>Age Range *</label>
									<input name="question30" type="text" class="form-control rounded" value="<? echo $question30; ?>">
								</div>
				
								<div class="form-group">
									<label>Country</label>
									<input name="question31" type="text" class="form-control rounded" value="<? echo $question31; ?>">
								</div>
				
								<div class="form-group">
									<label>Height *</label>
									<input name="question32" type="text" class="form-control rounded" value="<? echo $question32; ?>">
								</div>
				
								<div class="form-group">
									<label>Weight *</label>
									<input name="question33" type="text" class="form-control rounded" value="<? echo $question33; ?>">
								</div>
				
								<div class="form-group">
									<label>Eye color *</label>
									<input name="question34" type="text" class="form-control rounded" value="<? echo $question34; ?>">
								</div>
				
								<div class="form-group">
									<label>Hair color *</label>
									<input name="question35" type="text" class="form-control rounded" value="<? echo $question35; ?>">
								</div>
				
								<div class="form-group">
									<label>Nationality *</label>
									<input name="question36" type="text" class="form-control rounded" value="<? echo $question36; ?>">
								</div>
				
								<div class="form-group">
									<label>Religion *</label>
									<input name="question37" type="text" class="form-control rounded" value="<? echo $question37; ?>">
								</div>
				
								<div class="form-group">
									<label>Have children *</label>
									<input name="question38" type="text" class="form-control rounded" value="<? echo $question38; ?>">
								</div>
				
								<div class="form-group">
									<label>Desired traits of character in a man *</label>
									<?php
										if($status_error_btn == "1")
										{
											echo('<input type="button" id="question39" class="btn btn-warning btn-xs" value="Ошибка при заполнении" onclick="someFunc(\'question39\',\'question39\')">');
										}
									?>
									<input name="question39" type="text" class="form-control rounded" value="<? echo $question39; ?>">
								</div>
				
								<div class="form-group">
									<label>Character traits that you can not be tolerate with *</label>
									<?php
										if($status_error_btn == "1")
										{
											echo('<input type="button" id="question40" class="btn btn-warning btn-xs" value="Ошибка при заполнении" onclick="someFunc(\'question40\',\'question40\')">');
										}
									?>
									<input name="question40" type="text" class="form-control rounded" value="<? echo $question40; ?>">
								</div>
				
								<div class="form-group">
									<label>Do you want the man to know your native language or another language in which you can communicate?</label>
									<input name="question41" type="text" class="form-control rounded" value="<? echo $question41; ?>">
								</div>
				
								<div class="form-group">
									<label>A man should prefer an active or passive rest?</label>
									<?php
										if($status_error_btn == "1")
										{
											echo('<input type="button" id="question42" class="btn btn-warning btn-xs" value="Ошибка при заполнении" onclick="someFunc(\'question42\',\'question42\')">');
										}
									?>
									<input name="question42" type="text" class="form-control rounded" value="<? echo $question42; ?>">
								</div>
				
								<div class="form-group">
									<label>Describe the man you would like to meet on our website. What is most important for you? *</label>
									<?php
										if($status_error_btn == "1")
										{
											echo('<input type="button" id="question43" class="btn btn-warning btn-xs" value="Ошибка при заполнении" onclick="someFunc(\'question43\',\'question43\')">');
										}
									?>
									<input name="question43" type="text" class="form-control rounded" value="<? echo $question43; ?>">
								</div>
				
								<div class="form-group">
									<label>Contact phone number *</label>
									<?php
										if($status_error_btn == "1")
										{
											echo('<input type="button" id="question44" class="btn btn-warning btn-xs" value="Ошибка при заполнении" onclick="someFunc(\'question44\',\'question44\')">');
										}
									?>
									<input name="question44" type="text" class="form-control rounded" value="<? echo $question44; ?>">
								</div>
				
								<div class="form-group">
									<label>Email address *</label>
									<?php
										if($status_error_btn == "1")
										{
											echo('<input type="button" id="question45" class="btn btn-warning btn-xs" value="Ошибка при заполнении" onclick="someFunc(\'question45\',\'question45\')">');
										}
									?>
									<input name="question45" type="email" class="form-control rounded" value="<? echo $question45; ?>">
								</div>
				
								<div class="form-group">
									<label>Viber/Skype/WhatsApp *</label>
									<?php
										if($status_error_btn == "1")
										{
											echo('<input type="button" id="question46" class="btn btn-warning btn-xs" value="Ошибка при заполнении" onclick="someFunc(\'question46\',\'question46\')">');
										}
									?>
									<input name="question46" type="text" class="form-control rounded" value="<? echo $question46; ?>">
								</div>
				
								<div class="form-group">
									<label>Do you have social nets? (If yes, please insert the link one of your social nets. Facebook Twitter Google+) *</label>
									<?php
										if($status_error_btn == "1")
										{
											echo('<input type="button" id="question47" class="btn btn-warning btn-xs" value="Ошибка при заполнении" onclick="someFunc(\'question47\',\'question47\')">');
										}
									?>
									<input name="question47" type="text" class="form-control rounded" value="<? echo $question47; ?>">
								</div>
				
								<div class="form-group">
									<label>Preferred days and time of communication with you</label>
									<?php
										if($status_error_btn == "1")
										{
											echo('<input type="button" id="question48" class="btn btn-warning btn-xs" value="Ошибка при заполнении" onclick="someFunc(\'question48\',\'question48\')">');
										}
									?>
									<input name="question48" type="text" class="form-control rounded" value="<? echo $question48; ?>">
								</div>

								<div class="form-group">
									<label>Information for men who order Skype conference with this lady *</label>
									<?php
										if($status_error_btn == "1")
										{
											echo('<input type="button" id="question49" class="btn btn-warning btn-xs" value="Ошибка при заполнении" onclick="someFunc(\'question49\',\'question49\')">');
										}
									?>
									<input name="question49" type="text" class="form-control rounded" value="<? echo $question49; ?>">
								</div>
								<?php
								if($status_match == "1") {
									echo('
									<div class="form-group">
										<label>URL Video</label>
										<input name="video" type="text" class="form-control rounded" value="'.$video.'">
									</div>
									');
								}
								?>

								<div class="form-group">
									<button type="submit" class="btn btn-success" >Редактировать</button>
								</div>
							</form>
							<hr>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	
	<div class="col-lg-12 col-md-12 col-xs-12">
		<hr>
		<h4>Загруженные фото:</h4>
		<div class="row">
			<?  
			
				$zapros_foto = "SELECT * FROM girls_foto WHERE girl_id='".$girl_id."'";
				$requirest_foto = mysql_query($zapros_foto);
				while($row_foto = mysql_fetch_array($requirest_foto)) 
					{  
						$girl_id = $row_foto['girl_id'];
						$foto_id = $row_foto['foto_id'];
						$foto = $row_foto['foto'];
						$status_foto = $row_foto['status_foto'];
						if($status_foto == 0)
							{
								$status_foto_print = "Приватное фото";
							}
						else
							{
								$status_foto_print = "Публичное фото";
							}
						
						////////////////////////////Вывод таблицы на экран для мачмеккера/////////////////////////////// 
						if($status_match == "1") {
							if($status_foto == 0)
							echo ("
									<div class='col-6 col-sm-6 col-lg-3'> 
										<table class='table table-striped'>
											<tr>
												<td>
													<a href='#' class='thumbnail'><img src='../$foto' width='150'></a>
													<a href='./function/girl_del_foto.php?foto_id=$foto_id&girl_id=$girl_id'><span style='font-size:22px; margin-left:10px;' class='glyphicon glyphicon-remove'></span></a> <a href='./function/girl_foto_status.php?foto_id=$foto_id&girl_id=$girl_id&status_foto_set=1'><span style='font-size:22px; margin-left:10px;' class='glyphicon glyphicon-eye-close'></span></a>
													<hr>
													<b>$status_foto_print</b> 
												</td>
											</tr>
										</table>
									</div>
								");
							if($status_foto == 1)
							echo ("
									<div class='col-6 col-sm-6 col-lg-3'> 
										<table class='table table-striped'>
											<tr>
												<td>
												<a href='#' class='thumbnail'><img src='../$foto' width='150'></a>
												<a href='./function/girl_del_foto.php?foto_id=$foto_id&girl_id=$girl_id'><span style='font-size:22px; margin-left:10px;' class='glyphicon glyphicon-remove'></span></a> <a href='./function/girl_foto_status.php?foto_id=$foto_id&girl_id=$girl_id&status_foto_set=0'><span style='font-size:22px; margin-left:10px;' class='glyphicon glyphicon-eye-open'></span></a>
													<hr>
													<b>$status_foto_print</b> 
												</td>
											</tr>
										</table>
									</div>
								");
						}
						/////////////////////////////////////////////////////////////////////////////////////////////

						////////////////////////////Вывод таблицы на экран для агенства/////////////////////////////// 
						if($status_match == "0") {	
							echo ("
									<div class='col-6 col-sm-6 col-lg-3'> 
										<table class='table table-striped'>
											<tr>
												<td>
													<a href='#' class='thumbnail'><img src='../$foto' width='150' /></a>
													<br>
													<b> $status_foto_print</b>
												</td>
											</tr>
										</table>
									</div>
								");
						
						}
						/////////////////////////////////////////////////////////////////////////////////////////////
					}
			?>
		</div>
		<hr>
		<h4>Добавить фотографию в галерею:</h4>
		<form name='form' enctype='multipart/form-data' method='post' action='./function/girl_add_foto2.php'>
			<input name="girl_id" type="hidden" value="<? echo $girl_id ?>">
			<p class="text-left">
				<input type='file' name='file'/>
				<br>
				<button type="submit" class="btn btn-success btn-md" data-original-title="" title="">Добавить фотографию</button>
			</p>
		</form>
	</div>
	</div>
</div>


<div class="modal fade" id="image-modal" tabindex="-1" role="dialog">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button>
                <div class="modal-title">Просмотр изображения</div>
            </div>
            <div class="modal-body">
                <img class="img-responsive center-block" src="" alt="">
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">Закрыть</button>
            </div>
        </div>
    </div>
</div>

</body>

</html>
