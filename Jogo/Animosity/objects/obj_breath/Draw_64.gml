var bar_x = display_get_gui_width()/2 - 50;
var bar_y = 300;
var bar_width = 100;
var bar_height = 200;

// Fundo
draw_set_color(c_gray);
draw_rectangle(bar_x, bar_y - bar_height, bar_x + bar_width, bar_y, false);

// Barra
draw_set_color(c_white);
draw_rectangle(bar_x, bar_y - bar_value, bar_x + bar_width, bar_y, false);

// Indicadores mínimo/máximo
draw_set_color(c_red);
draw_line(bar_x, bar_y - bar_min, bar_x + bar_width, bar_y - bar_min);
draw_line(bar_x, bar_y - bar_max, bar_x + bar_width, bar_y - bar_max);
