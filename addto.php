<?php

define("HOST", "localhost");

// Database user
define("DBUSER", "root");

// Database password
define("PASS", "root");

// Database name
define("DB", "mediaTest");

############## Make the mysql connection ###########

$conn = mysql_connect(HOST, DBUSER, PASS) or  die('Could not connect !<br />Please contact the site\'s administrator.');

$db = mysql_select_db("mediaTest", $conn) or  die('Could not connect to database !<br />Please contact the site\'s administrator.');


$user = $_POST['User'];
$song = $_POST['fileadd'];

//echo $user;
echo $song;

$resSPID = "SELECT Song_Playlist.Song_Playlist_ID From Info2, Song, User, Playlist, Song_Playlist 
Where User.Username LIKE '%" . $user . "'
And User.User_ID = Playlist.User_ID
And Playlist.Playlist_ID =Song_Playlist.Playlist_ID
And Song.Name = Info2.Song
And Song.Song_ID = Song_Playlist.Song_ID Group by Song_Playlist_ID;";
$result4 = mysql_query($resSPID)or die(mysql_error());
$row = mysql_fetch_row($result4);
$SPID = $row[0];

echo "addasdas:".$key;
echo "pppppp:".$SPID;


$resPID="SELECT Song_Playlist.Song_Playlist_ID From Info2, Song, User, Playlist, Song_Playlist 
Where User.Username Like '%". $user ."'
And User.User_ID = Playlist.User_ID
And Playlist.Playlist_ID =Song_Playlist.Playlist_ID
And Song.Name = Info2.Song
And Song.Song_ID = Song_Playlist.Song_ID
Group By Song_Playlist_ID;";
$result3 = mysql_query($resPID)or die(mysql_error());
while($row = mysql_fetch_assoc($result3)){
	foreach($row AS $key => $PID){
		
	}
}


$tn ="SELECT (count(Song_Playlist.Track_Number) +1) As track From Info2, Song, User, Playlist, Song_Playlist 
Where User.Username Like 'TimH'
And User.User_ID = Playlist.User_ID
And Playlist.Playlist_ID =Song_Playlist.Playlist_ID
And Song.Name = Info2.Song
And Song.Song_ID = Song_Playlist.Song_ID;";

$resTN = mysql_query($tn);
$track =  mysql_fetch_array($resTN);

$resSID="SELECT Song.Song_ID From Info2, Song
 Where Song.Name = Info2.Song And Info2.Song = ' $song '";
$songid = mysql_query($resSID)or die(mysql_error());
while($row = mysql_fetch_assoc($songid)){
	foreach($row AS $key => $idsong){
		
	}
}
echo $idsong;

$final=mysql_query("INSERT into Song_Playlist(Song_Playlist_ID, Playlist_ID, Song_ID, Track_Number) 
Values( ' $SPID ' , ' $PID ' , '$idsong' , ' $resTn ')");

// get results
	$res2 =mysql_query("select Info2.Artist, Info2.Song, Info2.Art From Info2, Song, User, Playlist, Song_Playlist 
	Where User.Username Like 'TimH'
	And User.User_ID = Playlist.User_ID
	And Playlist.Playlist_ID =Song_Playlist.Playlist_ID
	And Song.Name = Info2.Song
	And Song.Song_ID = Song_Playlist.Song_ID
	Order by Song_Playlist.Track_Number;");

	echo'<table ><tr >';

			while ($data = mysql_fetch_assoc($res2)) {
				/*
				echo'<li class="pListBox"><div><img height=40px width=40px src='.$data["Cover_Art"].'></div><div>'.$data["Song"].'</div><div><marquee>'.$data["Artist"].'</marquee></div></li>';
				*/
				
				echo '<td style="color:#fff;">
				<div id="pListItem">
				<center>
				<img  style="margin-top:5px;-webkit-box-shadow: 0px 0px 10px #222;"height=60px width=60px src='.$data["Art"].'> 
				</center>
				<div align="center" style="font-size:10px;">' .$data["Song"]. '</div>
				</div>
				</td>';

			}

		//	echo'</ul>';
		echo '</tr></table>';

$num_rows = mysql_num_rows($res2);
if(!$num_rows ){
	//echo '<div style="padding-left:20px;color:#fff;">Add Failed.</div>';
}

?>