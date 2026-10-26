if (global.game_state == 3 && !game_over) {
	game_over = true;
	instance_create_layer(x, y, "Instances", obj_game_over);
}