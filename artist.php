<?php
	$loc = $_POST['filec'];
	
	$con = mysql_connect("localhost","root","root");
	if (!$con)
	  {
	  die('Could not connect: ' . mysql_error());
	  }

	mysql_select_db("mediaTest", $con);
	 
	$query="SELECT Info2.Artist FROM File, Song, Info2 WHERE File.File_Loc LIKE '%". $loc . "' AND File.File_ID =Song.Song_ID AND Song.Name = Info2.Song ";
//	$query="SELECT Artist.Name FROM Artist, Album,File, Song WHERE File.File_Loc LIKE '%". $loc . "' AND File.File_ID =Song.Song_ID AND Song.Album_ID = Album.Album_ID AND Album.Artist_ID= Artist.Artist_ID ";
	$result = mysql_query($query)or die(mysql_error());
	while($row = mysql_fetch_assoc($result)){
		foreach($row AS $key => $artistName){}
	}
	
    $sql="SELECT Info, Name, Logo FROM Artist WHERE Name LIKE '%".$artistName."'";
	$result2 = mysql_query($sql)or die(mysql_error());
	
	while($row = mysql_fetch_assoc($result2)){
		echo "<div id='A_name' class='A_Nametext'>". $row['Name'] . "</div>";
		echo "<div id='A_pic' class='A_image'><center><img src='". $row['Logo'] . "'></center></div>";
		echo "<div id='A_Info'>";
	  echo $row['Info'] . " " ;
	  echo "</div>";
	  }
	
?>