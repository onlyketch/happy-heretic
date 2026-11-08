if (global.game_state == 0 && !obj_session.is_restart) {
	
	hover_distance += hover_speed;
	y += hover_speed * hover_direction;
	
	if (hover_distance >= hover_limit) {
		hover_direction = -hover_direction;
		hover_distance = 0;
	}

}

if (y <= -sprite_height && global.game_state == 1) {
	global.game_state = 2;
	sprite_index = s_bird_bump;
	obj_controller.snake_time = 10;
	obj_controller.flash_time = 5;
}


if (global.game_state > 1 && image_speed > 0) {
	image_speed = 0;
}
