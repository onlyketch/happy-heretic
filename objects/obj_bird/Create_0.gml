gravity_direction = 270;
gravity_val = 0.18;
fly_speed = 3.2;

hover_speed = 0.5;
hover_direction = -1;
hover_distance = 0;
hover_limit = 10;

if (obj_session.is_restart) {
	global.game_state = 1;
	gravity = gravity_val;
	vspeed = -fly_speed;
}
