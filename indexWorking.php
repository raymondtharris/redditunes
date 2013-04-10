<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">

<html lang="pt" dir="ltr">

    <head>

        <title>ReddiTunes</title>

        <meta HTTP-EQUIV="Content-Type" CONTENT="text/html; charset=ISO-8859-1">
        <meta http-equiv="Content-Style-Type" content="text/css">
		<link rel="stylesheet" type="text/css" href="m_cloud_Vb.css"/>
		<script type="text/javascript" src="script2.js"></script>
		

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
            });



        </script>

</head>

    <body style="margin:0;padding:0px;width:100%;height:100%;background-color:#FFFFFF;" onload="init();">
		<div id="framecontentTop">
		<div class="main">


			<div id="h_left" >
				<div style="position:absolute;top:0px;left:0px;height:100px;width:899px;"><img height=100px width=600px src="/media/banner.png"/>
				</div>
				
						<form id="loginDiv" class="login" method="post" action="login.php" >
						<input type="text" name="Username" id="Username"  ></input>	
						<input type="password"name="UserPassword"  id="UserPassword" style="margin-top:12px;"></input>
						 <input type="submit" id="loginButton" name="Submit" Value="Login"></input>

						</form>
				


			</div>
			<div id="h_right">

				<input type="button" onclick="uFormToggle()" value="Upload" id="upButton"></input >


					
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
		


		
		 <div class="searchBox">
	             <form id="lets_search" action="" >
	                <input type="text" name="str" id="str" class="bar">
	                <input type="submit" value="Search" name="send" id="send" class="searchGo">
	             </form>

		</div>
	
		<div id="maincontent">
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
				  echo $row['Info'] . " " ;
				  echo "</div>";
				  }

				mysql_close($con);
				?>

			</div>
			<div id="tag_Box">
				<table><tr style="min-width:100%;">

				        <td style="font-size:18px;">Song</td>
						<td class="add">+</td>
						<td class="ar" style="font-size:18px;">Artist</td>
				        <td class="al"style="font-size:18px;">Album</td>
				        <td class="le" style="font-size:18px;">Genre</td>
				        <td class="le" style="font-size:18px;">Length</td>
				    	<td></td><td></td>
				</tr>
				</table>
			</div>
            <div id="search_results" style="position:absolute;left:601px;margin-top:31px;top:2px;max-width:120%; right:-20px;max-height:96%;overflow:auto;">
				<?php
			$link = mysql_connect('localhost','root', 'root');
				if (!$link){
				  die('Could not connect: ' . mysql_error());
				  }

				mysql_select_db("mediaTest", $link);
			
				$sql ="Select * From Info Where Song LIKE '%" . $_POST['value'] . "%' OR Album LIKE '%" . $_POST['value']  ."%' OR Artist LIKE '%" . $_POST['value'] ."%' OR Genre LIKE '%" . $_POST['value']  ."%'";
				  // get results
				 	$result  = mysql_query($sql);


				echo "<table id='songblock' class='alternating' >";

				while ($data = mysql_fetch_array($result)) {


				    echo '
				   <tr style="min-width:100%;">

				        <td style="font-size:18px;min-width:300px;">'.$data["Song"].'</td>
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
				mysql_close($link);
				?>            	

            </div>
        
			
		</div>
	

       
        
        


    </body>

</html>