<?php
$con = mysql_connect("localhost","root","root");
if (!$con)
  {
  die('Could not connect: ' . mysql_error());
  }

mysql_select_db("mediaTest", $con);


//file loc
$file = $_POST['fileadd'];
$user = $_POST['User'];

$sql="SELECT Song.Song_ID FROM Song, File WHERE File.File_Loc LIKE '%".$file."' AND File.File_ID= Song.File_ID  ";
$songid =mysql_query($sql) or die(mysql_error());

while($row=mysql_fetch_assoc($songid)){
	foreach($row AS $key => $sID){
	}
}
echo 'Song Id: ' .$key;

mysql_close($con);
?>