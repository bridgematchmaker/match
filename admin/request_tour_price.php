<?
session_start();
isset($_SESSION['login_admin']) or die("<script>javascript:window.location='index.php'</script>");

include("../connect.php");

$zapros_tarif = "SELECT * FROM request_tour_price";
$requirest_tarif = mysql_query($zapros_tarif);
while($row_tarif = mysql_fetch_array($requirest_tarif)) 
	{
            $question1_price = $row_tarif['question1_price'];
            $question2_price = $row_tarif['question2_price'];
            $question3_price = $row_tarif['question3_price'];
            $question4_price = $row_tarif['question4_price'];
            $question5_price = $row_tarif['question5_price'];
            $question6_price = $row_tarif['question6_price'];
            $question7_price = $row_tarif['question7_price'];
            $question8_price = $row_tarif['question8_price'];
            $question9_price = $row_tarif['question9_price'];
            $question10_price = $row_tarif['question10_price'];
            $question11_price = $row_tarif['question11_price'];
            $question12_price = $row_tarif['question12_price'];
            $question13_price = $row_tarif['question13_price'];
    }

?>
<html>
<head>
	<meta charset="utf-8">
	<title>Админка</title>
	<link rel="stylesheet" href="./css/bootstrap.min.css" />
	<link rel="stylesheet" href="./css/font-awesome.min.css" />
	<script src="./js/jquery-1.11.3.min.js"></script>
	<script src="./js/bootstrap.min.js"></script>  
</head>

<?
$page_name = "tarif";
include "menu.php";
?>


<body>
<div style="padding:20px;">
	<div class="row">
		<div class="col-lg-6 col-md-8 col-sm-12 col-xs-12">
        <form action="./function/set_request_tour_price.php" method="POST">
            <table class="table table-striped table-bordered">
            <tbody>
                <tr>
                    <td>Accompanying person:</td>
                    <td><input type="text" name="question1_price" value="<? echo $question1_price; ?>"></td>
                </tr>

                <tr>
                    <td>Insurance</td>
                    <td><input type="text" name="question2_price" value="<? echo $question2_price; ?>"></td>
                    
                </tr>

                <tr>
                    <td>Rent a car during your stay in the country</td>
                    <td><input type="text" name="question3_price" value="<? echo $question3_price; ?>"></td>
                    
                </tr>

                <tr>
                    <td>Transfer from the airport to the hotel</td>
                    <td><input type="text" name="question4_price" value="<? echo $question4_price; ?>"></td>
                </tr>
                
                <tr>
                    <td>Accommodation at 3 star or 4 star Hotels</td>
                    <td><input type="text" name="question5_price" value="<? echo $question5_price; ?>"></td>
                </tr>
                
                <tr>
                    <td>Booking railway tickets</td>
                    <td><input type="text" name="question6_price" value="<? echo $question6_price; ?>"></td>
                </tr>
                
                <tr>
                    <td>Excursion and sightseeing</td>
                    <td><input type="text" name="question7_price" value="<? echo $question7_price; ?>"></td>
                </tr>

                <tr>
                    <td>Entertainment ( cafe, nightclub, concerts, etc)</td>
                    <td><input type="text" name="question8_price" value="<? echo $question8_price; ?>"></td>
                </tr>

                <tr>
                    <td>Translator</td>
                    <td><input type="text" name="question9_price" value="<? echo $question9_price; ?>"></td>
                </tr>

                <tr>
                    <td>Matchmaker Advice</td>
                    <td><input type="text" name="question10_price" value="<? echo $question10_price; ?>"></td>
                </tr>

                <tr>
                    <td>Help in choosing a gift for a lady</td>
                    <td><input type="text" name="question11_price" value="<? echo $question11_price; ?>"></td>
                </tr>

                <tr>
                    <td>Unexpected Date</td>
                    <td><input type="text" name="question12_price" value="<? echo $question12_price; ?>"></td>
                </tr>

                <tr>
                    <td>Entertainment during the date with a lady</td>
                    <td><input type="text" name="question13_price" value="<? echo $question13_price; ?>"></td>
                </tr>
                
            </tbody>
            </table>
            <br>
            <input class="btn btn-success" type="submit" value="Сохранить">
        </form>
    </div>
</div>
</div>
</body>
</html>