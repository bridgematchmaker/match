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

    <!-- Основная часть меню (может содержать ссылки, формы и другие элементы) -->
	 
    <div class="collapse navbar-collapse" id="navbar-main">
      <!-- Содержимое основной части -->

      <ul class="nav navbar-nav">
        <li class="<? if($page_name == "match") { echo('active'); } ?>"><a href="match.php">Главная</a></li>
        <? if($status_match == "1") {
		echo('
		<li class="dropdown '); if($page_name == "clients") { echo('active'); } echo('"><a href="#" class="dropdown-toggle" data-toggle="dropdown">Анкеты клиентов<span class="caret"></span></a>
			<ul class="dropdown-menu">
			<li><a href="./clients.php?view=all">Все пользователи</a></li>
			<li><a href="./clients.php?view=all_month">Все пользователи (Вход в этом месяце)</a></li>
			<li><a href="./clients.php?view=all_last_login">Все пользователи (Сортировка по дате входа)</a></li>
			<li role="separator" class="divider"></li>
			<li><a href="./clients.php?view=new_user">Новые пользователи</a></li>
			<li><a href="./clients.php?view=active">Активные пользователи</a></li>
			<li><a href="./clients.php?view=verified">Верефицированые пользователи</a></li>
			<li><a href="./clients.php?view=verified_complete">Верефицированые (полный) пользователи</a></li>
			<li><a href="./clients.php?view=del">Удаленные пользователи</a></li>
            <li role="separator" class="divider"></li>
            <li><a href="clients.php?view=my">Мои клиенты</a></li>
          </ul>
		</li>
		');
		} ?>
		
		<? if($status_match == "1") {
		echo('
        <li class="dropdown '); if($page_name == "girls") { echo('active'); } echo('"><a href="#" class="dropdown-toggle" data-toggle="dropdown">Анкеты девушек<span class="caret"></span></a>
			<ul class="dropdown-menu">
				<li><a href="./girls.php?view=all">Все девушки</a></li>
				<li><a href="./girls.php?view=gallery">Девушки в общей галерее</a></li>
				<li role="separator" class="divider"></li>
				<li><a href="./girl_add.php">Добавить девушку</a></li>
				<li><a href="./girls_invite.php">Заявки девушек</a></li>
			</ul>
		</li>
		');
		} ?>
		
		<? if($status_match == "0") {
		echo('
        <li class="dropdown '); if($page_name == "girls") { echo('active'); } echo('"><a href="#" class="dropdown-toggle" data-toggle="dropdown">Анкеты девушек<span class="caret"></span></a>
			<ul class="dropdown-menu">
				<li><a href="./girls.php?view=my">Все девушки</a></li>
				<li role="separator" class="divider"></li>
				<li><a href="./girl_add.php">Добавить девушку</a></li>
			</ul>
		</li>
		');
		} ?>
		
		<? if($status_match == "1") {
		echo('
        <li class="dropdown '); if($page_name == "orders") { echo('active'); } echo('"><a href="#" class="dropdown-toggle" data-toggle="dropdown">Заказы<span class="caret"></span></a>
			<ul class="dropdown-menu">
            <li><a href="./orders.php?view=my_all">Все заказы моих клиентов</a></li>
			<li><a href="./orders.php?view=my_pending">Не обработаные заказы моих клиентов</a></li>
            <li role="separator" class="divider"></li>
            <li><a href="./orders.php?view=all">Все заказы по сайту</a></li>
          </ul>
		</li>
		');
		} ?>

		<? if($status_match == "1") {
		echo('
        <li class="dropdown '); if($page_name == "tickets") { echo('active'); } echo('"><a href="#" class="dropdown-toggle" data-toggle="dropdown">Тикеты<span class="caret"></span></a>
			<ul class="dropdown-menu">
            <li><a href="./tickets.php?view=all">Все тикеты</a></li>
			<li><a href="./tickets.php?view=new_tickets">Не обработаные тикеты</a></li>

          </ul>
		</li>
		');
		} ?>

		<? if($status_match == "1") {
		echo('
        <li class="dropdown '); if($page_name == "feeds") { echo('active'); } echo('"><a href="#" class="dropdown-toggle" data-toggle="dropdown">События<span class="caret"></span></a>
			<ul class="dropdown-menu">
			<li><a href="./feeds.php">Все события</a></li>
          </ul>
		</li>
		');
		} ?>
		
		<? if($status_match == "1") {
		echo('
        <li class="dropdown '); if($page_name == "additionally") { echo('active'); } echo('"><a href="#" class="dropdown-toggle" data-toggle="dropdown">Дополнительно<span class="caret"></span></a>
			<ul class="dropdown-menu">
			<li><a href="./translators.php">Переводчики</a></li>
			<li><a href="./requests_tour.php">Заявки на тур</a></li>
          </ul>
		</li>
		');
		} ?>
		
        <li><a href="./index.php?logout" >Выход</a></li>
		
      </ul>
      
    </div>
  </div>
</nav>