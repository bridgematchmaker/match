<?
session_start();
isset($_SESSION['login_match']) or die("<script>javascript:window.location='../index.php'</script>");

include ("../../connect.php");

$template = trim($_POST['template']);
$template = htmlspecialchars($template);
$template = mysql_escape_string($template);

$zapros_tamplate = "SELECT * FROM email_templates WHERE name='$template'";
$result_tamplate = mysql_query($zapros_tamplate);
while ($row_tamplate = mysql_fetch_assoc($result_tamplate)) 
    {
        $template_html = $row_tamplate['content'];
    }

    echo  $template_html;