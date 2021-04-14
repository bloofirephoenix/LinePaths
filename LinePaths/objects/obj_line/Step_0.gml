if (mouse_check_button_pressed(mb_left) && !obj_shoot.playing) {
	if (point_in_rectangle(mouse_x,mouse_y,mover1x-8,mover1y-8,mover1x+8,mover1y+8)) {
		with (obj_line) {
			clicked = 0;
		}
		clicked = 1;
	}
	if (point_in_rectangle(mouse_x,mouse_y,mover2x-8,mover2y-8,mover2x+8,mover2y+8)) {
		with (obj_line) {
			clicked = 0;
		}
		clicked = 2;
	}
}

if (mouse_check_button_released(mb_left)) {
	clicked = 0;
}

// mouse moving
if (clicked == 1) {
	mover1x = mouse_x;
	mover1y = mouse_y;
	src_apply_fix_changes();
}
if (clicked == 2) {
	mover2x = mouse_x;
	mover2y = mouse_y;
	src_apply_fix_changes();
}

function src_apply_fix_changes() {
	physics_remove_fixture(self,bfix);
	fix = physics_fixture_create();
	physics_fixture_set_box_shape(fix,point_distance(mover1x,mover1y,mover2x,mover2y)/2,1);
	physics_fixture_set_friction(fix,0);
	bfix = physics_fixture_bind(fix,self);
}

mover1x = clamp(mover1x,0,room_width);
mover1y = clamp(mover1y,0,room_height);
mover2x = clamp(mover2x,0,room_width);
mover2y = clamp(mover2y,0,room_height);

image_xscale = 1;
image_yscale = point_distance(mover1x,mover1y,mover2x,mover2y) / 2;
phy_rotation = -point_direction(mover2x,mover2y,mover1x,mover1y);

phy_position_x = (mover1x + mover2x) / 2;
phy_position_y = (mover1y + mover2y) / 2;