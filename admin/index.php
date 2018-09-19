<?php
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
	$md5_passwd = "b50d2a0398aca1b50f6f5c5aefb69611";
	$md5_paaswd_post = md5($_POST['pass']);
    return ($_POST['login'] == 'admin') && ($md5_paaswd_post == $md5_passwd);
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
             $_SESSION['login_admin'] = $login;
         else
             draw_form(true);
     }
}

isset($_SESSION['login_admin']) or die(); // здесь если функция вернула false то выполняется die()

echo	("
			<script>javascript:window.location='admin.php'</script>
		");

?>