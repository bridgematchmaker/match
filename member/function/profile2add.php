<?
session_start();
isset($_SESSION['email_client']) or die("<script>javascript:window.location='../../login.php'</script>");

include ("../../connect.php");

////////////////Переменные////////////////
$question17 = $_POST['question17'];
$question18 = $_POST['question18'];
$question19_1 = $_POST['question19_1'];
$question19_2 = $_POST['question19_2'];
$question19_3 = $_POST['question19_3'];
$question19_4 = $_POST['question19_4'];
$question19_5 = $_POST['question19_5'];
$question19_6 = $_POST['question19_6'];
$question19_7 = $_POST['question19_7'];
$question19_8 = $_POST['question19_8'];
$question19_9 = $_POST['question19_9'];
$question19_10 = $_POST['question19_10'];
$question19_11 = $_POST['question19_11'];
$question20 = $_POST['question20'];
$question21 = $_POST['question21'];
$question22 = $_POST['question22'];
$question23 = $_POST['question23'];
$question24_1 = $_POST['question24_1'];
$question24_2 = $_POST['question24_2'];
$question24_3 = $_POST['question24_3'];
$question24_4 = $_POST['question24_4'];
$question24_5 = $_POST['question24_5'];
$question24_6 = $_POST['question24_6'];
$question24_7 = $_POST['question24_7'];
$question24_8 = $_POST['question24_8'];
$question25_1 = $_POST['question25_1'];
$question25_2 = $_POST['question25_2'];
$question25_3 = $_POST['question25_3'];
$question25_4 = $_POST['question25_4'];
$question26_1 = $_POST['question26_1'];
$question26_2 = $_POST['question26_2'];
$question26_3 = $_POST['question26_3'];
$question26_4 = $_POST['question26_4'];
$question26_5 = $_POST['question26_5'];
$question26_6 = $_POST['question26_6'];
$question26_7 = $_POST['question26_7'];
$question26_8 = $_POST['question26_8'];
$question26_9 = $_POST['question26_9'];
$question26_10 = $_POST['question26_10'];
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
$question49_1 = $_POST['question49_1'];
$question49_2 = $_POST['question49_2'];
$question49_3 = $_POST['question49_3'];
$question50 = $_POST['question50'];


$user_id = $_POST['user_id'];
$date_read = date("Y-m-d");

/////////////Фильтрация///////////////////
$question17 = htmlspecialchars($question17);
$question17 = mysql_escape_string($question17);

$question18 = htmlspecialchars($question18);
$question18 = mysql_escape_string($question18);

$question19_1 = htmlspecialchars($question19_1);
$question19_1 = mysql_escape_string($question19_1);

$question19_2 = htmlspecialchars($question19_2);
$question19_2 = mysql_escape_string($question19_2);

$question19_3 = htmlspecialchars($question19_3);
$question19_3 = mysql_escape_string($question19_3);

$question19_4 = htmlspecialchars($question19_4);
$question19_4 = mysql_escape_string($question19_4);

$question19_5 = htmlspecialchars($question19_5);
$question19_5 = mysql_escape_string($question19_5);

$question19_6 = htmlspecialchars($question19_6);
$question19_6 = mysql_escape_string($question19_6);

$question19_7 = htmlspecialchars($question19_7);
$question19_7 = mysql_escape_string($question19_7);

$question19_8 = htmlspecialchars($question19_8);
$question19_8 = mysql_escape_string($question19_8);

$question19_9 = htmlspecialchars($question19_9);
$question19_9 = mysql_escape_string($question19_9);

$question19_10 = htmlspecialchars($question19_10);
$question19_10 = mysql_escape_string($question19_10);

$question19_11 = htmlspecialchars($question19_11);
$question19_11 = mysql_escape_string($question19_11);

$question20 = htmlspecialchars($question20);
$question20 = mysql_escape_string($question20);

$question21 = htmlspecialchars($question21);
$question21 = mysql_escape_string($question21);

$question22 = htmlspecialchars($question22);
$question22 = mysql_escape_string($question22);

$question23 = htmlspecialchars($question23);
$question23 = mysql_escape_string($question23);

$question24_1 = htmlspecialchars($question24_1);
$question24_1 = mysql_escape_string($question24_1);

$question24_2 = htmlspecialchars($question24_2);
$question24_2 = mysql_escape_string($question24_2);

$question24_3 = htmlspecialchars($question24_3);
$question24_3 = mysql_escape_string($question24_3);

$question24_4 = htmlspecialchars($question24_4);
$question24_4 = mysql_escape_string($question24_4);

$question24_5 = htmlspecialchars($question24_5);
$question24_5 = mysql_escape_string($question24_5);

$question24_6 = htmlspecialchars($question24_6);
$question24_6 = mysql_escape_string($question24_6);

$question24_7 = htmlspecialchars($question24_7);
$question24_7 = mysql_escape_string($question24_7);

$question24_8 = htmlspecialchars($question24_8);
$question24_8 = mysql_escape_string($question24_8);

$question25_1 = htmlspecialchars($question25_1);
$question25_1 = mysql_escape_string($question25_1);

$question25_2 = htmlspecialchars($question25_2);
$question25_2 = mysql_escape_string($question25_2);

$question25_3 = htmlspecialchars($question25_3);
$question25_3 = mysql_escape_string($question25_3);

$question25_4 = htmlspecialchars($question25_4);
$question25_4 = mysql_escape_string($question25_4);

$question26_1 = htmlspecialchars($question26_1);
$question26_1 = mysql_escape_string($question26_1);

$question26_2 = htmlspecialchars($question26_2);
$question26_2 = mysql_escape_string($question26_2);

$question26_3 = htmlspecialchars($question26_3);
$question26_3 = mysql_escape_string($question26_3);

$question26_4 = htmlspecialchars($question26_4);
$question26_4 = mysql_escape_string($question26_4);

$question26_5 = htmlspecialchars($question26_5);
$question26_5 = mysql_escape_string($question26_5);

$question26_6 = htmlspecialchars($question26_6);
$question26_6 = mysql_escape_string($question26_6);

$question26_7 = htmlspecialchars($question26_7);
$question26_7 = mysql_escape_string($question26_7);

$question26_8 = htmlspecialchars($question26_8);
$question26_8 = mysql_escape_string($question26_8);

$question26_9 = htmlspecialchars($question26_9);
$question26_9 = mysql_escape_string($question26_9);

$question26_10 = htmlspecialchars($question26_10);
$question26_10 = mysql_escape_string($question26_10);

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

$question50 = htmlspecialchars($question50);
$question50 = mysql_escape_string($question50);

$user_id = htmlspecialchars($user_id);
$user_id = mysql_escape_string($user_id);


if($question19_1 == "1") { $question19 = $question19."Watching movies; "; }
if($question19_2 == "1") { $question19 = $question19."Listening to music; "; }
if($question19_3 == "1") { $question19 = $question19."Watching TV; "; }
if($question19_4 == "1") { $question19 = $question19."Reading; "; }
if($question19_5 == "1") { $question19 = $question19."Parties; "; }
if($question19_6 == "1") { $question19 = $question19."Traveling; "; }
if($question19_7 == "1") { $question19 = $question19."Shopping; "; }
if($question19_8 == "1") { $question19 = $question19."Talking with friends; "; }
if($question19_9 == "1") { $question19 = $question19."Religious Community; "; }
if($question19_10 == "1") { $question19 = $question19."Conversation; "; }
if($question19_11 == "1") { $question19 = $question19."Hosting / Entertaining; "; }

if($question24_1 == "1") { $question24 = $question24."I do things according to my plan; "; }
if($question24_2 == "1") { $question24 = $question24."I take time out for others; "; }
if($question24_3 == "1") { $question24 = $question24."I seek adventure; "; }
if($question24_4 == "1") { $question24 = $question24."I desire sexual activity; "; }
if($question24_5 == "1") { $question24 = $question24."I think it is important to improve myself; "; }
if($question24_6 == "1") { $question24 = $question24."I care about the physical shape I am in; "; }
if($question24_7 == "1") { $question24 = $question24."I feel better when I am around other people; "; }
if($question24_8 == "1") { $question24 = $question24."I get angry easily; "; }

if($question25_1 == "1") { $question25 = $question25."I Creating romance in a relationship; "; }
if($question25_2 == "1") { $question25 = $question25."Keeping physically fit; "; }
if($question25_3 == "1") { $question25 = $question25."Finding and taking on challenging activities; "; }
if($question25_4 == "1") { $question25 = $question25."Finding compromise in relationship; "; }

if($question26_1 == "1") { $question26 = $question26."When I get romantically involved, I tell about everything to my partner; "; }
if($question26_2 == "1") { $question26 = $question26."A serious relationship needs to be monogamous; "; }
if($question26_3 == "1") { $question26 = $question26."I know I can always count on the people who are closest to me; "; }
if($question26_4 == "1") { $question26 = $question26."I dont need to have close relationships to be happy; "; }
if($question26_5 == "1") { $question26 = $question26."To my mind being monogamous helps build trust in a romantic relationship; "; }
if($question26_6 == "1") { $question26 = $question26."People often let me down if I depend on them; "; }
if($question26_7 == "1") { $question26 = $question26."It is important for me to have close friends in my life; "; }
if($question26_8 == "1") { $question26 = $question26."Being monogamous is one of benefits of being in a successful relationship; "; }
if($question26_9 == "1") { $question26 = $question26."I sometimes find it difficult to trust people I get romantic relation; "; }
if($question26_10 == "1") { $question26 = $question26."I find it easy to get emotionally close to people; "; }

if($question49_1 == "1") { $question49 = $question49."Viber; "; }
if($question49_2 == "1") { $question49 = $question49."WhatsApp; "; }
if($question49_3 == "1") { $question49 = $question49."Telegram; "; }


$sql = "UPDATE clients SET status_anketa2='1' WHERE user_id='".$user_id."'";
$sql2 = "UPDATE questions SET question17='".$question17."', question18='".$question18."', question19='".$question19."', question20='".$question20."', question21='".$question21."', question22='".$question22."', question23='".$question23."', question24='".$question24."', question25='".$question25."', question26='".$question26."', question27='".$question27."', question28='".$question28."', question29='".$question29."', question30='".$question30."', question31='".$question31."', question32='".$question32."', question33='".$question33."', question34='".$question34."', question35='".$question35."', question36='".$question36."', question37='".$question37."', question38='".$question38."', question39='".$question39."', question40='".$question40."', question41='".$question41."', question42='".$question42."', question43='".$question43."', question44='".$question44."', question45='".$question45."', question46='".$question46."', question47='".$question47."', question48='".$question48."', question49='".$question49."', question50='".$question50."' WHERE client_id='".$user_id."'";
////////////////Вносим изменения в анкету//////////////
$result = mysql_query($sql) or die("<script>alert('Ошибка при записи в таблицу 1');</script><script>javascript:window.location='../index.php'</script>");
$result2 = mysql_query($sql2) or die("<script>alert('Ошибка при записи в таблицу 2');</script><script>javascript:window.location='../index.php'</script>");
///////////////////////////////////////////////////////

/////////////////Перенаправление в анкету///////////////
echo	("
			<script>alert('Profile saved. Thank you!');</script><script>javascript:window.location='../index.php'</script>
		");
///////////////////////////////////////////////////////


?>