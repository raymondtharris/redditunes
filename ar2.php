	<?php
	$con = mysql_connect("localhost","root","root");
	if (!$con)
	  {
	  die('Could not connect: ' . mysql_error());
	  }

	mysql_select_db("mediaTest", $con);

	$result = mysql_query("	SELECT Info, Name, Logo FROM Artist WHERE Name like 'Thomas Giles'");
	


	while($row = mysql_fetch_array($result))
	  {
		echo "<div id='A_name' class='A_Nametext'>". $row['Name'] . "</div>";
		echo "<div id='A_pic' class='A_image'><center><img src='". $row['Logo'] . "'></center></div>";
		echo "<div id='A_Info'>";
	  echo $row['Info'] . " " ;
	  echo "</div>";
	  }

	mysql_close($con);
	?>