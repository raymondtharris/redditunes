<?php
$host="localhost"; // Host name 
$username="root"; // Mysql username 
$password="root"; // Mysql password 
$db_name="mediaTest"; // Database name 
$tbl_name="User"; // Table name

// Connect to server and select databse.
mysql_connect("$host", "$username", "$password")or die("cannot connect"); 
mysql_select_db("$db_name")or die("cannot select DB");

// username and password sent from form 
$Username=$_POST['Username']; 
$UserPassword=$_POST['UserPassword'];

// To protect MySQL injection (more detail about MySQL injection)
$Username = stripslashes($Username);
$UserPassword = stripslashes($UserPassword);
$Username = mysql_real_escape_string($Username);
$UserPassword = mysql_real_escape_string($UserPassword);

$sql="SELECT * FROM $tbl_name WHERE Username='$Username' and UserPassword='$UserPassword'";
$result=mysql_query($sql);

// Mysql_num_row is counting table row
$count=mysql_num_rows($result);
// If result matched $myusername and $mypassword, table row must be 1 row

if($count==1){
// Register $myusername, $mypassword and redirect to file "login_success.php"
session_register("Username");
session_register("UserPassword"); 
header("location:login_success.php");
}
else {
echo "Wrong Username or Password";
}
?>