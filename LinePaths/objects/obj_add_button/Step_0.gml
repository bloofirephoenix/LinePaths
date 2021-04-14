if (instance_number(obj_line) >= max_lines) {
	image_index = 2;
} else {
	if (image_index == 2) {
		image_index = 0;
	}
}

if (obj_shoot.playing) {
	sprite_index = noone;
} else {
	sprite_index = spr_add_button;
}