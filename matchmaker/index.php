<?php
/*
  * лучше всегда стараться как-то отделить html от кода скрипта:
  * выносить в отдельный файл или хотя-бы в отдельную фунцию
  */
include ("../connect.php"); 
function draw_form($bad_login = false) {
     ?>
	 <body bgcolor="#F5FFFA">
     <form action="" method="post">
	 <center>

	 <h3>Авторизация:</h3>
		 <table>
		 <tr><td><b>Логин:</b></td><td><input type="text" name="login"></input></td></tr>
         <tr><td><b>Пароль:</b></td><td><input type="password" name="pass"></input></td></tr>
		 <table>
		 <br>
		 <input type='image' src='../images/vhod.png' alt='Submit'>
	 </center>
     </form>
     <?php
     if ($bad_login)
         echo '<br><br>Неправильный логин и/или пароль';
}

//////////Функция проверки авторизации////////////
function check_login($login, $pass) {
	$passwd_md5 = md5($_POST["pass"]);
	$query = "SELECT `id`
            FROM `matchmakers`
            WHERE `login`='{$_POST["login"]}' AND `pass`='{$passwd_md5}'
            LIMIT 1";
	$sql = mysql_query($query) or die(mysql_error());
    return (mysql_num_rows($sql) == 1);
}
/////////////////////////////////////////////////


session_start();


////////////Выход//////////////
if (isset($_GET['logout'])) {
     session_unset();
     session_destroy();
     header("Location: index.php");
     exit(); 
}
//////////////////////////////

// Eсли мы уже авторизированы 
if (!isset($_SESSION['login'])) {

     $login = $_POST['login'];
     $pass = $_POST['pass'];

     if (count($_POST) <= 0)
         draw_form();
     else {
         if (check_login($login, $pass))
             $_SESSION['login_match'] = $login;
         else
             draw_form(true);
     }
}

isset($_SESSION['login_match']) or die(); // здесь если функция вернула false то выполняется die()

echo	("
			<script>javascript:window.location='match.php'</script>
		");

?>