if (alarm[0] > 0) {
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);

	// draw outline
	draw_set_color(c_black);
	
	var l = "Lines";
	if (max_lines == 1) {
		l = "Line";
	}
	for (var h = -1; h <= 1; h++) {
		for (var v = -1; v <= 1; v++) {
			var w = 2;
			draw_text((display_get_gui_width()/2)+(v*w), (display_get_gui_height()/2)+(h*w), "You Can Use "+string(max_lines)+" "+l+" This Level");
		}
	}

	draw_set_color(c_white);
	draw_text(display_get_gui_width()/2, display_get_gui_height()/2, "You Can Use "+string(max_lines)+" "+l+" This Level");
}