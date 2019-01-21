<?
require "./ads.php";
sleep (1);

$login = $_POST['login'];
$pass = $_POST['pass'];


echo "
		<form id='formLogin' action='../login.php' method='post'>
			<input name='login' type='hidden' value='".$login."'>
			<input name='pass' type='hidden' value='".$pass."'>
		</form>
		<script>alert('Profile successfully created');</script><script>document.getElementById('formLogin').submit();</script>
	";	
?>