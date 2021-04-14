obj_shoot.playing = !obj_shoot.playing;
instance_destroy(obj_block);
global.finished = 0;
obj_shoot.expelled = 0;

if (obj_shoot.playing) {
	sprite_index = spr_stop_button;
} else {
	sprite_index = spr_play_button;
}