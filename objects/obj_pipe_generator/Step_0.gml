if (global.game_state == 1 && !generation) {
	generation = true;
	alarm[0] = game_get_speed(gamespeed_fps) * generation_time;
}