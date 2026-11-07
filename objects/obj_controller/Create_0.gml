global.base_width = 320;
global.base_height = 180;

global.game_state = 0;
global.game_score = 0;
global.game_time = 0;
global.game_minutes = 0;
global.game_seconds = 0;
global.game_rating = 3;

ini_open("save.ini");
global.best_score = ini_read_real("scores", "best_score", 0);
ini_close();

game_over = false;

layer_hspeed("Background_1", -0.25);
layer_hspeed("Background_2", -1);
layer_hspeed("Background_3", -1);

// Camera Snake Variables

snake_time = 0;
camera_x = camera_get_view_x(view_camera[0]);
camera_y = camera_get_view_y(view_camera[0]);