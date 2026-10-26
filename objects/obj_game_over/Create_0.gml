image_speed = 0;

title_y_pos = -120;
target_y = 24;
is_animating = false;

panel_width = sprite_get_width(s_gm_panel);

btn_replay_w = sprite_get_width(s_btn_replay) * 0.5;
btn_replay_h = sprite_get_height(s_btn_replay) * 0.5;
btn_replay_x = room_width/2 - btn_replay_w/2;

alarm[0] = game_get_speed(gamespeed_fps);