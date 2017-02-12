// TODO: reverse the Jitter matrices

// Main methods
// .peek(1, index, count) // gets a sample
// .poke(1, 0, samples) // sets a sample
// .send("fill", "sinc", 20, 1) // sends a message
// post(String) // prints to the console
// outlet(#, value) // outputs through specified outlet

outlets = 4

var buf = new Buffer("vega")


function bang() {
	post(buf.length());
	post(buf.framecount());
	post(buf.channelcount());
	
	var i = 0;
	
	for (i = 0; i < buf.length(); i++) {
		
		post(buf.peek(1, i).toString() + "\n");
		
	}
	
}