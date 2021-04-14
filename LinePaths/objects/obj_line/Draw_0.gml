draw_sprite_ext(spr_floor,0,x+1,y+1,image_xscale,image_yscale,-phy_rotation-90,image_blend,image_alpha);
// draw movers
if (!obj_shoot.playing) {
	draw_sprite(spr_line_mover,0,mover1x,mover1y);
	draw_sprite(spr_line_mover,0,mover2x,mover2y);
}