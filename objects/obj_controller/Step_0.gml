if (global.game_state == 3 && !game_over) {
	game_over = true;
	
	if (global.game_score > global.best_score) {	
		global.best_score = global.game_score;
		global.new_record = true;
		ini_open("save.ini");
		ini_write_real("scores", "best_score", global.best_score);
		ini_close();
	}
	
	global.game_rating = calcRating(global.game_score, global.best_score);
	
	instance_create_layer(x, y, "Instances", obj_game_over);

}

if (global.game_state > 1) {
	layer_hspeed("Background_1", 0);
	layer_hspeed("Background_2", 0);
	layer_hspeed("Background_3", 0);
}

if (global.game_state == 1) {
	global.game_time += delta_time / 1000000;
	
	global.game_minutes = floor(global.game_time / 60);
	global.game_seconds = floor(global.game_time % 60);
}

if (snake_time > 0) {
	snake_time--;
	
	camera_set_view_pos(
		view_camera[0],
		camera_x + irandom_range(-2, 2),
		camera_y + irandom_range(-2, 2)
	);
	
	if (snake_time <= 0) {
		camera_set_view_pos(view_camera[0], camera_x, camera_y);
	}

}

if (flash_time > 0) {
	flash_time -= 1;
}