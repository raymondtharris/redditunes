<?php

include('lock.php');

?>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">

<html lang="pt" dir="ltr">

    <head>

        <title>ReddiTunes</title>

        <meta HTTP-EQUIV="Content-Type" CONTENT="text/html; charset=ISO-8859-1">
        <meta http-equiv="Content-Style-Type" content="text/css">
		<link rel="stylesheet" type="text/css" href="m_cloud_Vb.css"/>
		
		
		<link href="skin/jplayer.blue.monday.css" rel="stylesheet" type="text/css" />
		
		<script type="text/javascript" src="script2.js"></script>
		
		<script type="text/javascript" src="js/jquery.jplayer.min.js"></script>



        <!-- JQUERY FROM GOOGLE API -->
        <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.5.2/jquery.min.js"></script>

        <script type="text/javascript">
            $(function() {
				
                $("#lets_search").bind('submit',function() {
                    var value = $('#str').val();
                    $.post('db_query.php',{value:value}, function(data){
                        $("#search_results").html(data);
                    });
                    return false;
                });
/*
				$("#newSubmit").bind('submit', function(){
						var sName = $('input[name=SongName]');
					    var file = $('input[name=file]');
					    var type = $('select[name=type]');
						var Album = $('input[name=AlbumName]');
					    var cArt = $('input[name=CoverArt]');
					    var comment = $('textarea[name=comment]');
				});
*/
				
				//	playlistArray.push(file_Loc);
				//	var aSong = $('.aso').val();
				//	var User =  <?php echo $login_session; ?>;
				//	$.post('addto.php', {aSong:aSong , User:User}, function(data){
				//		$(".innertubeb").html(data);
				//	});
					//return false;
			
				/*
				$("#plusButton").bind('submit', function(){
					var audioFile = $("#audioPlayer").src();
					var User =  <?php echo $login_session; ?>;
					$.post('', function(){
						
					});
				});
*/				
            });



        </script>

<script type="text/javascript">
/*
var playlistArray= new Array();
	$(function() {
			$("#add").click( function(){
				var aSong = $('#asong').text();
				var User =  $('#user').text();
				playlistArray.push($('#fileLoc').text());
				//alert( $('#fileLoc').text());
				$.post('addto.php', {aSong: aSong, User: User }, function(data){
					$("#playlistS").html(data);
					
				});
				return false;
			
			});
			
		
			

	});
*/
</script>
<script type="text/javascript">
	$(function() {
		$("#plusButton").click( function(){
			//alert( $('audio').attr('src'));
			var filea = $('audio').attr('src');
            $.post('plusOne.php',{filea:filea}, function(data){
				$('#search_results').html(data);
			
		});
		return false;
	});	
});
</script>

<script type="text/javascript">
	$(function() {
		$("#minusButton").click( function(){
			//alert( $('audio').attr('src'));
			var fileb = $('audio').attr('src');
            $.post('minusOne.php',{fileb:fileb}, function(data){
				$('#search_results').html(data);
			
		});
		return false;
	});	
});
</script>

<script type="text/javascript">
	$(function() {
		$("#playPauseButton").click( function(){
		//	alert( $('audio').attr('src'));
			var filec = $('audio').attr('src');
            $.post('infoPost.php',{filec:filec}, function(data){
				$('#infoDisplay').html(data);
				$.post('artist.php', {filec:filec},function(data2){
					$('#c_left').html(data2);
				});	
		});
		return false;
	});	
});
</script>


<script type="text/javascript">
 		var arr = new Array();
		arr[0]= "media/music/animals_as_leaders/animals_as_leaders/1.m4a";
		arr[1]= "media/music/black_eyed_peas/the_e.n.d./12.mp3";
		arr[2]="media/music/black_eyed_peas/the_e.n.d./1.mp3";
		arr[3]="media/music/thomas_giles/pulse/4.m4a";
		arr[4]="/media/music/the_fall_of_troy/the_fall_of_troy/7.m4a";
		arr[5]="/media/music/between_the_buried_and_me/alaska/2.m4a";
		arr[6]="/media/music/tesseract/concealing_fate/2.m4a";
		arr[7]="/media/music/black_eyed_peas/the_e.n.d./2.mp3";
		arr[8]="/media/music/black_eyed_peas/the_e.n.d./3.mp3";
		arr[9]="/media/music/black_eyed_peas/the_e.n.d./5.mp3";
		arr[10]="/media/music/karnivool/sound_awake/4.m4a";
		arr[11]="/media/music/the_fall_of_troy/doppelganger/8.m4a";
		arr[12]="/media/music/the_fall_of_troy/manipulator/8.m4a";
		arr[13]="/media/music/periphery/periphery/8.m4a";
		arr[14]="/media/music/tesseract/concealing_fate/3.m4a";
		arr[15]="/media/music/kanye_west/808s_and_Hearbreak/11.mp3";
		arr[16]="/media/music/kanye_west/808s_and_Hearbreak/1.mp3";
		arr[17]="/media/music/bruno_mars/Doo-Wops_&_Hooligans/4.mp3";
		arr[18]="/media/music/black_eyed_peas/the_e.n.d./9.mp3";
		var i=0;
		$(document).ready(function(){
		        $('#nextButton').click(function() {
		            var id=this.id;
		            $('#audio').attr("src",arr[i++]);
		            var sr = $('#audio').attr("src");
		           	//alert(sr);
					$('#playPauseButton').removeClass("pause button showing").addClass("play button showing");
					//$("#audio").load();
		            $("#audio").play();
					$.post('artist.php', {sr:sr},function(data){
						$('#clean').html(data);
					});
					return false;
				});
				
				$("#add").each( function(){
				//	var= file_Loc = $('#fileLoc').text();
					$(".add").click(function(){
						//alert($(this).text());
						var fileadd = $(this).text();
						var User =  $('#user').text();
						var location = new String();
						location = $(this).text();
						arr.push(fileadd);
					//	$.post('playlistadd.php', {fileadd:fileadd, User:User}, function(data){
					//		$('#playlistS').html(data);
					//	});
					//	return false;
						});
					});
		      });
		
		
    </script>




</head>

    <body style="margin:0;padding:0px;width:100%;height:100%;background-color:#FFFFFF;" onload="init();" onload="myAddListener();">
		<div id="framecontentTop">
		<div class="main">


			<div id="h_left" >
				<div style="position:absolute;top:0px;left:0px;height:100px;width:899px;"><img height=100px width=600px src="/media/banner.png"/>
				</div>
				<div id="loginDiv" class="login">
					<div id="iCon"></div>
					<h3 style="margin-left:110px;">Welcome <div id="user"> <?php echo $login_session; ?></div> </h3> 
					<a href="logout.php"><div id="logOut">Sign Out</div></a>
					
				</div>
						
				<!--		<form  method="post" action="login.php" >
						<input type="text" name="Username" id="Username"  ></input>	
						<input type="password"name="UserPassword"  id="UserPassword" style="margin-top:12px;"></input>
						 <input type="submit" id="loginButton" name="Submit" Value="Login"></input>

						</form>
				-->


			</div>
			<div id="h_right">

				<input type="button" onclick="uFormToggle()" value="Upload" id="upButton"></input >
                <!--<input type="button" onclick="uFormToggle()" value="About" id="AboutButton"></input >
-->
					
			</div>

		</div>

		</div>
		
		<div id="framecontentBottom">
		<div class="main">
	<!--	
			<div id="f_playlistblock" style="overflow:auto;">

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
	/*
					$query = "SELECT Info.Artist, Info.Song, Album.Cover_Art, FROM Info, Song, Playlist, Song_Playlist, User, Album WHERE Info.Song  = Song.Name AND Song.Song_ID = Song_Playlist.Song_ID AND User.Username  = 'NicoleK' AND User.User_ID  = Playlist.User_ID AND Song_Playlist.Song_Playlist_ID=1 AND Info.Album = Album.Name";
	*/			
					$query2="SELECT Info.Artist, Album.Cover_Art, Info.Song FROM Info, Album WHERE Album.name = Info.Album ";
						$result  = mysql_query($query2);


			/*
					echo'<ul class="pList">';
			*/
			echo'<table ><tr >';

					while ($data = mysql_fetch_array($result)) {
						/*
						echo'<li class="pListBox"><div><img height=40px width=40px src='.$data["Cover_Art"].'></div><div>'.$data["Song"].'</div><div><marquee>'.$data["Artist"].'</marquee></div></li>';
						*/
						echo '<td style="color:#fff;"><img height=60px width=60px src='.$data["Cover_Art"].'> </td>';

					}

				//	echo'</ul>';
				echo '</tr></table>';
				?>

				 </div>
-->
		<!-- Controller -->


<div id="framecontentb">
<div class="innertubeb">

	<div id="f_controller">
				<div id="r_box">
				<div id="rater">
				<input id="plusButton" type='submit' value='+1'  />		
				<input id='minusButton' type='submit' value='-1'  />		
				</div>	
				<div id="percentage"></div>	

				</div>


				<div id="c_box">
				
				<div id="seek">
					<div id="progsShow"></div>	
				</div>	
				<form>
				<div id="playPauseButton" class="play button hidden" ></div>
				<div id="nextButton" class="next button hidden"></div>
				</form>
				<audio id="audio"  src="media/music/Thomas_Giles/Pulse/1.m4a" ></audio>
				<div id="next" ></div>
				<div id="infoDisplay"></div>	
				
				
				

				</div>
			</div>
			
	
			
			
			
</div>
</div>


<div id="maincontentb">
<div class="innertubeb" id="playlistS">
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

			$query = "SELECT Info2.Artist, Info2.Song, Info2.Cover_Art, FROM Info2,Song ,User, Playlist, Song_Playlist WHERE Info2.Song =Song.Name And Song.Song_ID = Song_Playlist.Song_ID "
			;
		
			$query2="SELECT Info.Artist, Album.Cover_Art, Info.Song FROM Info, Album WHERE Album.name = Info.Album AND Info.Artist = 'Thomas Giles'";
				
			$res2 =mysql_query("select Info2.Artist, Info2.`Song`, Info2.`Art` From Info2, Song, User, Playlist, Song_Playlist , File
			Where User.Username = '". $login_session ."'
			And User.`User_ID` = Playlist.`User_ID`
			And Playlist.`Playlist_ID` =Song_Playlist.`Playlist_ID`
			And Song.`Name` = Info2.Song
			And Song.Song_ID = Song_Playlist.Song_ID
			Group by Song.Name
			Order by Song_Playlist.Track_Number
			
			");	
				
				$result  = mysql_query($query);
				
				

	/*
			echo'<ul class="pList">';
	*/
	echo'<table ><tr >';

			while ($data = mysql_fetch_array($res2)) {
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
		?>
		
		
	
		
</div>
</div>







		</div>
		
		</div>
		


		
		 <div class="searchBox">
	             <form id="lets_search" action="" >
	                <input type="text" name="str" id="str" class="bar" value="What would you like to Search For?">
	                <input type="submit" value="Search" name="send" id="send" class="searchGo" >
	             </form>

		</div>
	
		<div id="maincontent">
			<div id="c_left" class="minwidth">
			<!--	
				
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
				-->
				<div id='A_pic' class='A_image'><center><img height=600px width=600px src="media/about.png"></center></div>
				<div id="message"> </div>
			</div>
			
			<!--
			<div id="tag_Box">
				<table><tr style="min-width:100%;">

				        <td style="font-size:14px;padding-top:10px; width:420px; ">Song</td>
						<td style="font-size:14px;padding-top:10px;" class="add">+</td>
						<td style="font-size:14px;padding-top:10px;" class="ar" style="font-size:14px;">Artist</td>
				        <td style="font-size:14px;padding-top:10px;" class="al"style="font-size:14px;">Album</td>
				        <td style="font-size:14px;padding-top:10px;" class="ge" style="font-size:14px;">Genre</td>
				        <td style="font-size:14px;padding-top:10px;" class="le" style="font-size:14px;">Length</td>
				        <td  style="font-size:14px;padding-top:10px;"class="ra" style="font-size:14px;">Rating</td>
				    	<td></td><td></td>
				</tr>
				</table>
			</div>
			-->
            <div id="search_results" style="position:absolute;left:601px;margin-top:-2px;top:2px;max-width:120%; right:-20px;max-height:100%;overflow:auto; font-size:14px;">
	
	
	
				<?php
			$link = mysql_connect('localhost','root', 'root');
				if (!$link){
				  die('Could not connect: ' . mysql_error());
				  }

				mysql_select_db("mediaTest", $link);
			
				$sql ="Select * From Info2 Where Song LIKE '%" . $_POST['value'] . "%' OR Album LIKE '%" . $_POST['value']  ."%' OR Artist LIKE '%" . $_POST['value'] ."%' OR Genre LIKE '%" . $_POST['value']  ."%'";
				  // get results
				 	$result  = mysql_query($sql);


				echo "<table id='songblock' class='alternating' >";

				while ($data = mysql_fetch_array($result)) {


				    echo '
				   <tr style="min-width:100%;">

				        <td name="aSong" class="aso" style="font-size:14px;min-width:300px;"><div id="asong">'.$data["Song"].'</div></td>
						<td class="add"><input id="add" type="button" value="Add" /> <div id="fileLoc" style="display:none;">'.$data["Location"].'</div></td>
						<td name="aArtist"class="aar" style="font-size:14px;">'.$data["Artist"].'</td>
				        <td name="aAlbun" class="aal"style="font-size:14px;">'.$data["Album"].'</td>
				        <td name="aGenre" class="age" style="font-size:14px;">'.$data["Genre"].'</td>
				        <td name="aLength" class="ale" style="font-size:14px;">'.$data["Length"].'</td>
				        <td name="aRating" class="ara" style="font-size:14px;">'.$data["Rating"].'</td>
				    	<td></td><td></td>
				</tr>';



				}
				echo '<tr></tr>';
				echo '</table>';
				mysql_close($link);
				?>            	
						

            </div>
        		<div >
					<form  id="uploadForm" action="insert.php" method="post">
						<div style="position:absolute;top:30px;left:20px;"><img src="/matt_test/media/upload.png"></div>
						<div style="position:absolute;top:150px;left:20px;">Song: <input size="32" type="text" name="SongName" /></div>
						<div style="position:absolute;top:150px; left:260px;"><label for="file">File:</label>
						<input type="file" name="file" id="file" /><br>
						</div>
						<div style="position:absolute;top:175px; left:20px;">
						File Type: <input size="30" type="text" name="ftype" />
						</div>
						<div style="position:absolute;top:200px; left:20px;">
						Album: <input size="30" type="text" name="AlbumName" />
						</div>
						<div style="position:absolute;top:225px; left:20px;">
						Genre: <input size="30" type="text" name="Genre" />
						</div>
						<div style="position:absolute;top:200px; left:260px;">
						<label for="file">Cover Art:</label>
						<input type="file" name="CoverArt" id="file" /><br>
						</div>
						<div style="position:absolute;top:250px; left:20px">
						Artist: <input type="text"  size="50"name="ArtistName"/>
						</div>
						<div style="position:absolute;top:300px;left:20px">
						Length: <input type="text" size="3" maxlength="2" name="LengthM" />
						<input type="text" size="3" maxlength="2" name="LengthS" />
						</div>
						<div style="position:absolute;top:300px; left:220px">
						Year: <input type="text" name="Year" />
						</div>
						<div style="position:absolute;top:350px">
						<textarea id="a_Uinfo"  type="textarea" name="Info">Artist Info</textarea >
							</div>
							<div style="position:absolute;top:550px;">
						<button id='newCancel' type="button" onclick="uFormToggle();" >Cancel</button>	<input type="submit" value="OK" id="newSubmit" />
						</DIV>
					</form>
				</div>
		
			
		</div>
	

<!--       	
        <div style="height:600px;width:400px;background-color:#fff;color:#000;position:absolute;top:0px;" id="clean"></div>
    -->    


    </body>

</html>
