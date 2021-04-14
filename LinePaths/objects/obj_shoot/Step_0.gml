if (phy_rotation != 180) {
	if (playing) {
		if (alarm[0] < 1) {
			alarm[0] = 30;
		}
	}
	
	if (global.finished == humans && room_exists(room_next(room))) {
		room_goto_next();
	}
}