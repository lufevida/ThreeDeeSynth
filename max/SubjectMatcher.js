// Have Max listen
autowatch = 1

// Define a type containing all measurements
var Measurements = {
		SUBJECT3: {
			cavumConchaHeight: 1.941107,
			cymbaConchaHeight: 0.768722,
			cavumConchaWidth: 1.985346,
			fossaHeight: 2.047897,
			pinnaHeight: 6.78323,
			pinnaWidth: 3.524012,
			intertragalIncisureWidth: 0.691191,
			cavumConchaDepth: 1.26094,
			pinnaRotationAngle: 0.481825,
			pinnaFlareAngle: 0.476771
			},
		SUBJECT10: {
			cavumConchaHeight: 1.432073,
			cymbaConchaHeight: 0.639398,
			cavumConchaWidth: 1.413341,
			fossaHeight: 1.274677,
			pinnaHeight: 5.848662,
			pinnaWidth: 2.683685,
			intertragalIncisureWidth: 0.288867,
			cavumConchaDepth: 0.915298,
			pinnaRotationAngle: 0.376972,
			pinnaFlareAngle: 0.294613
			},
		SUBJECT18: {
			cavumConchaHeight: 1.626055,
			cymbaConchaHeight: 0.67448,
			cavumConchaWidth: 1.454641,
			fossaHeight: 1.426131,
			pinnaHeight: 5.474531,
			pinnaWidth: 3.023065,
			intertragalIncisureWidth: 0.501775,
			cavumConchaDepth: 0.94781,
			pinnaRotationAngle: 0.218264,
			pinnaFlareAngle: 0.520494
			},
		SUBJECT20: {
			cavumConchaHeight: 2.26771,
			cymbaConchaHeight: 0.622446,
			cavumConchaWidth: 1.335767,
			fossaHeight: 2.198914,
			pinnaHeight: 7.358554,
			pinnaWidth: 2.975054,
			intertragalIncisureWidth: 0.418126,
			cavumConchaDepth: 1.145983,
			pinnaRotationAngle: 0.155206,
			pinnaFlareAngle: 0.615146
			},
		SUBJECT21: {
			cavumConchaHeight: 1.945783,
			cymbaConchaHeight: 0.630278,
			cavumConchaWidth: 2.004995,
			fossaHeight: 1.136213,
			pinnaHeight: 6.496521,
			pinnaWidth: 2.922177,
			intertragalIncisureWidth: 0.592452,
			cavumConchaDepth: 1.188528,
			pinnaRotationAngle: 0.253531,
			pinnaFlareAngle: 0.754602
			},
		SUBJECT27: {
			cavumConchaHeight: 2.293501,
			cymbaConchaHeight: 0.645822,
			cavumConchaWidth: 1.742149,
			fossaHeight: 1.283431,
			pinnaHeight: 6.636264,
			pinnaWidth: 2.990293,
			intertragalIncisureWidth: 0.612714,
			cavumConchaDepth: 0.802452,
			pinnaRotationAngle: 0.451337,
			pinnaFlareAngle: 0.51669
			},
		SUBJECT28: {
			cavumConchaHeight: 2.003878,
			cymbaConchaHeight: 0.746996,
			cavumConchaWidth: 1.925814,
			fossaHeight: 1.80214,
			pinnaHeight: 7.377881,
			pinnaWidth: 3.27982,
			intertragalIncisureWidth: 0.7383,
			cavumConchaDepth: 1.167599,
			pinnaRotationAngle: 0.143403,
			pinnaFlareAngle: 0.337602
			},
		SUBJECT33: {
			cavumConchaHeight: 1.588127,
			cymbaConchaHeight: 0.836162,
			cavumConchaWidth: 1.557258,
			fossaHeight: 1.691542,
			pinnaHeight: 6.654807,
			pinnaWidth: 2.905682,
			intertragalIncisureWidth: 0.697524,
			cavumConchaDepth: 1.11667,
			pinnaRotationAngle: 0.370352,
			pinnaFlareAngle: 0.496805
			},
		SUBJECT40: {
			cavumConchaHeight: 1.974869,
			cymbaConchaHeight: 0.805212,
			cavumConchaWidth: 1.484476,
			fossaHeight: 1.398747,
			pinnaHeight: 6.642369,
			pinnaWidth: 3.006597,
			intertragalIncisureWidth: 0.488761,
			cavumConchaDepth: 1.158504,
			pinnaRotationAngle: 0.374763,
			pinnaFlareAngle: 0.545788
			},
		SUBJECT44: {
			cavumConchaHeight: 2.229628,
			cymbaConchaHeight: 0.863934,
			cavumConchaWidth: 1.803098,
			fossaHeight: 1.897436,
			pinnaHeight: 7.954518,
			pinnaWidth: 3.158938,
			intertragalIncisureWidth: 0.558202,
			cavumConchaDepth: 1.168645,
			pinnaRotationAngle: 0.398948,
			pinnaFlareAngle: 0.628459
			},
		SUBJECT48: {
			cavumConchaHeight: 2.194629,
			cymbaConchaHeight: 0.508357,
			cavumConchaWidth: 1.279674,
			fossaHeight: 1.427792,
			pinnaHeight: 6.361955,
			pinnaWidth: 2.944863,
			intertragalIncisureWidth: 0.534961,
			cavumConchaDepth: 1.161214,
			pinnaRotationAngle: 0.266565,
			pinnaFlareAngle: 0.590941
			},
		SUBJECT50: {
			cavumConchaHeight: 2.173058,
			cymbaConchaHeight: 0.683673,
			cavumConchaWidth: 1.758982,
			fossaHeight: 1.550954,
			pinnaHeight: 6.980339,
			pinnaWidth: 3.275278,
			intertragalIncisureWidth: 0.533729,
			cavumConchaDepth: 1.101514,
			pinnaRotationAngle: 0.494698,
			pinnaFlareAngle: 0.547123
			},
		SUBJECT51: {
			cavumConchaHeight: 1.746067,
			cymbaConchaHeight: 0.769822,
			cavumConchaWidth: 1.480519,
			fossaHeight: 1.464481,
			pinnaHeight: 5.810831,
			pinnaWidth: 2.668472,
			intertragalIncisureWidth: 0.474896,
			cavumConchaDepth: 1.09678,
			pinnaRotationAngle: 0.508027,
			pinnaFlareAngle: 0.564535
			},
		SUBJECT58: {
			cavumConchaHeight: 1.71347,
			cymbaConchaHeight: 0.68768,
			cavumConchaWidth: 1.646209,
			fossaHeight: 1.602159,
			pinnaHeight: 6.509138,
			pinnaWidth: 3.008256,
			intertragalIncisureWidth: 0.358593,
			cavumConchaDepth: 1.150909,
			pinnaRotationAngle: 0.417922,
			pinnaFlareAngle: 0.760696
			},
		SUBJECT59: {
			cavumConchaHeight: 2.100592,
			cymbaConchaHeight: 0.875648,
			cavumConchaWidth: 1.048266,
			fossaHeight: 1.276389,
			pinnaHeight: 6.452104,
			pinnaWidth: 2.565758,
			intertragalIncisureWidth: 0.392753,
			cavumConchaDepth: 1.150909,
			pinnaRotationAngle: 0.238969,
			pinnaFlareAngle: 0.760696
			},
		SUBJECT60: {
			cavumConchaHeight: 1.781304,
			cymbaConchaHeight: 0.643377,
			cavumConchaWidth: 1.389038,
			fossaHeight: 1.395849,
			pinnaHeight: 6.151672,
			pinnaWidth: 3.24243,
			intertragalIncisureWidth: 0.448921,
			cavumConchaDepth: 0.88835,
			pinnaRotationAngle: 0.354124,
			pinnaFlareAngle: 0.327056
			},
		SUBJECT61: {
			cavumConchaHeight: 1.659082,
			cymbaConchaHeight: 0.599093,
			cavumConchaWidth: 1.062059,
			fossaHeight: 1.294161,
			pinnaHeight: 6.155368,
			pinnaWidth: 2.758354,
			intertragalIncisureWidth: 0.270308,
			cavumConchaDepth: 0.677651,
			pinnaRotationAngle: 0.265991,
			pinnaFlareAngle: 0.416314
			},
		SUBJECT65: {
			cavumConchaHeight: 2.066122,
			cymbaConchaHeight: 0.640031,
			cavumConchaWidth: 1.164634,
			fossaHeight: 1.72057,
			pinnaHeight: 6.293463,
			pinnaWidth: 2.939095,
			intertragalIncisureWidth: 0.319427,
			cavumConchaDepth: 0.907194,
			pinnaRotationAngle: 0.428451,
			pinnaFlareAngle: 0.231125
			},
		SUBJECT119: {
			cavumConchaHeight: 1.781248,
			cymbaConchaHeight: 0.662082,
			cavumConchaWidth: 1.300272,
			fossaHeight: 1.838742,
			pinnaHeight: 6.685207,
			pinnaWidth: 3.340798,
			intertragalIncisureWidth: 0.479783,
			cavumConchaDepth: 1.174736,
			pinnaRotationAngle: 0.415482,
			pinnaFlareAngle: 0.634263
			},
		SUBJECT124: {
			cavumConchaHeight: 2.167182,
			cymbaConchaHeight: 0.489269,
			cavumConchaWidth: 1.836901,
			fossaHeight: 1.913118,
			pinnaHeight: 6.909042,
			pinnaWidth: 3.388135,
			intertragalIncisureWidth: 0.602809,
			cavumConchaDepth: 0.931161,
			pinnaRotationAngle: 0.289775,
			pinnaFlareAngle: 0.493868
			},
		SUBJECT126: {
			cavumConchaHeight: 2.116345,
			cymbaConchaHeight: 0.700892,
			cavumConchaWidth: 1.441287,
			fossaHeight: 1.119019,
			pinnaHeight: 6.483799,
			pinnaWidth: 2.917737,
			intertragalIncisureWidth: 0.504255,
			cavumConchaDepth: 0.774942,
			pinnaRotationAngle: 0.441433,
			pinnaFlareAngle: 0.499461
			},
		SUBJECT127: {
			cavumConchaHeight: 1.960895,
			cymbaConchaHeight: 0.730272,
			cavumConchaWidth: 1.898387,
			fossaHeight: 0.783585,
			pinnaHeight: 5.867417,
			pinnaWidth: 2.721518,
			intertragalIncisureWidth: 0.52912,
			cavumConchaDepth: 1.054764,
			pinnaRotationAngle: 0.715531,
			pinnaFlareAngle: 0.485355
			},
		SUBJECT131: {
			cavumConchaHeight: 1.872657,
			cymbaConchaHeight: 0.599093,
			cavumConchaWidth: 1.454087,
			fossaHeight: 0.581242,
			pinnaHeight: 5.801352,
			pinnaWidth: 2.184383,
			intertragalIncisureWidth: 0.585554,
			cavumConchaDepth: 1.096434,
			pinnaRotationAngle: 0.459364,
			pinnaFlareAngle: 0.874393
			},
		SUBJECT133: {
			cavumConchaHeight: 1.661409,
			cymbaConchaHeight: 0.678675,
			cavumConchaWidth: 1.397643,
			fossaHeight: 1.999505,
			pinnaHeight: 6.29663,
			pinnaWidth: 3.047553,
			intertragalIncisureWidth: 0.567207,
			cavumConchaDepth: 0.818052,
			pinnaRotationAngle: 0.445943,
			pinnaFlareAngle: 0.167809
			},
		SUBJECT134: {
			cavumConchaHeight: 1.742625,
			cymbaConchaHeight: 0.650642,
			cavumConchaWidth: 1.603709,
			fossaHeight: 1.066062,
			pinnaHeight: 5.925022,
			pinnaWidth: 3.013784,
			intertragalIncisureWidth: 0.502635,
			cavumConchaDepth: 0.900323,
			pinnaRotationAngle: 0.456683,
			pinnaFlareAngle: 0.473601
			},
		SUBJECT135: {
			cavumConchaHeight: 1.959818,
			cymbaConchaHeight: 0.490406,
			cavumConchaWidth: 1.036517,
			fossaHeight: 1.377275,
			pinnaHeight: 5.864431,
			pinnaWidth: 2.587998,
			intertragalIncisureWidth: 0.294481,
			cavumConchaDepth: 0.923868,
			pinnaRotationAngle: 0.428982,
			pinnaFlareAngle: 0.594929
			},
		SUBJECT137: {
			cavumConchaHeight: 2.001205,
			cymbaConchaHeight: 0.658175,
			cavumConchaWidth: 1.19025,
			fossaHeight: 1.214682,
			pinnaHeight: 6.154474,
			pinnaWidth: 2.894631,
			intertragalIncisureWidth: 0.422224,
			cavumConchaDepth: 1.130876,
			pinnaRotationAngle: 0.366484,
			pinnaFlareAngle: 0.399232
			},
		SUBJECT147: {
			cavumConchaHeight: 2.024364,
			cymbaConchaHeight: 0.715457,
			cavumConchaWidth: 1.383698,
			fossaHeight: 1.83318,
			pinnaHeight: 6.919584,
			pinnaWidth: 2.681089,
			intertragalIncisureWidth: 0.421841,
			cavumConchaDepth: 0.520076,
			pinnaRotationAngle: 0.449339,
			pinnaFlareAngle: 0.424945
			},
		SUBJECT148: {
			cavumConchaHeight: 1.980308,
			cymbaConchaHeight: 0.492067,
			cavumConchaWidth: 1.893277,
			fossaHeight: 1.294467,
			pinnaHeight: 6.069626,
			pinnaWidth: 2.903235,
			intertragalIncisureWidth: 0.495861,
			cavumConchaDepth: 0.817028,
			pinnaRotationAngle: 0.38967,
			pinnaFlareAngle: 0.561543
			},
		SUBJECT152: {
			cavumConchaHeight: 1.835833,
			cymbaConchaHeight: 0.667177,
			cavumConchaWidth: 1.644317,
			fossaHeight: 1.245752,
			pinnaHeight: 6.128218,
			pinnaWidth: 2.76524,
			intertragalIncisureWidth: 0.60902,
			cavumConchaDepth: 0.975513,
			pinnaRotationAngle: 0.534109,
			pinnaFlareAngle: 0.421099
			},
		SUBJECT153: {
			cavumConchaHeight: 1.740561,
			cymbaConchaHeight: 0.84571,
			cavumConchaWidth: 1.631419,
			fossaHeight: 1.465939,
			pinnaHeight: 6.078135,
			pinnaWidth: 2.819368,
			intertragalIncisureWidth: 0.503941,
			cavumConchaDepth: 1.009777,
			pinnaRotationAngle: 0.498493,
			pinnaFlareAngle: 0.475633
			},
		SUBJECT154: {
			cavumConchaHeight: 1.801253,
			cymbaConchaHeight: 0.815578,
			cavumConchaWidth: 1.495925,
			fossaHeight: 1.143382,
			pinnaHeight: 6.152243,
			pinnaWidth: 2.547046,
			intertragalIncisureWidth: 0.777348,
			cavumConchaDepth: 0.949544,
			pinnaRotationAngle: 0.205388,
			pinnaFlareAngle: 0.506585
			},
		SUBJECT155: {
			cavumConchaHeight: 1.925206,
			cymbaConchaHeight: 0.37761,
			cavumConchaWidth: 1.901308,
			fossaHeight: 1.238713,
			pinnaHeight: 6.192544,
			pinnaWidth: 3.104979,
			intertragalIncisureWidth: 0.562351,
			cavumConchaDepth: 0.889095,
			pinnaRotationAngle: 0.426305,
			pinnaFlareAngle: 0.571816
			},
		SUBJECT156: {
			cavumConchaHeight: 1.553074,
			cymbaConchaHeight: 0.565307,
			cavumConchaWidth: 1.529336,
			fossaHeight: 0.974287,
			pinnaHeight: 5.424315,
			pinnaWidth: 2.718003,
			intertragalIncisureWidth: 0.507146,
			cavumConchaDepth: 0.918064,
			pinnaRotationAngle: 0.387943,
			pinnaFlareAngle: 0.49541
			},
		SUBJECT162: {
			cavumConchaHeight: 2.170212,
			cymbaConchaHeight: 0.977844,
			cavumConchaWidth: 1.707666,
			fossaHeight: 1.936045,
			pinnaHeight: 7.907155,
			pinnaWidth: 3.144018,
			intertragalIncisureWidth: 0.910621,
			cavumConchaDepth: 1.242739,
			pinnaRotationAngle: 0.287555,
			pinnaFlareAngle: 0.401443
			},
		SUBJECT163: {
			cavumConchaHeight: 1.638214,
			cymbaConchaHeight: 0.735302,
			cavumConchaWidth: 1.642919,
			fossaHeight: 1.728571,
			pinnaHeight: 6.24204,
			pinnaWidth: 2.94049,
			intertragalIncisureWidth: 0.598031,
			cavumConchaDepth: 1.005684,
			pinnaRotationAngle: 0.353903,
			pinnaFlareAngle: 0.465055
			},
		SUBJECT165: {
			cavumConchaHeight: 2.215958,
			cymbaConchaHeight: 0.522088,
			cavumConchaWidth: 1.530685,
			fossaHeight: 1.369658,
			pinnaHeight: 5.677949,
			pinnaWidth: 2.603121,
			intertragalIncisureWidth: 0.786054,
			cavumConchaDepth: 0.871232,
			pinnaRotationAngle: 0.213044,
			pinnaFlareAngle: 0.509466
			}
}

// Convenience method to output type as an array
function exportArray(array) {
	return [
		array.cavumConchaHeight,
		array.cymbaConchaHeight,
		array.cavumConchaWidth,
		array.fossaHeight,
		array.pinnaHeight,
		array.pinnaWidth,
		array.intertragalIncisureWidth,
		array.cavumConchaDepth,
		array.pinnaRotationAngle,
		array.pinnaFlareAngle
		]
}

// Array containing all averages from the CIPIC database
var averages = {
		cavumConchaHeight: 1.91,
		cymbaConchaHeight: 0.68,
		cavumConchaWidth: 1.58,
		fossaHeight: 1.51,
		pinnaHeight: 6.41,
		pinnaWidth: 2.92,
		intertragalIncisureWidth: 0.53,
		cavumConchaDepth: 1.02,
		pinnaRotationAngle: 24.01,
		pinnaFlareAngle: 28.53
}

// Array containing all standard deviations from the CIPIC database
var sigmas = {
		cavumConchaHeight: 0.18,
		cymbaConchaHeight: 0.12,
		cavumConchaWidth: 0.28,
		fossaHeight: 0.33,
		pinnaHeight: 0.51,
		pinnaWidth: 0.27,
		intertragalIncisureWidth: 0.14,
		cavumConchaDepth: 0.16,
		pinnaRotationAngle: 6.59,
		pinnaFlareAngle: 6.7
}

/*
 * Subtract each measurement from the average subjects'
 */
function subtractFromMean(measurements) {
	var returnArray = []
	var means = exportArray(averages)
	for (index = 0; index < measurements.length; index++) {
		returnArray[index] = means[index] - measurements[index];
	}
	return returnArray;
}

/*
 * Weights range from one to three and are computed based on the number
 * of standard deviations each measurement strays from the mean
 */
function getWeights(measurements) {
	var returnArray = []
	var deviations = exportArray(sigmas)
	var distancesFromMean = subtractFromMean(measurements)
	for (index = 0; index < measurements.length; index++) {
		// Get absolute values
		if (distancesFromMean[index] < 0) distancesFromMean[index] *= -1
		// Compare to standard deviations
		if (distancesFromMean[index] <= deviations[index]) {
			returnArray[index] = 1.0
		} else if (distancesFromMean[index] <= deviations[index] * 2.0) {
			returnArray[index] = 2.0
		} else {
			returnArray[index] = 3.0
		}
	}
	return returnArray
}

/*
 * Returns the score of a comparison with another subject by taking the
 * Manhattan, or L_1 distance between the vectors. When the `weights` property
 * is on, the method returns a weighted version of the L_1 distance.
 */
function compareWithSubject(subject, subjectToCompare, weighted) {
	var returnValue = 0.0
	if(!weighted) {
		for (index = 0; index < subjectToCompare.length; index++) {
			var valueToAccumulate = subject[index] - subjectToCompare[index]
			// Get absolute values
			if (valueToAccumulate < 0) valueToAccumulate *= -1
			returnValue += valueToAccumulate
		}
	} else {
		var ourWeights = getWeights(subject)
		var comparisonWeights = getWeights(subjectToCompare)
		for (index = 0; index < subjectToCompare.length; index++) {
			// Apply weights
			var valueToAccumulate = subject[index] * ourWeights[index]
			valueToAccumulate -= subjectToCompare[index] * comparisonWeights[index]
			// Get absolute values
			if (valueToAccumulate < 0) valueToAccumulate *= -1
			returnValue += valueToAccumulate
		}
		
	}
	return returnValue
}

// Get the best match from the CIPIC database
function getBestMatch(subject, weighted) {
	var bestScore = 100.0
	var matchName = ""
	var returnString = ""
	var allMeasurements = Object.keys(Measurements)
	var allSubjects = []
	for (firstIndex = 0; firstIndex < allMeasurements.length; firstIndex++) {
		var measurement = allMeasurements[firstIndex]
		allSubjects[firstIndex] = exportArray(Measurements[measurement])
	}
	for (secondIndex = 0; secondIndex < allSubjects.length; secondIndex++) {
		var score = compareWithSubject(subject, allSubjects[secondIndex], weighted)
		if (score < bestScore) {
			bestScore = score
			matchName = allMeasurements[secondIndex]
		}
	}	
	return matchName
}

function bang() {
	var luis = [2.0, 0.6, 1.75, 2.1, 7.0, 4.05, 0.55, 1.42, 22.4, 29.7]
	var gordon = [1.55, 0.5, 1.05, 2.2, 6.05, 3.0, 0.45, 0.89, 24.5, 28.3]
	var james = [1.75, 0.72, 1.3, 1.7, 6.0, 2.8, 0.45, 0.97, 25.0, 27.8]
	post(getBestMatch(luis, false))
	post(getBestMatch(gordon, false))
	post(getBestMatch(james, false))
}

function simple() {
	outlet(0, String(getBestMatch(arguments, false)))
}

function weighted() {
	outlet(0, getBestMatch(arguments, true))
}
