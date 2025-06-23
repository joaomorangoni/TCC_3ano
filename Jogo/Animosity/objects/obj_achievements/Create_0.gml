selected_index = 0;
show_details = false;

description_lines = [];

var desc = global.achievements[selected_index].description;
description_lines = string_split(desc, "\n");

btn_x = 50;
btn_y = 500;
btn_w = 120;
btn_h = 25; 