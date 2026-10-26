var rnd_y = irandom_range(min_y, max_y);
var pipe_bottom = instance_create_layer(start_x, rnd_y, "Instances", obj_pipe_bottom);
instance_create_layer(start_x, pipe_bottom.y - gap, "Instances", obj_pipe_top);

if (global.game_state == 1) {
	alarm[0] = game_get_speed(gamespeed_fps) * generation_time;
}
