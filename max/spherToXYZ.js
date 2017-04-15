
autowatch = 1;
outlets = 3;

var x = 0;
var y = 0;
var z = 0;

function convert(theta, phi, rho){
	
	rho = 5;
	
	//phi = Math.atan2(y, x);

	//theta = Math.acos(z / rho);
	
	//post(theta + "\n");
	//post(phi + "\n");
	//post(rho + "\n");

	x = rho * Math.sin(theta) * Math.cos(phi);
	y = rho * Math.sin(theta) * Math.sin(phi);
	z = rho * Math.cos(theta);
	
	outlet(0, [x]);
	outlet(1, [y]);
	outlet(2, [z]);
}
