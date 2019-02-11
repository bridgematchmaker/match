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
        <link href="assets/css/style.content.css" rel="stylesheet" type="text/css">
        <!-- Favicon -->

        <style>
            .btn-warning {
                background-color: #CBBA85 !important;
                border: 1px solid #CBBA85 !important;
                
            }
        </style>
        <link rel="icon" href="" type="image/png" />

    </head>

<body>
<?
$page_menu_name = "My fotos";
include("../connect.php");
include("./function/user_bd.php");
include("./function/user_check.php");
require "./header.php";
?>
<div class="site-wrapper">
    <div class="container">
        <div class="row">
			<? require "./menu.php"; ?>
			
			<!-- Main Page Content (start)-->
            <div class="main-content col-md-9">
                <div class="row">
                    <div class="col-md-12">
                        <h2 class="page-title">My foto gallery</h2>
                        <p class='text-left'>Choose one photo from your device and hold "add photo" button. Repeat this actions if you want to add more photo</p>
                        <form action="./function/my_foto_add.php" method="POST" enctype="multipart/form-data">
                            <input type="file" name="file">
                            <button type="submit" class="btn btn-warning">ADD FOTO</button>
                        </form>
                    </div>
                </div>
                <hr>

                <div class="row">
                    <?  
			
                        $zapros_foto = "SELECT * FROM clients_foto WHERE user_id='".$user_id."'";
                        $requirest_foto = mysql_query($zapros_foto);
                        while($row_foto = mysql_fetch_array($requirest_foto)) 
                            {  
                                $foto_id = $row_foto['foto_id'];
                                $foto = $row_foto['foto'];  

                                echo("
                                    <div class='col-6 col-sm-6 col-lg-3'> 
                                        <table class='table table-striped'>
                                            <tr>
                                                <td>
                                                    <img src='../".$foto."' width='250'<hr>
                                                    <p class='text-center'><a href='./function/my_foto_del.php?foto_id=".$foto_id."'><buttton class='btn btn-warning btn-sm' style='width: 100%;'>Remove</buttton></a></p> 
                                                </td>
                                            </tr>
                                        </table>
                                    </div>
                                    ");
                            }
                    ?>
                </div>
                    
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