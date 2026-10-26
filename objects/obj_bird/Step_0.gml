if (global.game_state == 0 && !obj_session.is_restart) {
	
	hover_distance += hover_speed;
	y += hover_speed * hover_direction;
	
	if (hover_distance >= hover_limit) {
		hover_direction = -hover_direction;
		hover_distance = 0;
	}

}