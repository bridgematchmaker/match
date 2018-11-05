<?php

include ("../connect.php");

$first_name = $_POST['first_name'];
$last_name = $_POST['last_name'];
$email = $_POST['email'];

$date_add = date("Y-m-d G:i:s");

$question1 = $_POST['question1'] ;
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

if ($question1 !== 'Yes') { $question1 = 'No'; }
if ($question2 !== 'Yes') { $question2 = 'No'; }
if ($question3 !== 'Yes') { $question3 = 'No'; }
if ($question4 !== 'Yes') { $question4 = 'No'; }
if ($question5 !== 'Yes') { $question5 = 'No'; }
if ($question6 !== 'Yes') { $question6 = 'No'; }
if ($question7 !== 'Yes') { $question7 = 'No'; }
if ($question8 !== 'Yes') { $question8 = 'No'; }
if ($question9 !== 'Yes') { $question9 = 'No'; }
if ($question10 !== 'Yes') { $question10 = 'No'; }
if ($question11 !== 'Yes') { $question11 = 'No'; }
if ($question12 !== 'Yes') { $question12 = 'No'; }
if ($question13 !== 'Yes') { $question13 = 'No'; }
if ($question14 !== 'Yes') { $question14 = 'No'; }

/////////////Фильтрация///////////////////
$first_name = htmlspecialchars($first_name);
$first_name = mysql_escape_string($first_name);

$last_name = htmlspecialchars($last_name);
$last_name = mysql_escape_string($last_name);

$email = htmlspecialchars($email);
$email = mysql_escape_string($email);

$sql = "INSERT INTO request_tour (date_add, first_name, last_name, email, question1, question2, question3, question4, question5, question6, question7, question8, question9, question10, question11, question12, question13, question14) VALUES ('$date_add', '$first_name', '$last_name', '$email', '$question1', '$question2', '$question3', '$question4', '$question5', '$question6', '$question7', '$question8', '$question9', '$question10', '$question11', '$question12', '$question13', '$question14')";
$result = mysql_query($sql) or die("Ошибка при записи в таблицу. - ".mysql_error());

/////////////////Перенаправление в анкету///////////////
echo	("
			<script>alert('Your request has been processed');</script><script>javascript:window.location='../index.php'</script>
		");
///////////////////////////////////////////////////////
?>