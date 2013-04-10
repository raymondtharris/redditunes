<?php
  if(isset($_POST['submit'])){
  if(isset($_GET['go'])){
  if(preg_match("/^[  a-zA-Z]+/", $_POST['search'])){
  $name=$_POST['name'];
  //connect  to the database
  $db=mysql_connect  ("localhost", "root",  "root") or die ('I cannot connect to the database  because: ' . mysql_error());
  //-select  the database to use
  $mydb=mysql_select_db("mediaTest");
  //-query  the database table
  $sql="SELECT  * FROM Info WHERE Song LIKE '%" . $search .  "%' OR Artist LIKE '%" . $search ."%'";
  //-run  the query against the mysql query function
  $result=mysql_query($sql);
  //-create  while loop and loop through result set
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
  else{
  echo  "<p>Please enter a search query</p>";
  }
  }
  }
?>