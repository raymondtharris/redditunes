<?php
$con = mysql_connect("localhost","root","root");
if (!$con)
  {
  die('Could not connect: ' . mysql_error());
  }

mysql_select_db("mediaTest", $con);


//file loc
$file = $_POST['fileb'];


//Need File ID
//File_ID=Song_ID=x
//x= Rating_ID
//ADD +1 to rating value
$sql="SELECT Rating.Value FROM Rating,Song, File WHERE File.File_Loc LIKE '%".$file."' AND File.File_ID= Song.File_ID AND Song.Song_ID = Rating.Song_ID ";
$ratingVal =mysql_query($sql) or die(mysql_error());

while($rows=mysql_fetch_assoc($ratingVal)){
	foreach($rows AS $key => $ratingValfinal){
	}
}
$ratingValfinal = $ratingValfinal -1;

$sql2="UPDATE Rating SET Rating.Value= '$ratingValfinal' WHERE Rating.Song_ID = (SELECT File.File_ID FROM File WHERE File.File_Loc LIKE '%".$file."')";
mysql_query($sql2);
//Last to run, updates view
$sql3="CREATE OR REPLACE VIEW Info2 AS
SELECT AR.Name AS Artist, AL.Name AS Album, S.Name AS Song, S.Length AS Length, G.Name As Genre, AL.Cover_Art AS Art, F.File_loc AS Location, Rating.Value AS Rating
FROM Artist AR, Album AL, Song S, Genre G, File F, Rating
WHERE S.Album_ID = AL.Album_ID
AND AL.Artist_ID = AR.Artist_ID
AND AL.Genre_ID = G.Genre_ID
AND F.File_ID = S.Song_ID
AND S.Song_ID = Rating.Rating_ID
ORDER BY AR.Name;";

mysql_query($sql3);

$sql4 ="Select * From Info2 Where Song LIKE '%" . $_POST['value'] . "%' OR Album LIKE '%" . $_POST['value']  ."%' OR Artist LIKE '%" . $_POST['value'] ."%' OR Genre LIKE '%" . $_POST['value']  ."%'";
  // get results
 	$result  = mysql_query($sql4);
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

mysql_close($con);
?>