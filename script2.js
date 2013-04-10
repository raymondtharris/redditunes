function init() {  
  var down = "mousedown"; var up = "mouseup"; 




  var buttons = document.getElementsByClassName("button");
	
  for (var b = 0; b < buttons.length; b++) {
    buttons[b].addEventListener(up, function(evt) {toggleButtonAppearance(evt);}, false);
    buttons[b].addEventListener(down, function(evt) {toggleButtonAppearance(evt);}, false); 
    
    switch (buttons[b].id) {   
      
      case "status":
        buttons[b].addEventListener(up, function(evt) {loadAudio(evt);}, false);
        break;
      
      case "playPauseButton":
        buttons[b].addEventListener(up, function(evt) {togglePlayPause(evt);}, false); 
        break;

		case "nextButton":
	        buttons[b].addEventListener(up, function(evt) {toggleNext(evt);}, false); 
	        break;
	
		case "plusButton":
	        buttons[b].addEventListener(up, function(evt) {votePlus(evt);}, false); 
	        break;
		
		case "minusButton":
	        buttons[b].addEventListener(up, function(evt) {voteMinus(evt);}, false); 
	        break;

		case "musicTabButton":
		    buttons[b].addEventListener(up, function(evt) {gotoMusicTab(evt);}, false); 
		    break;
			
		case "musicVieoTabButton":
		    buttons[b].addEventListener(up, function(evt) {gotoMusicVideoTab(evt);}, false); 
		    break;
		
		case "UploadButton":
		    buttons[b].addEventListener(up, function(evt) {Upload(evt);}, false); 
		    break;
      
    }
  }
	myaudio.addEventListener('timeupdate', function(){
		var l = myaudio.duration;
		var s = myaudio.currentTime;
		var progress = (s/l) * 100;
		$('#progressShow').css({'width' : progress * 2});
		var mins =  parseInt(s/60);
		var secs = parseInt(secs - (mins * 60));
		
	}, false);

	var audio = document.getElementsByTagName('audio')[0];
	
	audio.addEventListener('timeupdate', updateProgress, false);
	audio.addEventListener('durationchange', updateProgress, false);
}

function prog(){
	var partDone = audio.currentTime / audio.duration;
	progressShow.style.width = partDone + '%';
}

function toggleButtonAppearance(evt) {  
  var button = evt.target;
  var buttonState = button.className;
  button.className = buttonState.match(/active/) ? buttonState.split("active")[0] : buttonState + " active";
}
function loadAudio(evt) {
  evt.target.className = "showing";
  
  var myaudio = document.querySelector("audio");
  myaudio.load();
}

function playaudio(playlist) {
    
 document.querySelector("audio").play(); 
 document.getElementById("playPauseButton").className = "play:before button showing"; 
 document.querySelector("audio").onend= function(){
	var n=0;
	document.querySelector("audio").src= document.write(playlist[n]);
	document.querySelector('audio').play();
	n = n+1;
}

 	
  if (document.querySelector("video").webkitSupportsFullscreen) {
    document.getElementById("fullscreenButton").className = "fullscreen button showing";
  }
	
}



function togglePlayPause(evt) {
  var playPauseButton = evt.target;
  var myaudio = document.querySelector("audio");

  
  if (myaudio.paused) {
    myaudio.play();
    playPauseButton.className = "pause button showing";
  }
  else {
    myaudio.pause();
    playPauseButton.className = "play button showing";
  }
}
function toggleNext(evt){
	var nextButton =evt.target;
	var myaudio = document.querySelector("audio");
	if (myaudio.paused) {
	    nextButton.className = "next button showing";
	  }
	  else {
	    
	    nextButton.className = "next button showing";
	  }
}

function uFormToggle(){
	var a = document.getElementById("uploadForm");
	var b = document.getElementById("upButton");
	
	
	if(a.style.display == "block"){
		a.style.display= "none";
	}
	else{
		a.style.display ="block";
		
	}
}



function addToList(newSong){
	var i = 3;
	playlist[i]= newSong;
	i= i+1;  
}







