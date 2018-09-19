<?php 
$email = $_POST['email'];
$question= $_POST['question'];
$question = substr(htmlspecialchars(trim($_POST['question'])),0,1500); // ограничение на количество символов 1500
$message = "E-mail: $email \nВопрос: $question";
$subject = "Вопрос с сайта девушки."; 
#if(empty(subject) || empty(message)){
#exit();
#}
if (!mail("alexandra.berezyanskaya@bridgematchmaker.com", $subject, $message, //адрес на который приходит письмо 
"From: alexandra.berezyanskaya@bridgematchmaker.com")) { //адрес с которого отправляется (сделать почту там где лежит партнерка)
    echo "some error happen"; 
}
else
{
	    echo "sent successfully";
        header("Location: " . $_SERVER["HTTP_REFERER"]);
}	
echo $message;
?> 