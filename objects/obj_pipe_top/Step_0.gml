if (global.game_state == 1 && !moving) {
	moving = true;
	hspeed = -1;
}

if (global.game_state > 1) {
	hspeed = 0;
}

if (x < -width) {
	instance_destroy();
}