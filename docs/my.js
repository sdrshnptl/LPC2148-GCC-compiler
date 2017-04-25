$(document).ready(function(){
$("button").click(function(){
	//https://data.sparkfun.com/input/Owav162LMOCZAGVy3wdQ?private_key=828l4zynK5CVyABkKm9D&temp=2.53
$.post("https://data.sparkfun.com/input/Owav162LMOCZAGVy3wdQ?private_key=828l4zynK5CVyABkKm9D",
{
temp: $("#test").val()
},
function(data){
alert("Data: " + $("#test").val() + " sent to sparkfun");
});
});
});
