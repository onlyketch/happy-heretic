if (global.game_state < 3) {
	if (global.game_state == 1) {
		obj_controller.snake_time = 10;
		obj_controller.flash_time = 5;
	}
	global.game_state = 3;
	sprite_index = s_bird_bump;
	vspeed = 0;
	gravity = 0;
	y = obj_floor.y - sprite_get_height(s_bird);
}
