display_set_gui_size(global.base_width, global.base_height);

var title_y = title_y_pos;
var title_x = room_center;
var panel_y = title_y + title_height + v_gap;
var panel_x = room_center;
var panel_w = panel_width;
var btn_replay_x = panel_x - panel_w/2;
var btn_records_x = panel_x + panel_w/2 - btn_width;
var btn_y = panel_y + panel_height + v_gap;

var panel_right_x_offset = panel_x + panel_w/2 - 15 - 8;
var panel_left_x_offset = panel_x - panel_w/2 + 15;
var panel_top_y1_offset = panel_y + 17;
var panel_top_y2_offset = panel_y + 40;

var str_score = string(global.game_score);
var score_len = string_length(str_score);
var score_x = panel_right_x_offset;

var str_best = string(global.best_score);
var best_len = string_length(str_best);
var best_x = panel_right_x_offset;

var time = addZero(global.game_minutes) + ":" + addZero(global.game_seconds);
var time_x = panel_left_x_offset;


draw_sprite(s_gm_title, 0, title_x, title_y);

draw_sprite(s_gm_panel, 0, panel_x, panel_y);

draw_sprite(s_btn_replay, 0, btn_replay_x, btn_y);

draw_sprite(s_btn_records, 0, btn_records_x, btn_y);

// Score
for (var i = score_len; i >= 1; i--) {
	var num = real(string_char_at(str_score, i));
	
	draw_sprite(s_digits_small, num, score_x, panel_top_y1_offset);
	
	score_x -= (num == 1) ? 6 : 9;
}

// Best score
for (var i = best_len; i >= 1; i--) {
	var num = real(string_char_at(str_best, i));
	
	draw_sprite(s_digits_small, num, best_x, panel_top_y2_offset);
	
	best_x -= (num == 1) ? 6 : 9;
}

// Time
for (var i = 1; i <= string_length(time); i++) {
	
	if (string_char_at(time, i) != ":") {
		var num = real(string_char_at(time, i));
		if (num == 1) time_x -= 3;
		draw_sprite(s_digits_small, num, time_x, panel_top_y2_offset);
		time_x += 9;
	
	} else {
		draw_sprite(s_time_sep, 0, time_x, panel_top_y2_offset);
		time_x += 4;	
	}
	
}




