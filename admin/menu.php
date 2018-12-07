<nav class="navbar navbar-inverse" style="text-align: center;">
  <div class="container-fluid">
    <div class="navbar-header">
		 <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
			<span class="sr-only">Открыть меню</span>
			<span class="icon-bar"></span>
			<span class="icon-bar"></span>
			<span class="icon-bar"></span>
		</button>
	</div>

    
	 
    <div class="collapse navbar-collapse" id="navbar-main">

      <ul class="nav navbar-nav">
        <li class="<? if($page_name == "admin") { echo("active"); } ?>"><a href="admin.php">Главная</a></li>
		
         <li class="dropdown <? if($page_name == "match") { echo("active"); } ?>"><a href="#" class="dropdown-toggle" data-toggle="dropdown">Анкеты мачмекеров<span class="caret"></span></a>
			<ul class="dropdown-menu">
            <li><a href="./match.php">Таблица мачмекеров</a></li>
            <li><a href="./match_add.php">Добавить мачмекера</a></li>    
          </ul>
		</li>

		<li class="dropdown <? if($page_name == "payments") { echo("active"); } ?>"><a href="#" class="dropdown-toggle" data-toggle="dropdown">Платежи<span class="caret"></span></a>
			<ul class="dropdown-menu">
						<li><a href="./payments.php?view=all">Все платежи</a></li> 
						<li><a href="./payments.php?view=success">Оплаченные платежи</a></li> 
						<li><a href="./payments.php?view=pending">Не оплаченные платежи</a></li> 
      </ul>
		</li>
		
		<li class="dropdown <? if($page_name == "tarif") { echo("active"); } ?>"><a href="#" class="dropdown-toggle" data-toggle="dropdown">Тарифы и услуги<span class="caret"></span></a>
			<ul class="dropdown-menu">
						<li><a href="./tarif.php">Тарифные планы и сервисы</a></li> 
						<li><a href="./request_tour_price.php">Тарифы на тур по Украине</a></li>
			<li><a href="./gifts.php">Подарки</a></li>			
          </ul>
		</li>

		<li class="<? if($page_name == "notification") { echo("active"); } ?>"><a href="notifications.php">Уведомления</a></li>
	
		<li class="dropdown <? if($page_name == "log") { echo("active"); } ?>"><a href="#" class="dropdown-toggle" data-toggle="dropdown">Логи<span class="caret"></span></a>
			<ul class="dropdown-menu">
            <li><a href="./email_log.php">Лог отправленных писем</a></li>  		
          </ul>
		</li>
		
		<li class="<? if($page_name == "email") { echo("active"); } ?>"><a href="email_templates.php">Шаблоны писем</a></li>

        <li><a href="./index.php?logout" >Выход</a></li>	
      </ul>
    </div>
  </div>
</nav>
