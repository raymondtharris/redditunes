<?php
$con = mysql_connect("localhost","root","root");
if (!$con)
  {
  die('Could not connect: ' . mysql_error());
  }

mysql_select_db("mediaTest", $con);

$artist = $_POST['ArtistName'];
$info = $_POST['Info'];
$album = $_POST['AlbumName'];
$year = $_POST['Year'];
$song = $_POST['SongName'];
$length = $_POST['LengthM']. ':' .$_POST['LengthS'];
$genre = $_POST['Genre'];
$ftype = $_POST['ftype'];


if($genre == "Hip Hop"){
	$genre= '1';
}
else if($genre == "Rock"){
	$genre= '2';
}
else if($genre == "Metal"){
	$genre= '3';
}
else if($genre == "Pop"){
	$genre= '4';
}
else{
	$genre= '0';
}


$sql1="INSERT INTO Artist (Name,Info)VALUES ('$artist',' $info')";

$sql1a="SELECT Name FROM Artist  WHERE Name LIKE '$artist'";
$artistName =mysql_query($sql1a) or die(mysql_error());
while($rows=mysql_fetch_assoc($artistName)){
	foreach($rows AS $key => $artistNamefinal){
		if($artistNamefinal != $artist){
			mysql_query($sql1);
		}
	}
}

$sql1b="SELECT Artist_ID FROM Artist  WHERE Name LIKE '$artist'";
$artistID =mysql_query($sql1b) or die(mysql_error());
while($rows=mysql_fetch_assoc($artistID)){
	foreach($rows AS $key => $artistIDfinal){
		//echo "$value<br />\n";
	}
	//echo "<br />\n";
}

$sql2="INSERT INTO Album (Name, Year, Genre_ID, Artist_ID)
VALUES
('$album',' $year', '$genre', '$artistIDfinal')";

$sql2a="SELECT Name FROM Album  WHERE Name LIKE '$album'";
$albumName =mysql_query($sql2a) or die(mysql_error());
while($rows=mysql_fetch_assoc($albumName)){
	foreach($rows AS $key => $albumNamefinal){
		if($albumNamefinal != $album){
			mysql_query($sql2);
		}
	}
}

$sql2b = "SELECT Album_ID FROM Album  WHERE Name LIKE '$album'";
$albumID = mysql_query($sql2b) or die(mysql_error());
while($rows=mysql_fetch_assoc($albumID)){
	foreach($rows AS $key => $albumIDfinal){
		//echo "$value<br />\n";
	}
	//echo "<br />\n";
}

$sql3="SELECT Song_ID FROM Song  WHERE Name LIKE '$song'";
$songID =mysql_query($sql3) or die(mysql_error());
while($rows=mysql_fetch_assoc($songID)){
	foreach($rows AS $key => $songIDfinal){
		//echo "$value<br />\n";
	}
	//echo "<br />\n";
}

$sql3a="INSERT INTO Song (Name, Length, Album_ID,File_ID) VALUES ('$song','$length','$albumIDfinal','$songIDfinal')";

mysql_query($sql3a);

$sql4="INSERT INTO Rating (Song_ID,User_ID, Rating_ID) VALUES ('$songIDfinal', '2','$songIDfinal')";

mysql_query($sql4);


$sql5="SELECT COUNT(Song_ID)+1 FROM Song  WHERE Album_ID LIKE '$albumIDfinal'";
$fname =mysql_query($sql5) or die(mysql_error());
while($rows=mysql_fetch_assoc($fname)){
	foreach($rows AS $key => $fnamefinal){
		//echo "$value<br />\n";
	}
	//echo "<br />\n";
}


$sql5a="INSERT INTO File (Name,Type, File_ID) VALUES ('$fnamefinal', '$ftype','$songIDfinal')";

mysql_query($sql5a);

//Last to run, updates view
$sql6="CREATE OR REPLACE VIEW Info2 AS
SELECT AR.Name AS Artist, AL.Name AS Album, S.Name AS Song, S.Length AS Length, G.Name As Genre, AL.Cover_Art AS Art, F.File_loc AS Location, Rating.Value AS Rating
FROM Artist AR, Album AL, Song S, Genre G, File F, Rating
WHERE S.Album_ID = AL.Album_ID
AND AL.Artist_ID = AR.Artist_ID
AND AL.Genre_ID = G.Genre_ID
AND F.File_ID = S.Song_ID
AND S.Song_ID = Rating.Rating_ID
ORDER BY AR.Name;";

mysql_query($sql6);

echo '<img src="/media/uploadresults.png" border=0>' . "<br /><br />";
echo "The following details have been added:" . "<br /><br />";
echo "Song Name: " . $song . "<br />";
echo "Length: " . $length . "<br />";
echo "Test: ". $genre . "<br />";
echo "Year: " . $year . "<br />";
echo "Artist: ". $artist . "<br />";
echo "Album Name: ". $album . "<br />";
echo "Artist Info: ". $info . "<br /><br />";
echo "AlbumID: ". $albumIDfinal . "<br />";
echo "ArtistID: ". $artistIDfinal . "<br />";
echo "SongID: ". $songIDfinal . "<br />";
echo "Song Added" . "<br /><br />";




if ((($_FILES["file"]["type"] == "image/gif")
|| ($_FILES["file"]["type"] == "image/jpeg")
|| ($_FILES["file"]["type"] == "image/pjpeg"))

&& ($_FILES["file"]["size"] < 20000)){
  if ($_FILES["file"]["error"] > 0)
    {
    echo "Return Code: " . $_FILES["file"]["error"] . "<br />";
    }
  else
    {
    echo "Upload: " . $_FILES["file"]["name"] . "<br />";
    echo "Type: " . $_FILES["file"]["type"] . "<br />";
    echo "Size: " . ($_FILES["file"]["size"] / 1024) . " Kb<br />";
    echo "Temp file: " . $_FILES["file"]["tmp_name"] . "<br />";

    if (file_exists("upload/" . $_FILES["file"]["name"]))
      {
      echo $_FILES["file"]["name"] . " already exists. ";
      }
    else
      {
      move_uploaded_file($_FILES["file"]["tmp_name"],
      "upload/" . $_FILES["file"]["name"]);
      echo "Stored in: " . "/media/" . $_FILES["file"]["name"];
      }
    }
  }
else
  {
//  echo "Invalid file!" . "<br /><br />";
  }



  $url = htmlspecialchars($_SERVER['HTTP_REFERER']);
  echo "<a href='$url'>Click Here to return to Redditunes!</a>";

mysql_close($con);
?>


<html>
<head>
</head>
<body style="background-color:#222;">
</body>
</html>