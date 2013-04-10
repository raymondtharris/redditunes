<html>
<head>
<title>ReddiTunes</title>
<link rel="stylesheet" type="text/css" href="m_cloud_Vb.css"/>


<script type="text/javascript" src="script2.js"></script>
<script type="text/javascript" src="jquery.js"></script>
<!--
<script type="text/javascript">

$(document).ready(function() {

    $("#searchGo").bind('submit',function() {
        // getting the value that user typed
        var searchString    = $("#bar").val();
        // forming the queryString
        var data   = 'search='+ searchString;

        // if searchString is not empty
        if(searchString) {
            // ajax call
            $.ajax({
                type: "POST",
                url: "search.php?go",
                data: data,
			//	dataType: 'html',
			
               success: function(html){ // this happens after we get results
	               $("#result_Box").html('');
                  // $("#result_Box").html(html);
                   $("#result_Box").append(html);
					$("result_Box").show();
              } 

            });
        }
        return false;
    });
});

</script>
-->
<script type="text/javascript">

	function results(){
		$('#result_Box').hide();
		$.post('search.php', {name: sForm.name.value},
			function(output){
				$('#result_Box').html(output).fadeIn(1000);
				
			});
	}
</script>
</head>


<body onload="init();">
	<div id="framecontentTop">
	<div class="main">

	 
		<div id="h_left" >
			<div style="position:absolute;top:0px;left:0px;height:100px;width:899px;"><img height=100px width=600px src="/media/banner.png"/>
			</div>
			<div id="loginDiv">
				<div class="login">
					<form method="post" action="login.php">
					<input type="text" name="Username" id="Username"  ></input>	
					<input type="password"name="UserPassword"  id="UserPassword" style="margin-top:12px;"></input>
					 <input type="submit" id="loginButton" name="Submit" Value="Login"></input>
					
					</form>
				</div>
			</div>
			
			
		</div>
		<div id="h_right">

			<input type="button" onclick="uFormToggle()" value="Upload" id="upButton"></input >
			
			
			<div  >
				<form name="sForm" id="searchBox"><!-- method="post" action="search.php?go">-->
				<input type="text" id="bar" class='bar' size="10" name="name"></input>		
				<input id='searchGo' type='button'  name="submit" value='Search' onClick="results();"/>					
				
				</form>
			</div>			
		</div>

	</div>
	
	</div>

	<div id="framecontentBottom">
	<div class="main">
	<div id="f_playlistBlock"> </div>
	
	<!-- Controller -->
	<div id="f_controller">
		<div id="r_box">
		<div id="rater">
		<input id='plusButton' type='submit' value='+1' onclick='plusONE();' />		
		<input id='minusButton' type='submit' value='-1' onclick='minusONE();' />		
		</div>	
		<div id="percentage"></div>	
			
		</div>
		
			
		<div id="c_box">
		<div id="seek">
			<div id="progsShow"></div>	
		</div>	
		<div id="playPauseButton" class="play button hidden" ></div>
		<div id="nextButton" class="next button hidden"></div>
		<audio id="audio" onload="addMyListeners();" src="media/Thomas_Giles/Pulse/01_Sleep_Shake.m4a"  ></audio>
		<div id="next"></div>
		<div id="infoDisplay"></div>	
		

		</div>
	</div>
	
	

	</div>
	</div>

	<!--Content Block-->

	<div id="maincontent">
	<div class="main">
	<!--Artist Info During now playing -->
	<div id="c_left" class="minwidth">
		<?php
		$con = mysql_connect("localhost","root","root");
		if (!$con)
		  {
		  die('Could not connect: ' . mysql_error());
		  }

		mysql_select_db("mediaTest", $con);

		$result = mysql_query("SELECT Info, Name, Logo FROM Artist WHERE Name like 'Thomas Giles'");

		while($row = mysql_fetch_array($result))
		  {
			echo "<div id='A_name' class='A_Nametext'>". $row['Name'] . "</div>";
			echo "<div id='A_Pic' class='A_image'><center><img src='". $row['Logo'] . "'></center></div>";
			echo "<div id='A_info'>";
		  echo $row['Info'] . " " . $row['Info'];
		  echo "</div>";
		  }

		mysql_close($con);
		?>
		
			 
	</div>
	
	<!--Query Results Pane -->
	<div id="c_right" class="minwidth">
		<div id="tag_Box">
			
			
		</div>
		<div id="result_Box">
			<div id="albumBlock">
				<div id="coverBlock"></div>
				<table id="songBlock" class="alternating">
					<!--  
		<input id="add" type="button" value="Add" onclick="addToPlaylist();" />
				-->
			</div>

			<?php
		$link = mysql_connect('localhost','root', 'root');
			if (!$link){
			  die('Could not connect: ' . mysql_error());
			  }

			mysql_select_db("mediaTest", $link);
			$result = mysql_query("SELECT * FROM Info");
			echo "<table border='1'  style='position:fixed;top:99px;left:600px;width:100%;height:33px;background-color:#ccc;border-left-style:solid;border-bottom-style:solid;border-color:#000;' >
					<tr >
					 	<th >Song</th>
						<th ><center>+</center></th>
						<th>Artist</th>
						<th>Album</th>
						<th>Length</th>
						<th>Genre</th>
						<th></th>
						
					</tr >
				  </table>";
			
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

			mysql_close($link);
			?>
	

		</div>
		
		<div id="uploadForm">
			<form action="insert.php" method="post">
				<div style="position:absolute;top:50px;left:20px;">Song: <input size="32" type="text" name="SongName" /></div>
				<div style="position:absolute;top:50px; left:260px;"><label for="file">File:</label>
				<input type="file" name="file" id="file" /><br>
				</div>
				<div style="position:absolute;top:200px; left:400px;">Type: <select>
							<option name="Type" value="m4a">m4a</option>
							<option name="Type" value="mp3">mp3</option>
					</select>
				</div>
				<div style="position:absolute;top:100px; left:20px;">
				Album: <input size="30" type="text" name="AlbumName" />
				</div>
				<div style="position:absolute;top:100px; left:260px;">
				<label for="file">Cover Art:</label>
				<input type="file" name="CoverArt" id="file" /><br>
				</div>
				<div style="position:absolute;top:150px; left:20px">
				Artist: <input type="text"  size="50"name="ArtistName"/>
				</div>
				<div style="position:absolute;top:200px;left:20px">
				Length: <input type="text" size="3" maxlength="2" name="LengthM" />
				<input type="text" size="3" maxlength="2" name="LengthS" />
				</div>
				<div style="position:absolute;top:200px; left:220px">
				Year: <input type="text" name="Year" />
				</div>
				<div style="position:absolute;top:250px">
				<textarea id="a_Uinfo"  type="textarea" name="Info">Artist Info</textarea >
					</div>
					<div style="position:absolute;top:550px;">
				<button id='newCancel' type="button" onclick="uFormToggle();" >Cancel</button>	<input type="submit" value="OK" id="newSubmit" />
				</DIV>
			</form>
		</div>
	</div>
	
	</div>
	</div>
</body>

</html>