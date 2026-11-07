if (flash_time > 0) {
	draw_set_alpha(flash_time / 5);
	draw_set_colour(c_white);
	draw_rectangle(0, 0, global.base_width, global.base_height, false);
	draw_set_alpha(1);
	draw_set_colour(c_white);
}