// Have Max Listen
autowatch = 1;

/*
 * Outlets:
 * 0. Azimuth and elevation
 * 1. Left ear gain
 * 2. Right ear gain
 * 3. Delay in ms
 */
outlets = 4;

// Listener height and sound height range up to 5 meters, and the room size is a 10 by 10 meter square.
var listenerRotation = [0, 0, 0, 1];
var listenerPosition = [0, 0, 0];
var soundPosition = [0, 0, 0];
var listToSound = [0, 0, 0, 0];
var relDist = 0;
var headRadius = 0.11;
var speedOfSound = 344;
var gainLimit = 1;

/*
 * Used to calculate the distance to left and right ear
 * _commonPart1 = b^2 + c^2
 * _commonPart2 = 2 * b * c
 */  
var commonPart1;
var commonPart2;

/*
 * Used to calculate the reference distance to left and right ear
 * (as it was in the CIPIC database at current angle)
 * _commonStaticPart1 = b^2 + c^2
 * _commonStaticPart2 = 2 * b * c
 */
var commonStaticPart1 = headRadius * headRadius + 1;
var commonStaticPart2 = 2 * headRadius;

// The gain is 1 at 1 meter's distance, 2 at half a meter, etc.
function gainLimit(gain) {
	gainLimit = gain;
}

// Set the world position of the sound source in meters.
function soundPos(x, y, z) {
	soundPosition = [x, y, -z]; //invert the z axis because it's inverted in the phys world
	newPos();
}

// Set the world position of the listener in meters.
function listenerPos(x, y, z) {
	listenerPosition = [x, y, z];
	newPos();
}

/*
 * Compute the L_2 distance between soundPos and listenerPos.
 * Calculate the common part in the cosine relations used
 * later to define the distance to both ears.
 */
function newPos() {
	relDist = 0;
	for (i = 0; i < 3; i++) {
		listToSound[i] = soundPosition[i] - listenerPosition[i];
		relDist += listToSound[i] * listToSound[i];
	}
	relDist = Math.sqrt(relDist);
	if (relDist == 0) return;
	if (relDist < headRadius + 0.01) relDist = headRadius + 0.01;
	commonPart1 = headRadius * headRadius + relDist * relDist;
	commonPart2 = 2 * headRadius * relDist;
	calcRelRot();
}

function normalize(vector) {
	var magnitude = 0;
	for (i = 0; i < vector.length; i++) magnitude += vector[i] * vector[i];
	for (i = 0; i < vector.length; i++) vector[i] /= Math.sqrt(magnitude);
	return vector;
}

// Calculate the relative rotation between listener and vector to sound source.
function calcRelRot() {
	if (relDist == 0) return;
	var toSoundQuat = normalize([listToSound[0], listToSound[1], listToSound[2], 0]);
	var rotVect = normalize(listenerRotation);
	/*
	 * Since the listenerRot quaternion is normalized, its
	 * inverse is simply its conjugate.
	 * The scalar component is the last element of the array.
	 */
	//var conjQuat = [-listenerRot[0], -listenerRot[1], -listenerRot[2], listenerRot[3]];
	var conjQuat = [-rotVect[0], -rotVect[1], -rotVect[2], rotVect[3]];
	/*
	 * Rotate the listToSound vector by the listenerRot quaternion:
	 * V = listenerRot * listToSound * listenerRot^{-1}.
	 */
	rotVect = hamiltonProduct(rotVect, toSoundQuat);
	rotVect = hamiltonProduct(rotVect, conjQuat);
	/*
	 * Convert the vector to polar coordinates:
	 * http://www.engin.brown.edu/courses/en3/Notes/Vector_Web2/Vectors6a/Vectors6a.htm
	 * Note that the axis must be shifted in order to match the calculation described at the website.
	 */
	var x = rotVect[2];
	var y = rotVect[1];
	var z = rotVect[0];
	var azim = Math.acos(z);
	var elev = Math.atan2(y, x);
	/*
	 * Set azimuth range to 0 to 72 (0 to 180deg).
	 * Set elevation range to 0 to 127 (-45 to 315deg).
	 */
	var azimuth = Math.round(72 * (1 - azim / Math.PI));
	elev = Math.PI * 0.75 - elev;
	if (elev < 0) elev += 2 * Math.PI;
	var elevation = Math.round((elev / (2 * Math.PI)) * 127);
	/*
	 * Calculate distance to left and right ear,
	 * the distance to the left ear in the CIPIC database at this angle,
	 * and the distance to the right ear in the CIPIC database at this angle.
	 */
	var angleL = Math.PI - azim;
	var angleR = azim;
	var cosL = Math.cos(angleL);
	var cosR = Math.cos(angleR);
	var distL = Math.sqrt(commonPart1 - commonPart2 * cosL);
	var distR = Math.sqrt(commonPart1 - commonPart2 * cosR);
	var cipicDistL = Math.sqrt(commonStaticPart1 - commonStaticPart2 * cosL);
	var cipicDistR = Math.sqrt(commonStaticPart1 - commonStaticPart2 * cosR);
	var gainL = cipicDistL / distL;
	if (gainL > gainLimit) gainL = gainLimit;
	var gainR = cipicDistR / distR;
	if (gainR > gainLimit) gainR = gainLimit;
	var dirDelay = relDist * 1000 / speedOfSound;
	outlet(0, [azimuth, elevation]);
	outlet(1, gainL);
	outlet(2, gainR);
	outlet(3, dirDelay);
}

function hamiltonProduct(q1, q2) {
	var x = q1[3] * q2[0] + q2[3] * q1[0] + q1[1] * q2[2] - q1[2] * q2[1];
	var y = q1[3] * q2[1] + q2[3] * q1[1] - q1[0] * q2[2] + q1[2] * q2[0];
	var z = q1[3] * q2[2] + q2[3] * q1[2] + q1[0] * q2[1] - q1[1] * q2[0];
	var w = q1[3] * q2[3] - q1[0] * q2[0] - q1[1] * q2[1] - q1[2] * q2[2];
	return [x, y, z, w];
}

/*
 * Set the quaternion rotation of the listener (not yet implemented).
 * Listener rotation is given in unit quaternions, with the scalar part as the first argument.
 * If no listener rotation is given, the listener is looking forward which is 'up' here.
 */
function listenerRot(w, x, y, z) {
	listenerRotation = [w, x, y, z];
	calcRelRot();
}