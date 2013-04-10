<?php
//if we got something through $_POST
//if (isset($_GET['search'])) {
    // here you would normally include some database connection
	$db=mysql_connect ("localhost",  "root", "root") or die ('I cannot connect  to the database because: ' . mysql_error());
	$mydb=  mysql_select_db("mediaTest");    
    // never trust what user wrote! We must ALWAYS sanitize user input
    
//	$word = mysql_real_escape_string($_GET['search']);
    // build your search query to the database
  $sql ="Select * From Info Where Song LIKE '%" . $_POST['search'] . "%' OR Album LIKE '%" . $_POST['search']  ."%' OR Artist LIKE '%" . $_POST['search'] ."%' OR Genre LIKE '%" . $_POST['search']  ."%'";
    // get results
   	$result  = mysql_query($sql);
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
   // echo $end_result;
    } else {
        echo '<li>No results found</li>';
    }
//}
?>