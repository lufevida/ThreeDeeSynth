
autowatch = 1;
outlets = 3;

var x = 0;
var y = 0;
var z = 0;

function convert(theta, phi, rho){
	
	this.rho = 5;
	
	this.phi = Math.atan2(y, x);

	this.theta = Math.acos(z / rho);

	x = this.rho * Math.sin(theta) * Math.cos(phi);
	y = this.rho * Math.sin(theta) * Math.sin(phi);
	z = rho * Math.cos(theta);
	
	outlet(0, [x]);
	outlet(1, [y]);
	outlet(2, [z]);
}
