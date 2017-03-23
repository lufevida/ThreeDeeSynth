// TODO: reverse the Jitter matrices

// Main methods
// .peek(1, index, count) // gets a sample
// .poke(1, 0, samples) // sets a sample
// .send("fill", "sinc", 20, 1) // sends a message
// post(String) // prints to the console
// outlet(#, value) // outputs through specified outlet

inlets = 4;

outlets = 3;

var buf = new Buffer("vega")


function bang() {
	post(buf.length());
	post(buf.framecount());
	post(buf.channelcount());
	
	var i = 0;
	
	for (i = 0; i < 20; i++) {
		
		post(buf.peek(1, i).toString() + "\n");
		
	}
	
}
	
	
function showMe() {
	
	var array = [0, 1, 2, 3];
	
	
	
	outlet(0, "Hi, James.");
	
}