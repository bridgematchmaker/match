<?
session_start();
isset($_SESSION['login_match']) or die("<script>javascript:window.location='../index.php'</script>");

include ("../../connect.php");

if(empty($_POST['first_name']) or empty($_POST['last_name']) or empty($_POST['country']) or empty($_POST['city']) or empty($_POST['question2']) or empty($_POST['birthday']) or empty($_POST['question3']) or empty($_POST['question4']) or empty($_POST['question5']) or empty($_POST['question6']) or empty($_POST['question7']) or empty($_POST['question8']) or empty($_POST['question9']) or empty($_POST['question10']) or empty($_POST['question11']) or empty($_POST['question12']) or empty($_POST['question13']) or empty($_POST['question14']) or empty($_POST['question15']) or empty($_POST['question17']) or empty($_POST['question21']) or empty($_POST['question22']) or empty($_POST['question25']) or empty($_POST['question30']) or empty($_POST['question32']) or empty($_POST['question33']) or empty($_POST['question34']) or empty($_POST['question35']) or empty($_POST['question36']) or empty($_POST['question37']) or empty($_POST['question38']) or empty($_POST['question39']) or empty($_POST['question40']) or empty($_POST['question43']) or empty($_POST['question44']) or empty($_POST['question45']) or empty($_POST['question46']) or empty($_POST['question47']) or empty($_POST['question49'])) 
	{ 
		echo("
			<script>alert('Заполните все обязательные поля');</script>
			<script>javascript:window.location='../girl_add.php'</script>
		");
	exit();
	} 


////////////////Переменные////////////////
$login_match = $_POST['login_match'];
$first_name = $_POST['first_name'];
$last_name = $_POST['last_name'];
$country = $_POST['country'];
$city = $_POST['city'];
$birthday = $_POST['birthday'];
$video = $_POST['video'];

$question1 = $_POST['question1'];
$question2 = $_POST['question2'];
$question3 = $_POST['question3'];
$question4 = $_POST['question4'];
$question5 = $_POST['question5'];
$question6 = $_POST['question6'];
$question7 = $_POST['question7'];
$question8 = $_POST['question8'];
$question9 = $_POST['question9'];
$question10 = $_POST['question10'];
$question11 = $_POST['question11'];
$question12 = $_POST['question12'];
$question13 = $_POST['question13'];
$question14 = $_POST['question14'];
$question15 = $_POST['question15'];
$question16 = $_POST['question16'];
$question17 = $_POST['question17'];
$question18 = $_POST['question18'];
$question19 = $_POST['question19'];
$question20 = $_POST['question20'];
$question21 = $_POST['question21'];
$question22 = $_POST['question22'];
$question23 = $_POST['question23'];
$question24 = $_POST['question24'];
$question25 = $_POST['question25'];
$question26 = $_POST['question26'];
$question27 = $_POST['question27'];
$question28 = $_POST['question28'];
$question29 = $_POST['question29'];
$question30 = $_POST['question30'];
$question31 = $_POST['question31'];
$question32 = $_POST['question32'];
$question33 = $_POST['question33'];
$question34 = $_POST['question34'];
$question35 = $_POST['question35'];
$question36 = $_POST['question36'];
$question37 = $_POST['question37'];
$question38 = $_POST['question38'];
$question39 = $_POST['question39'];
$question40 = $_POST['question40'];
$question41 = $_POST['question41'];
$question42 = $_POST['question42'];
$question43 = $_POST['question43'];
$question44 = $_POST['question44'];
$question45 = $_POST['question45'];
$question46 = $_POST['question46'];
$question47 = $_POST['question47'];
$question48 = $_POST['question48'];
$question49 = $_POST['question49'];

//////////////////////////////////////////


/////////////Фильтрация///////////////////
$first_name = htmlspecialchars($first_name);
$first_name = mysql_escape_string($first_name);

$last_name = htmlspecialchars($last_name);
$last_name = mysql_escape_string($last_name);

$country = htmlspecialchars($country);
$country = mysql_escape_string($country);

$city = htmlspecialchars($city);
$city = mysql_escape_string($city);

$birthday = htmlspecialchars($birthday);
$birthday = mysql_escape_string($birthday);

$video = htmlspecialchars($video);
$video = mysql_escape_string($video);

$question1 = htmlspecialchars($question1);
$question1 = mysql_escape_string($question1);

$question2 = htmlspecialchars($question2);
$question2 = mysql_escape_string($question2);

$question3 = htmlspecialchars($question3);
$question3 = mysql_escape_string($question3);

$question4 = htmlspecialchars($question4);
$question4 = mysql_escape_string($question4);

$question5 = htmlspecialchars($question5);
$question5 = mysql_escape_string($question5);

$question6 = htmlspecialchars($question6);
$question6 = mysql_escape_string($question6);

$question7 = htmlspecialchars($question7);
$question7 = mysql_escape_string($question7);

$question8 = htmlspecialchars($question8);
$question8 = mysql_escape_string($question8);

$question9 = htmlspecialchars($question9);
$question9 = mysql_escape_string($question9);

$question10 = htmlspecialchars($question10);
$question10 = mysql_escape_string($question10);

$question11 = htmlspecialchars($question11);
$question11 = mysql_escape_string($question11);

$question12 = htmlspecialchars($question12);
$question12 = mysql_escape_string($question12);

$question13 = htmlspecialchars($question13);
$question13 = mysql_escape_string($question13);

$question14 = htmlspecialchars($question14);
$question14 = mysql_escape_string($question14);

$question15 = htmlspecialchars($question15);
$question15 = mysql_escape_string($question15);

$question16 = htmlspecialchars($question16);
$question16 = mysql_escape_string($question16);

$question17 = htmlspecialchars($question17);
$question17 = mysql_escape_string($question17);

$question18 = htmlspecialchars($question18);
$question18 = mysql_escape_string($question18);

$question19 = htmlspecialchars($question19);
$question19 = mysql_escape_string($question19);

$question20 = htmlspecialchars($question20);
$question20 = mysql_escape_string($question20);

$question21 = htmlspecialchars($question21);
$question21 = mysql_escape_string($question21);

$question22 = htmlspecialchars($question22);
$question22 = mysql_escape_string($question22);

$question23 = htmlspecialchars($question23);
$question23 = mysql_escape_string($question23);

$question24 = htmlspecialchars($question24);
$question24 = mysql_escape_string($question24);

$question25 = htmlspecialchars($question25);
$question25 = mysql_escape_string($question25);

$question26 = htmlspecialchars($question26);
$question26 = mysql_escape_string($question26);

$question27 = htmlspecialchars($question27);
$question27 = mysql_escape_string($question27);

$question28 = htmlspecialchars($question28);
$question28 = mysql_escape_string($question28);

$question29 = htmlspecialchars($question29);
$question29 = mysql_escape_string($question29);

$question30 = htmlspecialchars($question30);
$question30 = mysql_escape_string($question30);

$question31 = htmlspecialchars($question31);
$question31 = mysql_escape_string($question31);

$question32 = htmlspecialchars($question32);
$question32 = mysql_escape_string($question32);

$question33 = htmlspecialchars($question33);
$question33 = mysql_escape_string($question33);

$question34 = htmlspecialchars($question34);
$question34 = mysql_escape_string($question34);

$question35 = htmlspecialchars($question35);
$question35 = mysql_escape_string($question35);

$question36 = htmlspecialchars($question36);
$question36 = mysql_escape_string($question36);

$question37 = htmlspecialchars($question37);
$question37 = mysql_escape_string($question37);

$question38 = htmlspecialchars($question38);
$question38 = mysql_escape_string($question38);

$question39 = htmlspecialchars($question39);
$question39 = mysql_escape_string($question39);

$question40 = htmlspecialchars($question40);
$question40 = mysql_escape_string($question40);

$question41 = htmlspecialchars($question41);
$question41 = mysql_escape_string($question41);

$question42 = htmlspecialchars($question42);
$question42 = mysql_escape_string($question42);

$question43 = htmlspecialchars($question43);
$question43 = mysql_escape_string($question43);

$question44 = htmlspecialchars($question44);
$question44 = mysql_escape_string($question44);

$question45 = htmlspecialchars($question45);
$question45 = mysql_escape_string($question45);

$question46 = htmlspecialchars($question46);
$question46 = mysql_escape_string($question46);

$question47 = htmlspecialchars($question47);
$question47 = mysql_escape_string($question47);

$question48 = htmlspecialchars($question48);
$question48 = mysql_escape_string($question48);

$question49 = htmlspecialchars($question49);
$question49 = mysql_escape_string($question49);

/////////////////////////////////////////////

//////////Проверка на повторы в базе/////////

$result_repeat = mysql_query("SELECT * FROM girls WHERE question45='$question45';");

$num = mysql_num_rows($result_repeat);
if($num > 0) 
	{ 
		echo("
			<script>alert('Пользователь с таким E-Mail уже существует');</script>
			<script>javascript:window.location='../girl_add.php'</script>
		");
	exit();
	} 

/////////////////////////////////////////////


/////////////SQL запрос//////////////////////
$sql = "INSERT INTO girls (first_name, last_name, country, city, birthday, video, login_match, question1, question2, question3, question4, question5, question6, question7, question8, question9, question10, question11, question12, question13, question14, question15, question16, question17, question18, question19, question20, question21, question22, question23, question24, question25, question26, question27, question28, question29, question30, question31, question32, question33, question34, question35, question36, question37, question38, question39, question40, question41, question42, question43, question44, question45, question46, question47, question48, question49) VALUES ('$first_name', '$last_name', '$country', '$city', '$birthday', '$video', '$login_match', '$question1', '$question2', '$question3', '$question4', '$question5', '$question6', '$question7', '$question8', '$question9', '$question10', '$question11', '$question12', '$question13', '$question14', '$question15', '$question16', '$question17', '$question18', '$question19', '$question20', '$question21', '$question22', '$question23', '$question24', '$question25', '$question26', '$question27', '$question28', '$question29', '$question30', '$question31', '$question32', '$question33', '$question34', '$question35', '$question36', '$question37', '$question38', '$question39', '$question40', '$question41', '$question42', '$question43', '$question44', '$question45', '$question46', '$question47', '$question48', '$question49')";
/////////////////////////////////////////////
$result = mysql_query($sql) or die("Ошибка при записи в базу");
///////////загружем id новой девушки//////////
$zapros = "SELECT * FROM girls WHERE question45='$question45';";
$requirest = mysql_query($zapros);
while($row = mysql_fetch_array($requirest)) { $girl_id = $row['girl_id']; }
///////////////////////////////////////////
echo "<script>alert('Профиль успешно создан');</script><script>javascript:window.location='../girl_profile.php?girl_id=".$girl_id."'</script>";			

	
?>