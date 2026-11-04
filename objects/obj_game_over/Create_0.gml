image_speed = 0;

room_center = room_width/2;
v_gap = 7;

title_height = sprite_get_height(s_gm_title);
panel_width = sprite_get_width(s_gm_panel);
panel_height = sprite_get_height(s_gm_panel);

btn_width = sprite_get_width(s_btn_replay);
btn_height = sprite_get_height(s_btn_replay);
btn_replay_x = room_center - panel_width/2;
btn_records_x = room_center + panel_width/2 - btn_width;

title_y_pos = 20;
target_y = 20;
is_animating = false;



//alarm[0] = game_get_speed(gamespeed_fps);