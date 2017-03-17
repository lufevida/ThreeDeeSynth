
public class SubjectMatcher {
	
	public static enum Measurements {
		
		// Subtypes
		SUBJECT3(1.941107f, 0.768722f, 1.985346f, 2.047897f, 6.78323f, 3.524012f, 0.691191f, 1.26094f, 0.481825f, 0.476771f),
		SUBJECT10(1.432073f, 0.639398f, 1.413341f, 1.274677f, 5.848662f, 2.683685f, 0.288867f, 0.915298f, 0.376972f, 0.294613f),
		SUBJECT18(1.626055f, 0.67448f, 1.454641f, 1.426131f, 5.474531f, 3.023065f, 0.501775f, 0.94781f, 0.218264f, 0.520494f),
		SUBJECT20(2.26771f, 0.622446f, 1.335767f, 2.198914f, 7.358554f, 2.975054f, 0.418126f, 1.145983f, 0.155206f, 0.615146f),
		SUBJECT21(1.945783f, 0.630278f, 2.004995f, 1.136213f, 6.496521f, 2.922177f, 0.592452f, 1.188528f, 0.253531f, 0.754602f),
		SUBJECT27(2.293501f, 0.645822f, 1.742149f, 1.283431f, 6.636264f, 2.990293f, 0.612714f, 0.802452f, 0.451337f, 0.51669f),
		SUBJECT28(2.003878f, 0.746996f, 1.925814f, 1.80214f, 7.377881f, 3.27982f, 0.7383f, 1.167599f, 0.143403f, 0.337602f),
		SUBJECT33(1.588127f, 0.836162f, 1.557258f, 1.691542f, 6.654807f, 2.905682f, 0.697524f, 1.11667f, 0.370352f, 0.496805f),
		SUBJECT40(1.974869f, 0.805212f, 1.484476f, 1.398747f, 6.642369f, 3.006597f, 0.488761f, 1.158504f, 0.374763f, 0.545788f),
		SUBJECT44(2.229628f, 0.863934f, 1.803098f, 1.897436f, 7.954518f, 3.158938f, 0.558202f, 1.168645f, 0.398948f, 0.628459f),
		SUBJECT48(2.194629f, 0.508357f, 1.279674f, 1.427792f, 6.361955f, 2.944863f, 0.534961f, 1.161214f, 0.266565f, 0.590941f),
		SUBJECT50(2.173058f, 0.683673f, 1.758982f, 1.550954f, 6.980339f, 3.275278f, 0.533729f, 1.101514f, 0.494698f, 0.547123f),
		SUBJECT51(1.746067f, 0.769822f, 1.480519f, 1.464481f, 5.810831f, 2.668472f, 0.474896f, 1.09678f, 0.508027f, 0.564535f),
		SUBJECT58(1.71347f, 0.68768f, 1.646209f, 1.602159f, 6.509138f, 3.008256f, 0.358593f, 1.150909f, 0.417922f, 0.760696f),
		SUBJECT59(2.100592f, 0.875648f, 1.048266f, 1.276389f, 6.452104f, 2.565758f, 0.392753f, 1.150909f, 0.238969f, 0.760696f),
		SUBJECT60(1.781304f, 0.643377f, 1.389038f, 1.395849f, 6.151672f, 3.24243f, 0.448921f, 0.88835f, 0.354124f, 0.327056f),
		SUBJECT61(1.659082f, 0.599093f, 1.062059f, 1.294161f, 6.155368f, 2.758354f, 0.270308f, 0.677651f, 0.265991f, 0.416314f),
		SUBJECT65(2.066122f, 0.640031f, 1.164634f, 1.72057f, 6.293463f, 2.939095f, 0.319427f, 0.907194f, 0.428451f, 0.231125f),
		SUBJECT119(1.781248f, 0.662082f, 1.300272f, 1.838742f, 6.685207f, 3.340798f, 0.479783f, 1.174736f, 0.415482f, 0.634263f),
		SUBJECT124(2.167182f, 0.489269f, 1.836901f, 1.913118f, 6.909042f, 3.388135f, 0.602809f, 0.931161f, 0.289775f, 0.493868f),
		SUBJECT126(2.116345f, 0.700892f, 1.441287f, 1.119019f, 6.483799f, 2.917737f, 0.504255f, 0.774942f, 0.441433f, 0.499461f),
		SUBJECT127(1.960895f, 0.730272f, 1.898387f, 0.783585f, 5.867417f, 2.721518f, 0.52912f, 1.054764f, 0.715531f, 0.485355f),
		SUBJECT131(1.872657f, 0.599093f, 1.454087f, 0.581242f, 5.801352f, 2.184383f, 0.585554f, 1.096434f, 0.459364f, 0.874393f),
		SUBJECT133(1.661409f, 0.678675f, 1.397643f, 1.999505f, 6.29663f, 3.047553f, 0.567207f, 0.818052f, 0.445943f, 0.167809f),
		SUBJECT134(1.742625f, 0.650642f, 1.603709f, 1.066062f, 5.925022f, 3.013784f, 0.502635f, 0.900323f, 0.456683f, 0.473601f),
		SUBJECT135(1.959818f, 0.490406f, 1.036517f, 1.377275f, 5.864431f, 2.587998f, 0.294481f, 0.923868f, 0.428982f, 0.594929f),
		SUBJECT137(2.001205f, 0.658175f, 1.19025f, 1.214682f, 6.154474f, 2.894631f, 0.422224f, 1.130876f, 0.366484f, 0.399232f),
		SUBJECT147(2.024364f, 0.715457f, 1.383698f, 1.83318f, 6.919584f, 2.681089f, 0.421841f, 0.520076f, 0.449339f, 0.424945f),
		SUBJECT148(1.980308f, 0.492067f, 1.893277f, 1.294467f, 6.069626f, 2.903235f, 0.495861f, 0.817028f, 0.38967f, 0.561543f),
		SUBJECT152(1.835833f, 0.667177f, 1.644317f, 1.245752f, 6.128218f, 2.76524f, 0.60902f, 0.975513f, 0.534109f, 0.421099f),
		SUBJECT153(1.740561f, 0.84571f, 1.631419f, 1.465939f, 6.078135f, 2.819368f, 0.503941f, 1.009777f, 0.498493f, 0.475633f),
		SUBJECT154(1.801253f, 0.815578f, 1.495925f, 1.143382f, 6.152243f, 2.547046f, 0.777348f, 0.949544f, 0.205388f, 0.506585f),
		SUBJECT155(1.925206f, 0.37761f, 1.901308f, 1.238713f, 6.192544f, 3.104979f, 0.562351f, 0.889095f, 0.426305f, 0.571816f),
		SUBJECT156(1.553074f, 0.565307f, 1.529336f, 0.974287f, 5.424315f, 2.718003f, 0.507146f, 0.918064f, 0.387943f, 0.49541f),
		SUBJECT162(2.170212f, 0.977844f, 1.707666f, 1.936045f, 7.907155f, 3.144018f, 0.910621f, 1.242739f, 0.287555f, 0.401443f),
		SUBJECT163(1.638214f, 0.735302f, 1.642919f, 1.728571f, 6.24204f, 2.94049f, 0.598031f, 1.005684f, 0.353903f, 0.465055f),
		SUBJECT165(2.215958f, 0.522088f, 1.530685f, 1.369658f, 5.677949f, 2.603121f, 0.786054f, 0.871232f, 0.213044f, 0.509466f),
		NEW(0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f);
		
		// Arguments
		private float cavumConchaHeight;
		private float cymbaConchaHeight;
		private float cavumConchaWidth;
		private float fossaHeight;
		private float pinnaHeight;
		private float pinnaWidth;
		private float intertragalIncisureWidth;
		private float cavumConchaDepth;
		private float pinnaRotationAngle;
		private float pinnaFlareAngle;
		
		private String name = "New Subject";
		
		public void setValues(
				String name,
				float cavumConchaHeight,
				float cymbaConchaHeight,
				float cavumConchaWidth,
				float fossaHeight,
				float pinnaHeight,
				float pinnaWidth,
				float intertragalIncisureWidth,
				float cavumConchaDepth,
				float pinnaRotationAngle,
				float pinnaFlareAngle) {
			this.name = name;
			this.cavumConchaHeight = cavumConchaHeight;
			this.cymbaConchaHeight = cymbaConchaHeight;
			this.cavumConchaWidth = cavumConchaWidth;
			this.fossaHeight = fossaHeight;
			this.pinnaHeight = pinnaHeight;
			this.pinnaWidth = pinnaWidth;
			this.intertragalIncisureWidth = intertragalIncisureWidth;
			this.cavumConchaDepth = cavumConchaDepth;
			this.pinnaRotationAngle = pinnaRotationAngle;
			this.pinnaFlareAngle = pinnaFlareAngle;
		}
		
		// Constructor for the enumeration type
		Measurements(
				float cavumConchaHeight,
				float cymbaConchaHeight,
				float cavumConchaWidth,
				float fossaHeight,
				float pinnaHeight,
				float pinnaWidth,
				float intertragalIncisureWidth,
				float cavumConchaDepth,
				float pinnaRotationAngle,
				float pinnaFlareAngle) {
			this.setValues(
					this.name().charAt(0) + name().substring(1).toLowerCase(),
					cavumConchaHeight,
					cymbaConchaHeight,
					cavumConchaWidth,
					fossaHeight,
					pinnaHeight,
					pinnaWidth,
					intertragalIncisureWidth,
					cavumConchaDepth,
					pinnaRotationAngle,
					pinnaFlareAngle);
		}
		
		@Override public String toString() {
			return this.name;
	    }
		
	}
	
	public class Subject {
		
		private final Measurements measurements;
		// Array containing the standard deviations from the CIPIC database
		private float[] sigmas = {0.18f, 0.12f, 0.28f, 0.33f, 0.51f, 0.27f, 0.14f, 0.16f, 6.59f, 6.7f};
		
		/**
		 * Subtracts each measurement from the average subjects'.
		 */
		private float[] subtractFromMean() {
			float[] measurements = this.getMeasurements();
			float[] averages = {1.91f, 0.68f, 1.58f, 1.51f, 6.41f, 2.92f, 0.53f, 1.02f, 24.01f, 28.53f};
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
					float valueToAccumulate = ourSubject[index] * ourWeights[index];
					valueToAccumulate -= subjectToCompare[index] * comparisonWeights[index];
					// Get absolute values
					if (valueToAccumulate < 0) valueToAccumulate *= -1;
					returnValue += valueToAccumulate;
				}
				
			}
			return returnValue;
		}
		
		public float[] getMeasurements() {
			float[] array = {
					this.measurements.cavumConchaHeight,
					this.measurements.cymbaConchaHeight,
					this.measurements.cavumConchaWidth,
					this.measurements.fossaHeight,
					this.measurements.pinnaHeight,
					this.measurements.pinnaWidth,
					this.measurements.intertragalIncisureWidth,
					this.measurements.cavumConchaDepth,
					this.measurements.pinnaRotationAngle,
					this.measurements.pinnaFlareAngle};
			return array;
		}
		
		Subject(Measurements measurements) {
			this.measurements = measurements;
		}
		
	}
	
	public String getBestMatch(Subject subject, boolean weighted) {
		
		float currentScore;
		float bestScore = 100;
		String ourName = subject.measurements.toString();
		String matchName = "";
		String returnString = "";
		
		Measurements[] allMeasurements = Measurements.values();
		Subject[] allSubjects = new Subject[allMeasurements.length];
		
		for(int index = 0; index < allMeasurements.length; index++) {
			allSubjects[index] = new Subject(allMeasurements[index]);
		}
		
		for (Subject comparisonSubject : allSubjects) {
			currentScore = subject.compareWithSubject(comparisonSubject, weighted);
			if (currentScore != 0.0f && currentScore < bestScore) {
				bestScore = currentScore;
				matchName = comparisonSubject.measurements.toString();
			}
		}
		
		returnString = "The best match for " + ourName + " is " + matchName;
		returnString += " with score " + bestScore + ".";
		
		return returnString;
		
	}
		
	public static void main(String[] args) {
		
		SubjectMatcher matcher = new SubjectMatcher();
		
		Subject subject = matcher.new Subject(Measurements.NEW);
		subject.measurements.setValues("Luis", 2.0f, 0.6f, 1.75f, 2.1f, 7.0f, 4.05f, 0.55f, 1.42f, 22.4f, 29.7f);
		String result = matcher.getBestMatch(subject, false);
		System.out.println(result);
		
		subject = matcher.new Subject(Measurements.NEW);
		subject.measurements.setValues("Gordon", 1.55f, 0.5f, 1.05f, 2.2f, 6.05f, 3.0f, 0.45f, 0.89f, 24.5f, 28.3f);
		result = matcher.getBestMatch(subject, false);
		System.out.println(result);
		
		subject = matcher.new Subject(Measurements.NEW);
		subject.measurements.setValues("James", 1.75f, 0.72f, 1.3f, 1.7f, 6.0f, 2.8f, 0.45f, 0.97f, 25.0f, 27.8f);
		result = matcher.getBestMatch(subject, false);
		System.out.println(result);
		
	}

}
