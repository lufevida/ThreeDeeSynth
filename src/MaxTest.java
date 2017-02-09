import com.cycling74.max.*;

public class MaxTest extends MaxObject {
	
	public void bang() {
		
		// This prints on the Max console.
		post("Hello, world!");
		
		// This sends a message out of the zeroth (leftmost) outlet
		outlet(0, "Hello, world!");
		
	}

}