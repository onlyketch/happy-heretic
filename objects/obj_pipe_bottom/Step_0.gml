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

if (x + width < obj_bird.x + bird_half_width && !score_added) {
	score_added = true;
	global.game_score++;
	audio_play_sound(snd_collect, 10, false);
}