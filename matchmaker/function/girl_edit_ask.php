<?
session_start();
isset($_SESSION['login_match']) or die("<script>javascript:window.location='../index.php'</script>");

include ("../../connect.php");

////////////////Переменные////////////////
$girl_id = $_POST['girl_id'];

$ask1 = $_POST['ask1'];
$ask2 = $_POST['ask2'];
$ask3 = $_POST['ask3'];
$ask4 = $_POST['ask4'];
$ask5 = $_POST['ask5'];
$ask6 = $_POST['ask6'];
$ask7 = $_POST['ask7'];
$ask8 = $_POST['ask8'];
$ask9 = $_POST['ask9'];
$ask10 = $_POST['ask10'];
$ask11 = $_POST['ask11'];
$ask12 = $_POST['ask12'];
$ask13 = $_POST['ask13'];
$ask14 = $_POST['ask14'];
$ask15 = $_POST['ask15'];
$ask16 = $_POST['ask16'];
$ask17 = $_POST['ask17'];
$ask18 = $_POST['ask18'];
$ask19 = $_POST['ask19'];
$ask20 = $_POST['ask20'];
$ask21 = $_POST['ask21'];
$ask22 = $_POST['ask22'];
$ask23 = $_POST['ask23'];
$ask24 = $_POST['ask24'];
$ask25 = $_POST['ask25'];
$ask26 = $_POST['ask26'];
$ask27 = $_POST['ask27'];
$ask28 = $_POST['ask28'];
$ask29 = $_POST['ask29'];
$ask30 = $_POST['ask30'];


//////////////////////////////////////////


/////////////Фильтрация///////////////////
$girl_id = htmlspecialchars($girl_id);
$girl_id = mysql_escape_string($girl_id);



$ask1 = htmlspecialchars($ask1);
$ask1 = mysql_escape_string($ask1);

$ask2 = htmlspecialchars($ask2);
$ask2 = mysql_escape_string($ask2);

$ask3 = htmlspecialchars($ask3);
$ask3 = mysql_escape_string($ask3);

$ask4 = htmlspecialchars($ask4);
$ask4 = mysql_escape_string($ask4);

$ask5 = htmlspecialchars($ask5);
$ask5 = mysql_escape_string($ask5);

$ask6 = htmlspecialchars($ask6);
$ask6 = mysql_escape_string($ask6);

$ask7 = htmlspecialchars($ask7);
$ask7 = mysql_escape_string($ask7);

$ask8 = htmlspecialchars($ask8);
$ask8 = mysql_escape_string($ask8);

$ask9 = htmlspecialchars($ask9);
$ask9 = mysql_escape_string($ask9);

$ask10 = htmlspecialchars($ask10);
$ask10 = mysql_escape_string($ask10);

$ask11 = htmlspecialchars($ask11);
$ask11 = mysql_escape_string($ask11);

$ask12 = htmlspecialchars($ask12);
$ask12 = mysql_escape_string($ask12);

$ask13 = htmlspecialchars($ask13);
$ask13 = mysql_escape_string($ask13);

$ask14 = htmlspecialchars($ask14);
$ask14 = mysql_escape_string($ask14);

$ask15 = htmlspecialchars($ask15);
$ask15 = mysql_escape_string($ask15);

$ask16 = htmlspecialchars($ask16);
$ask16 = mysql_escape_string($ask16);

$ask17 = htmlspecialchars($ask17);
$ask17 = mysql_escape_string($ask17);

$ask18 = htmlspecialchars($ask18);
$ask18 = mysql_escape_string($ask18);

$ask19 = htmlspecialchars($ask19);
$ask19 = mysql_escape_string($ask19);

$ask20 = htmlspecialchars($ask20);
$ask20 = mysql_escape_string($ask20);

$ask21 = htmlspecialchars($ask21);
$ask21 = mysql_escape_string($ask21);

$ask22 = htmlspecialchars($ask22);
$ask22 = mysql_escape_string($ask22);

$ask23 = htmlspecialchars($ask23);
$ask23 = mysql_escape_string($ask23);

$ask24 = htmlspecialchars($ask24);
$ask24 = mysql_escape_string($ask24);

$ask25 = htmlspecialchars($ask25);
$ask25 = mysql_escape_string($ask25);

$ask26 = htmlspecialchars($ask26);
$ask26 = mysql_escape_string($ask26);

$ask27 = htmlspecialchars($ask27);
$ask27 = mysql_escape_string($ask27);

$ask28 = htmlspecialchars($ask28);
$ask28 = mysql_escape_string($ask28);

$ask29 = htmlspecialchars($ask29);
$ask29 = mysql_escape_string($ask29);

$ask30 = htmlspecialchars($ask30);
$ask30 = mysql_escape_string($ask30);


/////////////////////////////////////////////



/////////////SQL запрос//////////////////////
$sql = "UPDATE girls SET ask1='".$ask1."', ask2='".$ask2."', ask3='".$ask3."', ask4='".$ask4."', ask5='".$ask5."', ask6='".$ask6."', ask7='".$ask7."', ask8='".$ask8."', ask9='".$ask9."', ask10='".$ask10."', ask11='".$ask11."', ask12='".$ask12."', ask13='".$ask13."', ask14='".$ask14."', ask15='".$ask15."', ask16='".$ask16."', ask17='".$ask17."', ask18='".$ask18."', ask19='".$ask19."', ask20='".$ask20."', ask21='".$ask21."', ask22='".$ask22."', ask23='".$ask23."', ask24='".$ask24."', ask25='".$ask25."', ask26='".$ask26."', ask27='".$ask27."', ask28='".$ask28."', ask29='".$ask29."', ask30='".$ask30."' WHERE girl_id='".$girl_id."'";
/////////////////////////////////////////////
$result = mysql_query($sql) or die("Ошибка при записи в базу");
///////////////////////////////////////////
echo "<script>alert('Профиль успешно отредактирован');</script><script>javascript:window.location='../girl_profile.php?girl_id=".$girl_id."'</script>";			

	
?>