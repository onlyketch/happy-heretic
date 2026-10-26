display_set_gui_size(global.base_width, global.base_height);

var title = "GAME OVER";
var title_width = string_width(title);
var title_x = room_width/2;
var title_y = title_y_pos;

var panel_width = sprite_get_width(s_gm_panel);
var panel_x = room_width/2 - panel_width/2;
var panel_y = title_y + 24;

var score_val = global.game_score > 9 ? string(global.game_score) : "0" + string(global.game_score);
var best_val =  global.best_score > 9 ? string(global.best_score) : "0" + string(global.best_score);

draw_set_font(font_test);
draw_set_colour(make_colour_rgb(233, 248, 29));
draw_set_halign(fa_center);
draw_text_transformed(title_x, title_y, title, 0.5, 0.5, 0);

draw_sprite(s_gm_panel, 0, panel_x, panel_y);

draw_set_halign(fa_left);
draw_set_font(font_sign);
draw_set_colour(make_colour_rgb(208, 178, 76));
draw_text_transformed(panel_x + 12, panel_y + 12, "SCORE", 0.5, 0.5, 0);
draw_text_transformed(panel_x + 84, panel_y + 12, "BEST", 0.5, 0.5, 0);

draw_set_font(font_val);
draw_set_colour(make_colour_rgb(240, 186, 9));
draw_text_transformed(panel_x + 22, panel_y + 26, score_val, 0.5, 0.5, 0);
draw_text_transformed(panel_x + 89, panel_y + 26, best_val, 0.5, 0.5, 0);

draw_sprite_ext(s_btn_replay, 0, panel_x + panel_width/2, panel_y + 46, 0.5, 0.5, 0, c_white, 1);



