function init(){
	var down="mousedown";
	var up="mouseup";
	var currSong=document.querySelector("audio");
	currSong.load();
	if ('createTouch' in document) { down = "touchstart"; up ="touchend"; }
	var buttons = document.getElementsByClassName("button");
	
	for(var b=0; b<buttons.length; a++){
		buttons[b].addEventListener(up, function(evt) {toggleButtonAppearance(evt);}, false);
		buttons[b].addEventListener(down, function(evt) {toggleButtonAppearance(evt);}, false);
		
		switch(buttons[b].id){
			case "playPauseButton":
			buttons[b].addEventListener(up, function(evt){togglePlayPause(evt);}, false);
			break;
			
			case "nextButton":
			buttons[b].addEventListener(up, function(evt){toggleNext(evt);}, false);
			break;
			
			case "plusButton":
			buttons[b].addEventListener(up, function(evt){PlusVote(evt);}, false);
			break;
			
			case "minusButton":
			buttons[b].addEventListener(up, function(evt){minusVote(evt);}, false);
			break;
			
			case "uploadButton":
			buttons[b].addEventListener(up, function(evt){displayUploadForm(evt);}, false);
			break;
		}
	}
}

function toggleButtonAppearance(evt){
	var button = evt.target;
	var buttonState = button.className;
	button.className = buttonState.match(/active/) ? buttonState.split("active")[0] : buttonState + " active";
}
function loadAudio(evt){
	var currSong=document.querySelector("audio");
	currSong.load();
}
function playAudio(){
	var currSong=document.querySelector("audio");
	currSong.load();
	document.querySelector("audio").play();
	document.getElementByID("playPauseButton").className = "pause button showing";
	
}
function togglePlayPause(evt){
	var playPauseButton = evt.currentTarget;
	var currFile = document.querySelector("audio");
	currFile.load();
	
	if(currFile.paused)
		currFile.play();
		playPauseButton.className = "pause button showing";
		
	else
		currFile.pause();
		playPauseButton.className = "play button showing";
		
}
function displayUploadForm(evt){
	var uploadFormButton = evt.currentTarget;
	var uploadForm = docuemnt.querySelector("Form");
	
	if(uploadForm)
}


function nextTrack(){
	var currFile = document.querySelector("audio");
	
}
