import com.cycling74.max.*;
import com.cycling74.msp.*;
import com.cycling74.jitter.*;

/*
 * Azimuth is the angle from left to right. It goes from -90deg (=straight left) to +90deg (=straight right).
 * You might say that azimuth describes a point on a semicircle. A semicircle which is rotated by elevation degrees
 * around an (imaginary) axis going through the subject's ears. In the CIPIC HRTF database, elevation goes
 * from -45deg (down front) to +230.625deg (down back). In figure 1 (taken from the database documentation)
 * you can see how the measurement points in the database are distributed – notice the 'missing angle' below
 * the subject. However, in this binaural panner, the data has been interpolated so that elevation goes all the way
 * around (all 360 degrees). Furthermore, the data has been interpolated (using a modified version of the matlab scripts
 * accompanying the database) in order to achieve a finer grain of HRTFs. In the CIPIC database, azimuth is covered by
 * 25 measurement points which in this version have been subdivided/interpolated into 73 (regular angular spacing = 2.5deg)
 * so azimuth 0 equals -90deg (straight left), azimuth 72 equals +90deg (straight right) and azimuth 36 is located on the
 * median plane. In the CIPIC database, elevation is covered by 50 measurement points, which in this version have been subdivided
 * into 128, covering also the missing angle (angular spacing = 2.8125deg) – so that elevation 0 equals -45deg/+315deg (down front),
 * elevation 127 equals -47.28125deg/+312.1875deg (next to elevation point 0), elevation 16 is horizontal front and elevation 80 is
 * horizontal back. It should be mentioned that the data filling the missing angle, obviously have been interpolated between
 * measurements often very far apart. Therefore, this data may often 'sound' strange, which, actually, is not that strange when
 * you think about it. The method for interpolation has been this: first the impulse responses are aligned in time
 * (so that they start at the same time – ITD is saved separately) and then they are simply interpolated sample-wise
 * (still in time-domain).
 * 
 * The jit.matrix objects load and contain the HRTFs for all directions for a given subject in the CIPIC HRTF database.
 * In other words, they are the global banks of information in which each panner finds the relevant HRTF for it's specific
 * azimuth and elevation. They contain the HRTF for each 73 azimuths and 128 elevations. The first cell contains the ITD
 * (Interaural Time Delay), the following 1024 cells are the 'real' part of the fft and the last 1024 cells are the 'imaginary'
 * part of the fft.
 * 
 * Set signal vector size to 1024 and sample rate to 44100 in the DSP status menu (options->DSP Status). The reason for this is that
 * the Head Related Impulse Responses have been converted to the frequency domain with a fft size of 2048 (the pfft~ subpatches
 * operate on half fft size) and that they are based on 44100 samps/sec recordings.
 * 
 * TODO: sensor-based head tracking.
 * 
 */


public class MaxTest extends MaxObject { // or MSPPerformer
	
	//AudioFileBuffer leftaz0 = null;
	
	/*
	 * It turns out sticking a matrix into a variable like this a
	 * bad idea, as if we change any of its values, the matrix gets
	 * changed, as well. It is better to create an empty matrix object,
	 * then copy the contents of a named matrix to it upon construction. 
	 */
	//JitterMatrix subject3fftLeft = new JitterMatrix("subject3fftLeft");
	//JitterMatrix subject3fftRight = new JitterMatrix("subject3fftRight");
	
	JitterMatrix subject3fftLeft = new JitterMatrix();
	JitterMatrix subject3fftRight = new JitterMatrix();
	
	float[] audioBufferAll = new float[0];
	float[] audioBufferLeft = new float[0];
	float[] audioBufferRight = new float[0];
	
	/*
	 * Constructor method
	 */
	public MaxTest() {
		
		//declareInlets(new int[]{SIGNAL, SIGNAL});
		//declareOutlets(new int[]{SIGNAL, SIGNAL});
		
	}
	
	public void bang() {
		
		//double audioBufferLength = MSPBuffer.getLength("vega");
		//long audioBufferSize = MSPBuffer.getSize("vega");
		//long audioBufferFrames = MSPBuffer.getFrames("vega");
		//long audioBufferCount = MSPBuffer.getChannels("vega");
		
		// By not specifying a channel, we get an interleaved buffer.
		audioBufferAll = MSPBuffer.peek("vega");
		// Channels are indexed from one.
		audioBufferLeft = MSPBuffer.peek("vega", 1);
		audioBufferRight = MSPBuffer.peek("vega", 2);
		
		/*
		 * TODO Find out how this works!
		String fileName = MaxSystem.locateFile("vega.wav");
		try {
			leftaz0.open("vega.wav");
			post(String.valueOf(leftaz0.getChannels()));
		} catch (Exception exception) {
			post(exception.getLocalizedMessage());
		}
		*/
		
		post("All length: " + String.valueOf(audioBufferAll.length));
		post("Left length: " + String.valueOf(audioBufferLeft.length));
		post("Right length: " + String.valueOf(audioBufferRight.length));
		
		int index;
		
		post("All buffer first channel:");
		
		for(index = 0; index < 20; index += 2) {
			post(String.valueOf(audioBufferAll[index]));
		}
		
		post("All buffer second channel:");
		
		for(index = 1; index < 21; index += 2) {
			post(String.valueOf(audioBufferAll[index]));
		}
		
		post("Left buffer:");
		
		for(index = 0; index < 10; index++) {
			post(String.valueOf(audioBufferLeft[index]));
		}
		
		post("Right buffer:");
		
		for(index = 0; index < 10; index++) {
			post(String.valueOf(audioBufferRight[index]));
		}
		
	}
	
	public void matrices(int x, int y, int z) {
		
		subject3fftLeft.frommatrix("left");
		subject3fftRight.frommatrix("right");
		
		outlet(0, subject3fftLeft.getcell3d(x, y, z));
		
	}
	
	// In order to subclass MSPPerformer, we must implement the perform method
	public void perform(MSPSignal[] ins, MSPSignal[] outs) {
		
		// This is how we access the buffers
		//float[] out1 = outs[0].vec;
		//float[] out2 = outs[1].vec;
		
	}

}