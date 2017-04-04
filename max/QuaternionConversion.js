// Taken from Jitter3DUtils.js
autowatch = 1;
outlets = 2;

// Convert angle/axis rotation to quaternion.
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
	outlet(0, quat);
}

// Convert quaternion to angle/axis rotation.
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
	outlet(1, axis);
}