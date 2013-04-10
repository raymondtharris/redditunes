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
	$db = mysql_select_db(DB) or  die('Could not connect to database !<br />Please contact the site\'s administrator.');

	$query = "SELECT * FROM Info, Song, Playlist, Song_Playlist, User WHERE Info.Song  = Song.Name AND Song.Song_ID = Song_Playlist.Song_ID AND User.Username  = 'NicoleK' AND User.User_ID  = Playlist.User_ID AND Song_Playlist.Song_Playlist_ID=1";
	
		$result  = mysql_query($query);


	echo "<table id='songblock' class='alternating' >";

	while ($data = mysql_fetch_array($result)) {


	    echo '
	   <tr style="min-width:100%;">

	        <td style="font-size:18px;min-width:329px;max-width:329px;">'.$data["Song"].'</td>
			<td class="add"><input id="add" type="button" value="Add" onclick="addToPlaylist();" /></td>
			<td class="ar" style="font-size:18px;">'.$data["Artist"].'</td>
	        <td class="al"style="font-size:18px;">'.$data["Album"].'</td>
	        <td class="le" style="font-size:18px;">'.$data["Genre"].'</td>
	        <td class="le" style="font-size:18px;">'.$data["Length"].'</td>
	    	<td></td><td></td>
	</tr>';



	}
	echo '<tr></tr>';
	echo '</table>';

?>