//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
// Setup
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

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

// If no listener rotation is given, the listener
// is looking forward which is 'up' here.
var listenerRotation = [0, 0, 0, 1];

// Listener height and sound height range up to 5 meters,
// and the room size is a 10 by 10 meter square.
var listenerPosition = [0, 0, 0];
var soundPosition = [0, 0, 0];

var listToSound = [0, 0, 0];
var relDist = 0;
var headRadius = 0.11;
var speedOfSound = 344;
var gainLimit = 1;

// Used to calculate the distance to left and right ear  
var commonPart1; // = b^2 + c^2
var commonPart2; // = 2 * b * c

// Used to calculate the reference distance to left and right ear
// (as it was in the CIPIC database at current angle)
var commonStaticPart1 = headRadius * headRadius + 1; // = b^2 + c^2
var commonStaticPart2 = 2 * headRadius; // = 2 * b * c

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

// Compute the L_2 distance between soundPos and listenerPos.
// Calculate the common part in the cosine relations used
// later to define the distance to both ears.
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

// Calculate the relative rotation between listener and vector to sound source.
function calcRelRot() {
	if (relDist == 0) return;
	// The scalar component is the last element of the array.
	var toSoundQuat = normalize([listToSound[0], listToSound[1], listToSound[2], 0]);
	var rotVect = normalize(listenerRotation);
	// Since the listenerRot quaternion is normalized, its inverse is simply its conjugate.
	//var conjQuat = [-listenerRot[0], -listenerRot[1], -listenerRot[2], listenerRot[3]];
	var conjQuat = [-rotVect[0], -rotVect[1], -rotVect[2], rotVect[3]];
	// Rotate the listToSound vector by the listenerRot quaternion.
	rotVect = hamiltonProduct(rotVect, toSoundQuat);
	rotVect = hamiltonProduct(rotVect, conjQuat);
	// Convert the vector to polar coordinates.
	var azim = Math.acos(rotVect[0]);
	var elev = Math.atan2(rotVect[1], rotVect[2]);
	// Set azimuth range to 0 to 72 (0 to 180deg).
	var azimuth = Math.round(72 * (1 - azim / Math.PI));
	// Set elevation range to 0 to 127 (-45 to 315deg).
	elev = Math.PI * 0.75 - elev;
	if (elev < 0) elev += 2 * Math.PI;
	var elevation = Math.round((elev / (2 * Math.PI)) * 127);
	// Calculate distance to left and right ear, and the distance
	// to left and right ear in the CIPIC database at this angle.
	var angleL = Math.PI - azim;
	var angleR = azim;
	var cosL = Math.cos(angleL);
	var cosR = Math.cos(angleR);
	var distL = Math.sqrt(commonPart1 - commonPart2 * cosL);
	var distR = Math.sqrt(commonPart1 - commonPart2 * cosR);
	var cipicDistL = Math.sqrt(commonStaticPart1 - commonStaticPart2 * cosL);
	var cipicDistR = Math.sqrt(commonStaticPart1 - commonStaticPart2 * cosR);
	var gainL = cipicDistL / distL;
	var gainR = cipicDistR / distR;
	if (gainL > gainLimit) gainL = gainLimit;
	if (gainR > gainLimit) gainR = gainLimit;
	var dirDelay = relDist * 44100 / speedOfSound;
	outlet(0, [azimuth, elevation]);
	outlet(1, gainL);
	outlet(2, gainR);
	outlet(3, dirDelay);
}

// Set the quaternion rotation of the listener.
function listenerRot(x, y, z, w) {
	listenerRotation = [x, y, z, w];
	calcRelRot();
}

var stormTrooper = new JitterObject("jit.gl.model", "ctx");
stormTrooper.file = "batman.obj";
stormTrooper.lighting_enable = 1;
stormTrooper.smooth_shading = 1;
stormTrooper.material_mode = 0;
stormTrooper.color = [1, 0, 0.5, 1];

var tree = new JitterObject("jit.gl.model");
tree.file = "trees.obj";
tree.drawgroup = 5; // draws tree number 5 only
tree.lighting_enable = 1;
tree.smooth_shading = 1;
tree.material_mode = 0;
tree.color = [0, 1, 0, 1];

var render = new JitterObject("jit.gl.render", "ctx");
render.erase_color = [0.5, 0.5, 0.5, 1];

var shape = new JitterObject("jit.gl.gridshape", "ctx");
shape.lighting_enable = 1;
shape.smooth_shading = 1;
shape.color = [0, 1, 0, 1];

var world = new JitterObject("jit.phys.world");
var object = new JitterObject("jit.phys.body", "ctx");

var counter = 0;

function bang() {
	render.erase();
	render.drawswap();
	var radians = counter * Math.PI / 180;
	//stormTrooper.position = [Math.cos(radians), Math.sin(radians), 2 * Math.cos(radians) - 4];
	//stormTrooper.rotatexyz = [counter, counter, counter];
	//tree.position = [Math.sin(radians), Math.cos(radians), Math.sin(radians) - 2];
	//tree.rotatexyz = [counter, counter, counter];
	counter++;
	counter %= 360;
	listenerPos(stormTrooper.position[0], stormTrooper.position[1], stormTrooper.position[2]);
	listenerRot(stormTrooper.quat[0], stormTrooper.quat[2], stormTrooper.quat[2], stormTrooper.quat[3]);
	soundPos(tree.position[0], tree.position[1], tree.position[2]);
}

//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
// Vector and Quaternion Utilities
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

function normalize(vector) {
	var magnitude = 0;
	for (i = 0; i < vector.length; i++) magnitude += vector[i] * vector[i];
	for (i = 0; i < vector.length; i++) vector[i] /= Math.sqrt(magnitude);
	return vector;
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

// Convert angle/axis rotation to quaternion. Taken from Jitter3DUtils.js
function axisToQuaternion(a, b, c, d) {
	var axis = [a, b, c, d];
	var quat = new Array(4);
	var phi = axis[0] * Math.PI / 180;
	var mag;
	var scale;
	mag = Math.sqrt(axis[1] * axis[1] + axis[2] * axis[2] + axis[3] * axis[3]);
	if (mag < 0.00005) mag = 1;
	scale = Math.sin(phi / 2) / mag;
	quat[0] = axis[1] * scale;
	quat[1] = axis[2] * scale;
	quat[2] = axis[3] * scale;
	quat[3] = Math.cos(phi / 2);
}

// Convert quaternion to angle/axis rotation. Taken from Jitter3DUtils.js
function quaternionToAxis(a, b, c, d) {
	var quat = [a, b, c, d];
	var axis = new Array(4);
	var cos_a;
	var sin_a;
	cos_a = quat[3];
	axis[0] = (Math.acos(cos_a) * 2) * 180 / Math.PI;
	sin_a = Math.sqrt(1 - cos_a * cos_a);
	if (Math.abs(sin_a) < 0.00005) sin_a = 1;
	axis[1] = quat[0] / sin_a;
	axis[2] = quat[1] / sin_a;
	axis[3] = quat[2] / sin_a;
}

//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
// Buffer Manipulation
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

// A corresponding `buffer~` object must be created
var buf = new Buffer("vega");

function getBufferInfo() {
	post("\nBuffer length: " + buf.length());
	post("\nBuffer frame count: " + buf.framecount());
	post("\nBuffer channel count: " + buf.channelcount());
	// Send a message
	buf.send("fill", "sinc", 20, 1)
	for (i = 0; i < 20; i++) {
		// .peek(1, index, count) // gets a sample
		post("\nBuffer sample: " + buf.peek(1, i));
	}
	for (i = 0; i < 20; i++) {
		// .poke(1, 0, samples) // sets a sample
		post("\nBuffer sample: " + buf.poke(1, i));
	}
}

//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
// End of File
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~