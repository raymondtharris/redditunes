<?php

mysql_connect("localhost", "root", "root");

$name= mysql_real_escape_string($_POST['name']);
$db = mysql_select_db("mediaTest");	
echo $name;

$query = mysql_query("SELECT * FROM Info WHERE SONG LIKE '%" $name "%' OR Album LIKE '%" $name  "%' OR Artist LIKE '%" $name "%' OR Genre LIKE '%" $name  ."%'");

$result  = mysql_query($query);
echo "<table id='songblock' class='alternating' >";

while($row = mysql_fetch_array($result))
  {
  echo "<tr>";
  echo "<th >" . $row['Song'] . "</th>";
  echo "<th class='add' ><input id='add' type='button' value='Add' onclick='addToPlaylist();' /></th>";
  echo "<th class='ar'>" . $row['Artist'] . "</th>";
  echo "<th class='al'>" . $row['Album'] . "</th>";
  echo "<th class='le'>" . $row['Length'] . "</th>";
  echo "<th class='le'>" . $row['Genre'] . "</th>";
  echo "<th ></th><th ></th>";

  echo "</tr>";
  }
echo "</table>";

}

?>