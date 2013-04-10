<?php

	$loc = $_POST['filec'];
	
	define("HOST", "localhost");

	// Database user
	define("DBUSER", "root");

	// Database password
	define("PASS", "root");

	// Database name
	define("DB", "mediaTest");

	############## Make the mysql connection ###########

	$conn = mysql_connect(HOST, DBUSER, PASS) or  die('Could not connect !<br />Please contact the site\'s administrator.');
	$db = mysql_select_db(DB) or  die('Could not connect to database !<br />Please contact the site\'s administrator.');
    
	$query ="SELECT Info2.Song as Song, Info2.Album AS Album, Info2.Artist As Artist, Info2.Length AS Length FROM Info2, Song, File WHERE File.File_Loc LIKE '%".$loc."' AND File.File_ID = Song.Song_ID
	AND Song.Name = Info2.Song GROUP BY Song.Name";
	
	$result=mysql_query($query);
	while($data=mysql_fetch_array($result)){
		echo '<div style="padding-left:10px;padding-top:5px;padding-bottom:5px;">     ' .$data["Song"]. '</div>';
		echo '<div style="padding-left:10px;position:absolute; top:20ox;right:5px;">    ' .$data["Length"]. '</div>';
		echo '<div style="padding-left:10px;padding-bottom:5px;">     ' .$data["Artist"]. '</div>';
		echo '<div style="padding-left:10px;padding-bottom:5px;">     ' .$data["Album"]. '</div>';
	}
	
?>