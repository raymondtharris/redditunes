<? 
session_start();
if(session_is_registered(Username)){

header('location:index.php');
}
?>

<html>
<body>
Login Successful
</body>
</html>