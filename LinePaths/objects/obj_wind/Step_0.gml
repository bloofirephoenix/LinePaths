var dir = image_angle+90
var strength = 20;
var xforce = lengthdir_x(strength,dir);
var yforce = lengthdir_y(strength,dir);
var wind = id;
with (obj_block) {
	if (place_meeting(x,y,wind)) {
		physics_apply_force(x,y,xforce,yforce);
	}
}