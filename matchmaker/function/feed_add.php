<?
session_start();
isset($_SESSION['login_match']) or die("<script>javascript:window.location='../index.php'</script>");

include ("../../connect.php");


////////////////Переменные////////////////
$match_add_login = $_SESSION['login_match'];

$girl_id = $_POST['girl_id'];
$match_add = $_POST['match_add'];
$type = $_POST['type'];
$description = $_POST['description'];
$video = $_POST['video'];
$video_description = $_POST['video_description'];
$day_status = $_POST['day_status'];
$day_rating = $_POST['day_rating'];
$day_description = $_POST['day_description'];
$question_girl = $_POST['question_girl'];
$question_match = $_POST['question_match'];
$question_rating = $_POST['question_rating'];
$relation_description = $_POST['relation_description'];
$relation_man = $_POST['relation_man'];
$relation_girl = $_POST['relation_girl'];
$present_property = $_POST['present_property'];
$present_description = $_POST['present_description'];

/////////////Фильтрация///////////////////
$girl_id = htmlspecialchars($girl_id);
$girl_id = mysql_escape_string($girl_id);

$match_add = htmlspecialchars($match_add);
$match_add = mysql_escape_string($match_add);

$type = htmlspecialchars($type);
$type = mysql_escape_string($type);

$description = htmlspecialchars($description);
$description = mysql_escape_string($description);

$video = htmlspecialchars($video);
$video = mysql_escape_string($video);

$video_description = htmlspecialchars($video_description);
$video_description = mysql_escape_string($video_description);

$day_status = htmlspecialchars($day_status);
$day_status = mysql_escape_string($day_status);

$day_rating = htmlspecialchars($day_rating);
$day_rating = mysql_escape_string($day_rating);

$day_description = htmlspecialchars($day_description);
$day_description = mysql_escape_string($day_description);

$question_girl = htmlspecialchars($question_girl);
$question_girl = mysql_escape_string($question_girl);

$question_match = htmlspecialchars($question_match);
$question_match = mysql_escape_string($question_match);

$question_rating = htmlspecialchars($question_rating);
$question_rating = mysql_escape_string($question_rating);

$relation_description = htmlspecialchars($relation_description);
$relation_description = mysql_escape_string($relation_description);

$relation_man = htmlspecialchars($relation_man);
$relation_man = mysql_escape_string($relation_man);

$relation_girl = htmlspecialchars($relation_girl);
$relation_girl = mysql_escape_string($relation_girl);

$present_property = htmlspecialchars($present_property);
$present_property = mysql_escape_string($present_property);

$present_description = htmlspecialchars($present_description);
$present_description = mysql_escape_string($present_description);

////////////////////////////////////////////


switch ($type)
    {
        case 2:
            $zapros = "INSERT INTO feeds (match_add, match_add_login, type, girl_id, description, video, video_description) VALUES ('$match_add', '$match_add_login', '$type', '$girl_id', '$description', '$video', '$video_description')";
        break;

        case 3:
            $zapros = "INSERT INTO feeds (match_add, match_add_login, type, girl_id, description, day_status, day_rating, day_description) VALUES ('$match_add', '$match_add_login', '$type', '$girl_id', '$description', '$day_status', '$day_rating', '$day_description')";
        break;

        case 5:
            $zapros = "INSERT INTO feeds (match_add, match_add_login, type, girl_id, description, question_girl, question_match, question_rating) VALUES ('$match_add', '$match_add_login', '$type', '$girl_id', '$description', '$question_girl', '$question_match', '$question_rating')";
        break;
        
        case 6:
            $zapros = "INSERT INTO feeds (match_add, match_add_login, type, girl_id, description, relation_description, relation_man, relation_girl) VALUES ('$match_add', '$match_add_login', '$type', '$girl_id', '$description', '$relation_description', '$relation_man', '$relation_girl')";
        break;
        
        case 7:
            $zapros = "INSERT INTO feeds (match_add, match_add_login, type, girl_id, description, present_property, present_description) VALUES ('$match_add', '$match_add_login', '$type', '$girl_id', '$description', '$present_property', '$present_description')";
        break;
    }

$result = mysql_query($zapros) or die("Ошибка при записи в базу");
echo "<script>alert('Событие успешно создано');</script><script>javascript:window.location='../feeds.php'</script>";
?>