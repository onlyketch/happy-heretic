if (is_animating) {
	title_y_pos = lerp(title_y_pos, target_y, 0.1);
	
	if (title_y_pos >= target_y - 0.5) {
		title_y_pos = target_y;
		is_animating = false;
	}
}

var btn_replay_y = title_y_pos + 24 + 46;

if (device_mouse_check_button_pressed(0, mb_left)) {
	var mx = device_mouse_x_to_gui(0);
	var my = device_mouse_y_to_gui(0);
	
	if (point_in_rectangle(
		mx, my,
		btn_replay_x,
		btn_replay_y,
		btn_replay_x + btn_replay_w,
		btn_replay_y + btn_replay_h
	)) {
		obj_session.is_restart = true;
		room_restart();
	}
}