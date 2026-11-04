display_set_gui_size(320, 180);

var str_score = string(global.game_score);
var score_width = string_length(str_score) * 12 + 1;

var score_x = floor((global.base_width - score_width) / 2);
var score_y = 24;

for (var i = 1; i <= string_length(str_score); i++) {
	var num = real(string_char_at(str_score, i));
	
	draw_sprite(s_digits_big, num, score_x, score_y);
	
	score_x += 12;
}