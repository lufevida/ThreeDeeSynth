
public class SubjectMatcher {
	
	public static enum Measurements {
		
		// Subtypes
		AVERAGE(1.91f, 0.68f, 1.58f, 1.51f, 6.41f, 2.92f, 0.53f, 1.02f, 24.01f, 28.53f),
		LUIS(2.0f, 0.6f, 1.75f, 2.1f, 7.0f, 4.05f, 0.55f, 1.42f, 22.4f, 29.7f),
		GORDON(1.55f, 0.5f, 1.05f, 2.2f, 6.05f, 3.0f, 0.45f, 0.89f, 24.5f, 28.3f),
		JAMES(1.75f, 0.72f, 1.3f, 1.7f, 6.0f, 2.8f, 0.45f, 0.97f, 25.0f, 27.8f);
		
		// Arguments
		private final float cymbaConchaHeight;
		private final float cavumConchaHeight;
		private final float cavumConchaDepth;
		private final float cavumConchaWidth;
		private final float fossaHeight;
		private final float pinnaHeight;
		private final float pinnaWidth;
		private final float pinnaRotationAngle;
		private final float pinnaFlareAngle;
		private final float intertragalIncisureWidth;
		
		public float cymbaConchaHeight() {
			return this.cymbaConchaHeight;
		}
		
		public float cavumConchaHeight() {
			return this.cavumConchaHeight;
		}
		
		public float cavumConchaDepth() {
			return this.cavumConchaDepth;
		}
		
		public float cavumConchaWidth() {
			return this.cavumConchaWidth;
		}
		
		public float fossaHeight() {
			return this.fossaHeight;
		}
		
		public float pinnaHeight() {
			return this.pinnaHeight;
		}
		
		public float pinnaWidth() {
			return this.pinnaWidth;
		}
		
		public float pinnaRotationAngle() {
			return this.pinnaRotationAngle;
		}
		
		public float pinnaFlareAngle() {
			return this.pinnaFlareAngle;
		}
		
		public float intertragalIncisureWidth() {
			return this.intertragalIncisureWidth;
		}
		
		// Constructor for the enumeration type
		Measurements(
				float cymbaConchaHeight,
				float cavumConchaHeight,
				float cavumConchaDepth,
				float cavumConchaWidth,
				float fossaHeight,
				float pinnaHeight,
				float pinnaWidth,
				float pinnaRotationAngle,
				float pinnaFlareAngle,
				float intertragalIncisureWidth) {
			this.cymbaConchaHeight = cymbaConchaHeight;
			this.cavumConchaDepth = cavumConchaDepth;
			this.cavumConchaHeight = cavumConchaHeight;
			this.cavumConchaWidth = cavumConchaWidth;
			this.fossaHeight = fossaHeight;
			this.pinnaHeight = pinnaHeight;
			this.pinnaWidth = pinnaWidth;
			this.pinnaRotationAngle = pinnaRotationAngle;
			this.pinnaFlareAngle = pinnaFlareAngle;
			this.intertragalIncisureWidth = intertragalIncisureWidth;
		}
		
	}
	
	private Subject averageSubject = new Subject(Measurements.AVERAGE);
	
	public class Subject {
		
		private final Measurements measurements;
		// Array containing the standard deviations from the CIPIC database
		private float[] sigmas = {0.18f, 0.12f, 0.28f, 0.33f, 0.51f, 0.27f, 0.14f, 0.16f, 6.59f, 6.7f};
		
		/**
		 * Subtracts each measurement from the average subjects'.
		 */
		private float[] subtractFromMean() {
			float[] measurements = this.getMeasurements();
			float[] averages = averageSubject.getMeasurements();
			float[] returnArray = new float[measurements.length];
			for (int index = 0; index < measurements.length; index++) {
				returnArray[index] = averages[index] - measurements[index];
			}
			return returnArray;
		}
		
		/**
		 * Weights range from one to three and are computed based on the number
		 * of standard deviations each measurement strays from the mean.
		 */
		private float[] getWeights() {
			float[] distancesFromMean = this.subtractFromMean();
			float[] returnArray = new float[distancesFromMean.length];
			for (int index = 0; index < distancesFromMean.length; index++) {
				// Get absolute values
				if (distancesFromMean[index] < 0) distancesFromMean[index] *= -1;
				// Compare to standard deviations
				if (distancesFromMean[index] <= sigmas[index]) {
					returnArray[index] = 1.0f;
				} else if (distancesFromMean[index] <= sigmas[index] * 2.0f) {
					returnArray[index] = 2.0f;
				} else {
					returnArray[index] = 3.0f;
				}
			}
			return returnArray;
		}
		
		/**
		 * Returns the score of a comparison with another subject by taking the
		 * Manhattan, or L_1 distance between the vectors. When the `weights` property
		 * is on, the method returns a weighted version of the L_1 distance.
		 */
		public float compareWithSubject(Subject subject, boolean weighted) {
			float returnValue = 0.0f;
			float[] ourSubject = this.getMeasurements();
			float[] subjectToCompare = subject.getMeasurements();
			if(!weighted) {
				for (int index = 0; index < subjectToCompare.length; index++) {
					float valueToAccumulate = ourSubject[index] - subjectToCompare[index];
					// Get absolute values
					if (valueToAccumulate < 0) valueToAccumulate *= -1;
					returnValue += valueToAccumulate;
				}
			} else {
				float[] ourWeights = this.getWeights();
				float[] comparisonWeights = subject.getWeights();
				for (int index = 0; index < subjectToCompare.length; index++) {
					// Apply weights
					float valueToAccumulate = ourSubject[index] * ourWeights[index] - subjectToCompare[index] * comparisonWeights[index];
					// Get absolute values
					if (valueToAccumulate < 0) valueToAccumulate *= -1;
					returnValue += valueToAccumulate;
				}
				
			}
			return returnValue;
		}
		
		public float[] getMeasurements() {
			float[] array = {
					this.measurements.cymbaConchaHeight,
					this.measurements.cavumConchaHeight,
					this.measurements.cavumConchaDepth,
					this.measurements.cavumConchaWidth,
					this.measurements.fossaHeight,
					this.measurements.pinnaHeight,
					this.measurements.pinnaWidth,
					this.measurements.pinnaRotationAngle,
					this.measurements.pinnaFlareAngle,
					this.measurements.intertragalIncisureWidth};
			return array;
		}
		
		Subject(Measurements measurements) {
			this.measurements = measurements;
		}
		
	}
	
	public static void main(String[] args) {
		
		SubjectMatcher matcher = new SubjectMatcher();
		
		Subject luis = matcher.new Subject(Measurements.LUIS);
		Subject gordon = matcher.new Subject(Measurements.GORDON);
		Subject james = matcher.new Subject(Measurements.JAMES);
		
		float luisVersusLuis = luis.compareWithSubject(luis, false);
		float luisVersusGordon = luis.compareWithSubject(gordon, false);
		float luisVersusJames = luis.compareWithSubject(james, false);
		float gordonVersusJames = gordon.compareWithSubject(james, false);
		
		float luisVersusLuisWeighted = luis.compareWithSubject(luis, true);
		float luisVersusGordonWeighted = luis.compareWithSubject(gordon, true);
		float luisVersusJamesWeighted = luis.compareWithSubject(james, true);
		float gordonVersusJamesWeighted = gordon.compareWithSubject(james, true);
		
		String result = "Luis compared to Luis score: " + luisVersusLuis + "\n" +
				"Luis compared to Luis weighted score: " + luisVersusLuisWeighted + "\n" +
				"Luis compared to Gordon score: " + luisVersusGordon + "\n" +
				"Luis compared to Gordon weighted score: " + luisVersusGordonWeighted + "\n" +
				"Luis compared to James score: " + luisVersusJames + "\n" +
				"Luis compared to James weighted score: " + luisVersusJamesWeighted + "\n" +
				"Gordon compared to James score: " + gordonVersusJames + "\n" +
				"Gordon compared to James weighted score: " + gordonVersusJamesWeighted + "\n";
		
		System.out.println(result);
		
	}

}
