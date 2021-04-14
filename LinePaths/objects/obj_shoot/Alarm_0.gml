if (expelled < humans && playing) {
	if (!place_meeting(x,y+17,obj_block)) {
		instance_create_layer(x,y+17,layer,obj_block);
		expelled++;
	}
}