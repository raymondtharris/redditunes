
<?php
$db_user = "root";
$db_pass = "root";
$db      = "mediaTest";
mysql_connect('localhost',$db_user,$db_pass);
mysql_select_db($db);
$uname = mysql_real_escape_string($_POST['Username']);
$pword = mysql_real_escape_string($_POST['UserPassword']);
$sql      = "SELECT * FROM User WHERE Username = $uname AND UserPassword = $pword";
$query    = mysql_query($sql);
$num_rows = mysql_num_rows($query);
if ($num_rows == '1')
{
setcookie("logged_in", $uname, time()+3600);
echo '1';
} else
{
echo '1';
}
?>