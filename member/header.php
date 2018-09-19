<?
////////////////////////Загружаем массив прочитаных сообщений///////////////////////////////////////////
$data_notifications_id = Array(); // Масив с id прочитаных сообщений
$count = 0;
$sql_client_notifications = "SELECT * FROM notifications_status WHERE client_id='".$user_id."'";
$result_client_notifications  = mysql_query($sql_client_notifications);
while($row_client_notifications = mysql_fetch_array($result_client_notifications)) 
    { 
        $data_notifications_id[$count] = $row_client_notifications['msg_id'];
        $count++;
    }
///////////////////////////////////////////////////////////////////////////////////////////////////////

/////////////////////////////////////Выводим скрытые формы уведомлений для AJAX///////////////////////
$sql_notifications = "SELECT * FROM notifications";
$count = 0;
$result_notifications  = mysql_query($sql_notifications);
while($row_notification = mysql_fetch_array($result_notifications)) 
	{
		if (!in_array($row_notification['id'], $data_notifications_id)) // Выводим сообщение если его нет в массиве прочитаных
			{
				$notification_id = $row_notification['id'];
				$count++;
				echo('
						<form action="" id="notification_'.$notification_id.'" method="POST">
							<input type="hidden" name="user_id" value="'.$user_id.'">
							<input type="hidden" name="msg_id" value="'.$notification_id.'">
							</form>
					');
			}
	}
////////////////////////////////////////////////////////////////////////////////////////////////////////
?>
<!-- Header (start)-->
    <header class="site-header">
        <div class="container">
            <div class="row">

                <div class="col-md-6"><a href="./index.php"><img src="assets/images/logo.jpg" alt="Site Logo"></a></div>

                <div class="col-md-6">
                    <ul class="nav justify-content-end">
                        <li>
                            <div class="notification-wrapper text-center">
                                <div class="icon-wrapper">
                                    <i class="fa fa-bell" aria-hidden="true"></i>
                                    <? if($count !== 0) { echo('<span class="count">0</span>'); }?>
                                    <p>Notofication</p>
                                </div>
                                <div class="notification-text text-left">

                                    <div class="notification-item">
                                        <div class="notification-carousel owl-carousel owl-loaded owl-drag notification">
                                            
											<?
												$sql_notifications = "SELECT * FROM notifications";
												$result_notifications  = mysql_query($sql_notifications);
												while($row_notification = mysql_fetch_array($result_notifications)) 
													{
														if (!in_array($row_notification['id'], $data_notifications_id)) // Выводим сообщение если его нет в массиве прочитаных
															{
																$notification_id = $row_notification['id'];
																$notification_date_add = $row_notification['date_add'];
																$notification_header = $row_notification['header'];
																$notification_message = $row_notification['message'];
																	echo('
																			<div class="item">
																				<div class="notification-header d-flex align-items-center">
																					<h3 class="">'.$notification_header.'</h3>
																					<div class="button-action" id="'.$notification_id.'">
																						<a href="#" class="delete-notification"><i class="fa fa-trash" aria-hidden="true"></i></a>
																					</div>
																				</div>
																				<div class="notification-content">
																					'.$notification_message.'
																				</div>
																			</div>
																		');
															}
													}
											?>

                                        </div>
                                    </div>
                                </div>
                            </div>
                        </li>

                        <li>
                            <div class="account-wrapper text-center">
                                <div class="icon-wrapper">
                                    <i class="fa fa-cog" aria-hidden="true"></i>
                                    <p>Account</p>
                                </div>
                                <ul class="account-details text-left">
                                    <li class="name d-flex align-items-center">
                                        <span class="member-name"><? echo $first_name; ?></span>
                                        <span class="member-id">ID:<? echo $user_id; ?></span>
                                    </li>
                                    <li class="member d-flex align-items-center">
                                        <i class="fa fa-user"></i>
                                        <?echo $status_tarif_print; ?> (<? echo $data_print; ?> days) <a href="./temp_msg.php" class="upgrade">Upgrade</a>
                                    </li>
                                    <li class="edit">
                                        <a href="./my_profile.php" class="d-flex align-items-center"><i class="fa fa-pencil-square-o"></i>Edit Profile</a>
                                    </li>


                                    <li class="account-options">
                                        <a href="./temp_msg.php" class="d-flex align-items-center"><i class="fa fa-cog"></i>Account options</a>
                                    </li>

                                    <li class="logout">
                                        <a href="../login.php?logout" class="d-flex align-items-center"><i class="fa fa-sign-out" aria-hidden="true"></i>Logout</a>
                                    </li>
                                </ul>
                            </div>
                        </li>
                        <li>
                            <div class="lang-wrapper text-center">
                                <img src="assets/images/eng.jpg" alt="lang">
                                <p>ENG</p>
                            </div>
                        </li>
                    </ul>
                </div>

            </div>
        </div>
    </header>
<!-- Header (end)-->