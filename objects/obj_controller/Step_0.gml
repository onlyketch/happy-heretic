if (global.game_state == 3 && !game_over) {
	game_over = true;
	
	if (global.game_score > global.best_score) {	
		global.best_score = global.game_score;
		ini_open("save.ini");
		ini_write_real("scores", "best_score", global.best_score);
		ini_close();
	}
	
	instance_create_layer(x, y, "Instances", obj_game_over);
}