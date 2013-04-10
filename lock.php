<?php
include('config.php');
session_start();
$user_check=$_SESSION['login_user'];

$ses_sql=mysql_query("select Username from User where Username='$user_check' ");

$row=mysql_fetch_array($ses_sql);

$login_session=$row['Username'];

if(!isset($login_session))
{
header("Location: index.php");
}
?>