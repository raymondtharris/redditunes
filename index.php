<?php

include("config.php");
session_start();

if($_SERVER["REQUEST_METHOD"] == "POST")
{
// username and password sent from form 

$myusername=addslashes($_POST['username']); 
$mypassword=addslashes($_POST['password']); 


$sql="SELECT User_ID FROM User WHERE Username='$myusername' and UserPassword='$mypassword'";
$result=mysql_query($sql);
$row=mysql_fetch_array($result);
$active=$row['active'];

$count=mysql_num_rows($result);


// If result matched $myusername and $mypassword, table row must be 1 row
if($count==1)
{
session_register("myusername");
$_SESSION['login_user']=$myusername;

header("location: welcome.php");
}
else 
{
$error="Your Login Name or Password is invalid";
}
}
?>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Login Page</title>

<style type="text/css">
body
{
font-family:Arial, Helvetica, sans-serif;
font-size:14px;
background-color:#aaa;

}
label
{
font-weight:bold;

width:100px;
font-size:14px;

}
.box
{
border:#666666 solid 1px;
-webkit-border-radius:3px;
width:245px;
height:30px;
font-size:16px;


}
.cloak{
	position:absolute;
	top:0px;
	left:0px;
	margin:0px;
	width:100%;
	height:100%;
	background-color:#333;
	opacity:0.4;
}

.logIn{
	position:absolute;
	left:180px;
	height:30px;
	width:100px;
	background-color:#ccc;
	border-style:none;
	color:#fff;
	-webkit-border-radius:3px
}
.logIn:hover{
	position:absolute;
	left:180px;
	height:30px;
	width:100px;
	background-color:#55f;
	color:#000;
	border-style:none;
	-webkit-border-radius:3px
}
</style>
</head>
<body bgcolor="#aaa">
<div align="center" style="position:relative;top:12%;" >
		<img  src="splash.png"/ height=720px width=1280px>
</div>
<div class="cloak">

</div>

<div style="position:absolute;bottom:20px; right:20px;background-color:#fff;-webkit-border-radius:3px">
<div style="width:300px; border: solid 1px #333333; -webkit-border-radius:3px; " align="left">
<div style="background-color:#333333; color:#FFFFFF; padding:3px;"><b style="padding-left:10px;">Login</b></div>


<div style="margin:30px">

<form action="" method="post">
<label></label><input type="text" name="username" class="box" value="Username"/><br/><br/>
<label></label><input type="password" name="password" class="box" value="Password" /><br/><br />
<input class="logIn" type="submit" value=" Submit "/><br />

</form>
<div style="font-size:11px; color:#cc0000; position:absolute;top:30px;"><?php echo $error; ?></div>
</div>
</div>
</div>

</body>
</html>
