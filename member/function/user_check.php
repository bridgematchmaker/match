<?
if(($status_system == '0' ) AND ($page_menu_name <> "Activation_profile"))
	{
		echo("<script>javascript:window.location='./activation_profile.php'</script>");
	}

if(($service == '0') AND ($page_menu_name <> "Select service") AND ($status_system <> "0"))  
	{
		echo("<script>javascript:window.location='./choose_service.php'</script>");
	}
	
if(($service == '2') AND ($page_menu_name <> "Select service") AND ($page_menu_name <> "Bridge_of_love")) 
	{
		echo("<script>javascript:window.location='./bridge_of_love.php'</script>");
	}
?>