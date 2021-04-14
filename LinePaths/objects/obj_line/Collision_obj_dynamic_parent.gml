// Inherit the parent event
event_inherited();

var strength = 3;
var dir = -point_direction(mover2x,mover2y,mover1x,mover1y);
var xforce = lengthdir_x(strength,dir);
var yforce = lengthdir_y(strength,dir);
with (other) {
	physics_apply_force(x,y,xforce,yforce);
}