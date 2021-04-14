mover1x = x+10;
mover1y = y+10;
mover2x = x-10;
mover2y = y-10;

clicked = -1;

fix = physics_fixture_create();
physics_fixture_set_friction(fix,0);
physics_fixture_set_box_shape(fix,point_distance(mover1x,mover1y,mover2x,mover2y)/2,1);
bfix = physics_fixture_bind(fix,self);