<?
session_start();
isset($_SESSION['login_match']) or die("<script>javascript:window.location='index.php'</script>");
include("../connect.php");

///////////////////////////////Проверка статуса мачмеккера////////////////////////////
$zapros_match = "SELECT * FROM matchmakers WHERE login='".$_SESSION['login_match']."'";
$requirest_match = mysql_query($zapros_match);
while($row_match = mysql_fetch_array($requirest_match)) { $status_match = $row_match['status']; $match_name = $row_match['name']; }
if($status_match == "2") { echo("<script>alert('Аккаунт заблокирован');</script><script>javascript:window.location='index.php?logout'</script>");}
if($status_match == "0") { echo("<script>alert('Доступ запрещен');</script><script>javascript:window.location='index.php?logout'</script>");}
//////////////////////////////////////////////////////////////////////////////////////

?>

<html>
<head>
	<meta charset="utf-8">
	<title>События</title>
	<link rel="stylesheet" href="./css/bootstrap.min.css" />
	<link rel="stylesheet" href="./css/font-awesome.min.css" />
	<link rel="stylesheet" href="./css/bootstrap-select.css">
	<script src="./js/jquery-1.11.3.min.js"></script>
	<script src="./js/bootstrap.min.js"></script>  
	<script src="./js/bootstrap-select.js"></script>
</head>


<?
$page_name = "feeds";
include "header.php";
?>


<body>
<div style="padding:20px;">
	<div class="row">
		<div class="col-lg-4 col-md-4 col-sm-8 col-xs-12">
            <h1>My future relationship</h1>
            <hr>
            <form enctype='multipart/form-data' action="./function/feed_add_foto_end.php" method="post">
                <input type="hidden" name="match_add" value="<? echo $match_name; ?>">
                <input type="hidden" name="type" value="6">
                <input type="hidden" name="description" value="">
                <div class="form-group">
                    <label>ID Девушки: </label>
                    <select class="selectpicker" data-width="auto" data-live-search="true"  data-size="5" name="girl_id" required="required">
                        <option value=""></option>
                        <?
                        ///////////Загрузка девушек , которые не добавленны у пользователя/////////////////////////////////////
                        $sql_gellary_girl = "SELECT * FROM girls WHERE activation_status='1'";
                        $result_gellary_girl  = mysql_query($sql_gellary_girl);
                        while($row_gellary_girl = mysql_fetch_array($result_gellary_girl)) 
                            {
                               
                                echo('
                                        <option value="'.$row_gellary_girl['girl_id'].'">ID: '.$row_gellary_girl['girl_id'].' ('.$row_gellary_girl['first_name'].' '.$row_gellary_girl['last_name'].')</option>
                                    ');
                            }
                        ///////////////////////////////////////////////////////////////////////////////////////////////////////
                        ?>
                    </select>
                </div>

                <div class="form-group">
                    <label for="comment">Описание как девушка видит отношения:</label>
                    <textarea class="form-control" name="relation_description" rows="5" id="comment" required="required"></textarea>
                </div>

                <div class="form-group">
					<label>Поле для вопроса к мужчине</label>
					<input name="relation_man" type="text" class="form-control rounded" required="required">
				</div>

                <div class="form-group">
					<label>Как я отвечаю на этот вопрос</label>
					<input name="relation_girl" type="text" class="form-control rounded" required="required">
				</div>

                <div class="form-group">
					<label>Фотография</label>
					<input type='file' name='file'/>
				</div>

                <div class="form-group">
					<button type="submit" class="btn btn-success">Создать событие</button>
				</div>
            </form>
		</div>
	</div>
</div>
</body>
</html>
