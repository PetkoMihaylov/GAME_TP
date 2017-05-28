ini_open("settings.ini");
global.key_right = ini_read_real("control", "r", 68);
global.key_left = ini_read_real("control", "l", 65);
global.key_down = ini_read_real("control", "d", 83);
global.key_up = ini_read_real("control", "u", 87);

global.key_dash = ini_read_real("control", "da", 67);
global.key_attack = ini_read_real("control", "at", 88);
global.key_fireball = ini_read_real("control", "fi", 90);

ini_close();