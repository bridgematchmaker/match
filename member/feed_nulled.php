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
        <!-- Bootstrap -->
        <link href="assets/css/bootstrap.min.css" rel="stylesheet" type="text/css">
        <!-- Font Awesome -->
        <link href="assets/css/font-awesome.min.css" rel="stylesheet" type="text/css">
        <!-- Owl Carousel -->
        <link href="assets/css/owl.carousel.min.css" rel="stylesheet" type="text/css">
        <!-- Custom Style -->
        <link href="assets/css/style.css" rel="stylesheet" type="text/css">
		<!--Style Content Page-->
        <!-- Favicon -->
        <link rel="icon" href="" type="image/png" />

    </head>

<body>
<?
include("../connect.php");
include("./function/user_bd.php");
include("./function/user_check.php");
require "./header.php";

$feed_id = $_GET['feed_id'];
$feed_id = htmlspecialchars($feed_id);
$feed_id = mysql_escape_string($feed_id);

$feed_current_type = '1'; // Foto

if($feed_id <> '') {
    ////////////////////Проверка фида на существование///////////////////////////
    $result_repeat = mysql_query("SELECT * FROM feeds WHERE id='$feed_id';");
    $num = mysql_num_rows($result_repeat);
    if($num !== 1) 
        { 
            echo("<script>javascript:window.location='./feeds.php'</script>");
            exit();
        } 
    /////////////////////////////////////////////////////////////////////////////

    /////////////////Загружаем данные фида///////////////////////////////////////
    $zapros = "SELECT * FROM feeds WHERE id='".$feed_id."'";
    $requirest = mysql_query($zapros);
    while($row = mysql_fetch_array($requirest)) 
        {
            $girl_id = $row['girl_id'];
            $feed_foto = $row['foto'];
            $feed_foto_description = $row['foto_description'];
            $feed_video = $row['video'];
            $feed_video_description = $row['video_description'];
            $feed_day_status = $row['day_status'];
            $feed_day_rating = $row['day_rating'];
            $feed_day_description = $row['day_description'];
            $feed_waiting_foto = $row['waiting_foto'];
            $feed_waiting_description = $row['waiting_description'];
            $feed_question_girl = $row['question_girl'];
            $feed_question_match = $row['question_match'];
            $feed_question_rating = $row['question_rating'];
            $feed_relation_description = $row['relation_description'];
            $feed_relation_girl = $row['relation_girl'];
            $feed_relation_man = $row['relation_man'];
            $feed_relation_foto = $row['relation_foto'];
            $feed_present_property = $row['present_property'];
            $feed_present_description = $row['present_description'];
            $feed_present_foto = $row['present_foto'];
            $feed_description = $row['description'];
            $feed_type = $row['type'];
            $feed_match_add = $row['match_add'];
            $feed_match_add_login = $row['match_add_login'];
            $feed_date_add = $row['date_add'];
        }
    
        $zapros = "SELECT * FROM girls WHERE girl_id='".$girl_id."'";
        $requirest = mysql_query($zapros);
        while($row = mysql_fetch_array($requirest)) 
            {
                $girl_first_name = $row['first_name'];
                $girl_last_name = $row['last_name'];
                $girl_country = $row['country'];
                $girl_city  = $row['city'];
                $girl_foto = $row['foto'];
            }
        
        if($girl_foto == "")
            {
                $foto_print = "../uploads/girls/avatar.jpg";
            }
        else
            {
                $foto_print = "../".$girl_foto;
            }
    /////////////////////////////////////////////////////////////////////////////

    //////////////////////////Проверка типа фида/////////////////////////////////
    if ($feed_type != $feed_current_type) {
        echo("<script>javascript:window.location='./feeds.php'</script>");
        exit();
    }

    /////////////////////////////////////////////////////////////////////////////
} else {
    echo("<script>javascript:window.location='./feeds.php'</script>");
    exit();
}
?>
<div class="site-wrapper">
    <div class="container">
        <div class="row">
			<? require "./menu.php"; ?>
			
			<!-- Main Page Content (start)-->
            <div class="main-content col-md-9">

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