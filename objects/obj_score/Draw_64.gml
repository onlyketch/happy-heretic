display_set_gui_size(320, 180);

draw_set_font(font_score);
draw_set_colour(c_white);
draw_set_halign(fa_center);

draw_text_transformed(room_width/2, 24, global.game_score, 0.5, 0.5, 0);