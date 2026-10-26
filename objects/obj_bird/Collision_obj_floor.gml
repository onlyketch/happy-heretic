if (global.game_state < 3) {
	global.game_state = 3;
	vspeed = 0;
	gravity = 0;
	y = obj_floor.y - sprite_get_height(s_bird);
}
