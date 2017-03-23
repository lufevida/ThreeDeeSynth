//input format
//packer -> soundPos x, y, z
//		 -> listenerPos x, y, z


//https://docs.cycling74.com/max5/refpages/max-ref/js.html
outlets = 5;
//Outlet 1: azimuth
//Outlest 2: elevation

/*
 * DirectionAndDistanceHandler calculates the appropriate azimuth and elevation on the basis of a provided listener position
 * (message: listenerPos x y z), sound position (message: soundPos x y z) and an optional listener rotation (message: listenerRot
 * (unit quaternion)). It calculates the sound volume for both ears as well as the delay of the sound.
 * 
 * Positions are given in meters and the optional listener rotation is given with unit quaternions with the scalar part
 * as first argument. Listener rotation is, however, not set in this patch.
 * 
 * Listener height and sound height range up to 5 meters, and the room size is a 10 by 10 meter square.
 * 
 * Drag the listener (node 1) and sound (node 2) to set their x, y position (horizontal). Their z position (height)
 * is set by the sliders to the left. If no listener rotation is given, the listener is looking forward which is 'up' here.
 * 
 * The gain is 1 at 1 meter's distance, 2 at half a meter etc. Per default the DirectionAndDistanceHandler limits the gain to 5.,
 * but you can set a custom gain limit by sending the message: gainLimit x
 * 
 * Outlets are:
 * 1. Azimuth and elevation
 * 2. Left ear gain
 * 3. Right ear gain
 * 4. Delay in ms (doppler)
 */


//var _listenerRot = new Quat4f(0,0,0,1);
//var _listenerPos = new Vector3f();
//var _soundPos = new Vector3f();
//var _listToSound = new Vector3f();
var soundPosVec = [0, 0, 0];
var listenerPosVec = [0, 0, 0];
var differenceVec = [0, 0, 0];
var relativeDistance = 0;
var headRadius = 0.11;
	
// b^2 + c^2 Used to calculate the distance to left and right ear
var commonPart1;
// 2bc Used to calculate the distance to left and right ear
var commonPart2;
// b^2 + c^2 Used to calculate the reference distance to left and right ear (as it was in the CIPIC database at current angle)
var commonStaticPart1 = headRadius * headRadius + 1;
// 2bc Used to calculate the reference distance to left and right ear (as it was in the CIPIC database at current angle)
var commonStaticPart2 = 2 * headRadius;
// Speed of sound
var sos = 344;
var gainLimitNum = 5;

function soundPos(x, y, z){//Set the world position of the soundSource
	soundPosVec = [x, y, z];
	calculate();
}

function listenerPos(x, y, z){//Set the world position of the soundSource
	listenerPosVec = [x, y, z];
	calculate();
}

function gainLimit(x){//Set the world position of the soundSource
	gainLimitNum = x;
}

function calculate(){
	//Calculate difference
	differenceVec[0] = soundPosVec[0] - listenerPosVec[0];
	differenceVec[1] = soundPosVec[1] - listenerPosVec[1];
	differenceVec[2] = soundPosVec[2] - listenerPosVec[2];
	
	//Calculate distance
	relativeDistance = Math.sqrt(differenceVec[0]*differenceVec[0] + differenceVec[1]*differenceVec[1] + differenceVec[2]*differenceVec[2]);
	
	//If you're inside the head
	if(relativeDistance < headRadius + 0.01)
		relativeDistance = headRadius + 0.01;
				
	//azimuth = Math.round(
	//post(soundPosVec[0], soundPosVec[1], soundPosVec[2], "\n");
	//post(listenerPosVec[0], listenerPosVec[1], listenerPosVec[2], "\n");
	post(differenceVec[0], differenceVec[1], differenceVec[2], "\n", "\n");
	//post(relativeDistance);
	
	var azimuth = Math.acos(differenceVec[0]/relativeDistance); //arccos(adj/hyp) or arccos(x,relativeDistance) of relative distance
	
	azimuth = Math.round(72*(1-azimuth/Math.PI));//Set azimuth range to 0 to 72 (0 to 180deg)
	
	var elevation = Math.atan(differenceVec[2]/relativeDistance); //arctan(y/x)
	
	elevation = -(elevation - Math.PI*0.75);//set elevation range to 0 to 127 (-45 to 315deg)
	if(elevation < 0) elevation = 2*Math.PI + elevation;
	elevation = Math.round((elevation/(2*Math.PI)) * 127);
	
	post(azimuth, elevation);
	outlet(0, azimuth);
	outlet(1, elevation);
}

//calcRelRot()