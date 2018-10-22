<!-- Menu Left (start)-->
            <div class="col-md-3 aside-left">

                    <div class="menu-left members-area">
						<a data-toggle="collapse" href="#collapseOne" style="text-decoration: none;" aria-expanded="true" aria-controls="collapseOne">
							<h3 class="d-flex align-items-center">
                                <span class="icon-left"><i class="fa fa-user" aria-hidden="true"></i></span>
                                Members Area
                                <span class="icon-right"><i class="fa fa-chevron-up" aria-hidden="true"></i></span>
							</h3>
						</a>

                        <div id="collapseOne" class="collapse show" role="tabpanel" aria-labelledby="headingOne" data-parent="#accordion">
                            <ul>
								<li class="menu-item <? if($page_menu_name == "Home") echo("active-menu"); ?>"><a class="" href="./index.php">Home</a></li>
                                <li class="menu-item <? if($page_menu_name == "My Profile") echo("active-menu"); ?>"><a class="" href="./my_profile.php">My Profile</a></li>
								<li class="menu-item <? if($page_menu_name == "More about me") echo("active-menu"); ?>"><a href="./profile_about_me.php">More about me</a></li>
								<li class="menu-item <? if($page_menu_name == "Select service") echo("active-menu"); ?>"><a href="./choose_service.php">Select service</a></li>
                                <!-- <li class="menu-item <? if($page_menu_name == "Account options") echo("active-menu"); ?>"><a href="#">Account options</a></li> -->
                                <li class="menu-item <? if($page_menu_name == "Purchase of services") echo("active-menu"); ?>"><a href="./temp_msg.php">Purchase of services</a></li>
                            </ul>
                        </div>
                    </div>

                    <div class="menu-left profile-gallery">
						<a data-toggle="collapse" href="#collapseTwo" style="text-decoration: none;" aria-expanded="true" aria-controls="collapseTwo">
							<h3 class="d-flex align-items-center">
								<span class="icon-left"><i class="fa fa-search" aria-hidden="true"></i></span>
								Profile Gallery
                                <span class="icon-right"><i class="fa fa-chevron-up" aria-hidden="true"></i></span>
                            
							</h3>
						</a>
                        <div id="collapseTwo" class="collapse show" role="tabpanel" aria-labelledby="headingTwo" data-parent="#accordion">
                            <ul>
                                <li class="menu-item  <? if($page_menu_name == "Matchmaker's recomendation") echo("active-menu"); ?>"><a href="./gallery.php?view=recomendation">Matchmaker's recomendation</a></li>
                                <li class="menu-item  <? if($page_menu_name == "Women profiles") echo("active-menu"); ?>"><a href="./gallery.php?view=gallery">Women profiles</a></li>
                                <li class="menu-item"><a href="./temp_msg.php">Choose a lady by hobby</a></li>
                                <li class="menu-item  <? if($page_menu_name == "Black List") echo("active-menu"); ?>"><a href="./gallery.php?view=blacklist">Black List</a></li>
                                <li class="menu-item"><a href="./temp_msg.php">Profiles Activity</a></li>
                            </ul>
                        </div>
                    </div>

                <div class="menu-left my-services">
					<a data-toggle="collapse" href="#collapseThree" style="text-decoration: none;" aria-expanded="true" aria-controls="collapseThree">
						<h3 class="d-flex align-items-center">
							<span class="icon-left"><i class="fa fa-check" aria-hidden="true"></i></span>
							My services
                        
                            <span class="icon-right"><i class="fa fa-chevron-up" aria-hidden="true"></i></span>
						</h3>
					 </a>
                    <div id="collapseThree" class="collapse show" role="tabpanel" aria-labelledby="headingThree" data-parent="#accordion">
                        <ul>
                        <li class="menu-item"><a href="./temp_msg.php">Message Feed</a></li>
                            <?
                            if($matchmaker_login !== "None") 
                                {
                                    if($page_menu_name == "Chat with Matchmaker")
                                        {
                                            echo('<li class="menu-item active-menu"><a href="./chat_matchmaker.php">Chat with Matchmaker</a></li>');
                                        }
                                    else
                                        {
                                            echo('<li class="menu-item"><a href="./chat_matchmaker.php">Chat with Matchmaker</a></li>');
                                        }
                                   
                                }
                            ?>
                            <li class="menu-item  <? if($page_menu_name == "Send E-mail to lady") echo("active-menu"); ?>"><a href="./send_email.php">Send E-mail to lady</a></li>
                            <li class="menu-item" <? if($page_menu_name == "Skype") echo("active-menu"); ?>"><a href="./conference_1.php">Skype-Conference</a></li>
                            <li class="menu-item"><a href="./temp_msg.php">Send a Gift</a></li>
                            <li class="menu-item"><a href="./temp_msg.php">Individual Tour</a></li>
                            <li class="menu-item"><a href="./temp_msg.php">Group Tour</a></li>
                        </ul>
                    </div>
                </div>
                

                <div class="menu-left information">
					<a data-toggle="collapse" href="#collapseFour" style="text-decoration: none;" aria-expanded="true" aria-controls="collapseFour">
						<h3 class="d-flex align-items-center">
							<span class="icon-left">
								<i class="fa fa-info" aria-hidden="true"></i>
							</span>
							Information
                       
                            <span class="icon-right"><i class="fa fa-chevron-up" aria-hidden="true"></i></span>
						</h3>
					</a>
                    <div id="collapseFour" class="collapse show" role="tabpanel" aria-labelledby="headingFour" data-parent="#accordion">
                        <ul>
                            <li class="menu-item"><a href="./temp_msg.php">Success Stories</a></li>
                            <li class="menu-item"><a href="./temp_msg.php">Beauty Contents</a></li>
                            <li class="menu-item"><a href="./temp_msg.php">Dating Tips</a></li>
                            <li class="menu-item"><a href="../faq.php">Help & FAQ</a></li>
                        </ul>
                    </div>
                </div>

            </div>
<!-- Menu Left (end)-->