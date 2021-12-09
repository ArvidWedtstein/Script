var open = false;
	
function Openchatbot() {
	
if (open == true) {
	console.log("close chatwindow");
	open = false;
	document.getElementById("chatwindow").style.display = "none";
} else {
	   console.log("open chatwindow");
	open = true;
	document.getElementById("chatwindow").style.animation = "animatetop 1s linear forward"; 
	document.getElementById("chatwindow").style.display = "block";
}
}