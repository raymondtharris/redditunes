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


$sql ="Select * From Info2 Where Song LIKE '%" . $_POST['value'] . "%' OR Album LIKE '%" . $_POST['value']  ."%' OR Artist LIKE '%" . $_POST['value'] ."%' OR Genre LIKE '%" . $_POST['value']  ."%'";
  // get results
 	$result  = mysql_query($sql);


echo "<table id='songblock' class='alternating' >";

while ($data = mysql_fetch_array($result)) {
	

    echo '
   <tr style="min-width:100%;">

        <td class="so"style="font-size:14px;min-width:329px;max-width:329px;">'.$data["Song"].'</td>
		<td class="add"><input id="add" type="button" value="Add" onclick="addToPlaylist();" /></td>
		<td class="ar" style="font-size:14px;">'.$data["Artist"].'</td>
        <td class="al"style="font-size:14px;">'.$data["Album"].'</td>
        <td class="ge" style="font-size:14px;">'.$data["Genre"].'</td>
        <td class="le" style="font-size:14px;">'.$data["Length"].'</td>
		<td class="ra" style="font-size:14px;">'.$data["Rating"].'</td>
    	<td></td><td></td>
</tr>';



}
echo '<tr></tr>';
echo '</table>';

$num_rows = mysql_num_rows($result);
if($num_rows == 0 ){
	echo '<div style="padding-left:20px;">No Results Found.</div>';
}

?>