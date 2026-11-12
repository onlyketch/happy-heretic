if (global.game_state == 1) {
	global.game_state = 2;
	sprite_index = s_bird_bump;
	audio_stop_all();
	audio_play_sound(snd_bump, 10, false);
	obj_controller.snake_time = 10;
	obj_controller.flash_time = 5;
}