<?php

////////////////////////Загружаем массив девушек добавленных в блек лист///////////////////////////////
$data_blacklist = Array(); // Масив с id девушек
$count = 0;
$sql_client_blacklist = "SELECT * FROM clients_girl WHERE user_id='".$user_id."' AND  girl_status='2'";
$result_client_blacklist  = mysql_query($sql_client_blacklist);
while($row_client_blacklist = mysql_fetch_array($result_client_blacklist)) 
    { 
        $data_blacklist[$count] = $row_client_blacklist['girl_id'];
        $count++;
    }
//////////////////////////////////////////////////////////////////////////////////////////////////////////