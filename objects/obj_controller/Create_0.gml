global.base_width = 320;
global.base_height = 180;

global.game_state = 0;
global.game_score = 0;

ini_open("save.ini");
global.best_score = ini_read_real("scores", "best_score", 0);
ini_close();

game_over = false;