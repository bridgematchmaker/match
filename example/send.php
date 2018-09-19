<?php 

	require './lib/PHPMailer/PHPMailerAutoload.php';
	$mail = new PHPMailer(); // инициализация класса
	
	$mail->isSMTP(); // указали, что работаем по протоколу SMTP
	$mail->SMTPDebug = 0; // 0 - отключить отладку
	$mail->SMTPAuth = true;
	$mail->SMTPSecure = "tls";

	$mail->Host = "smtp.sendgrid.net";
	$mail->Port = "587"; // порт SMTP

	$mail->Username = "apikey";
	$mail->Password = "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";

	$mail->setFrom("newsletter@bridgematchmaker.com", "BridgeMatchMaker"); // от кого
	$mail->addReplyTo("newsletter@bridgematchmaker.com", "BridgeMatchMaker"); // кому ответить
	$mail->addAddress("dmitry.plohotnyuk@gmail.com");  // получатель

	$mail->Subject = "Subject message: Test"; // тема письма (заголовок)

	$mail->msgHTML("Text message: Test SMTP"); // текст сообщения

	if ($mail->send()) {
		echo "OK";
	}
	else {
		echo "ERROR";
	}


 
 ?>