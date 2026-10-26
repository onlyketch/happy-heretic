if (global.game_state == 0) {
	global.game_state = 1;
	gravity = gravity_val;
}

if (global.game_state == 1) {
	vspeed = -fly_speed;
}