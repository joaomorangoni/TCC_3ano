var cam = view_camera[0];
var cam_x = camera_get_view_x(cam);
var cam_y = camera_get_view_y(cam);
var cam_w = camera_get_view_width(cam);
var cam_h = camera_get_view_height(cam);

var sw = sprite_get_width(fundo);
var sh = sprite_get_height(fundo);

var parallax_x = 0.9;
var parallax_y = 0.9;

var scale_factor = 1.5; // aumentei de 1.2 para 1.4 para ficar maior
var extra_offset_x = 100; // desloca 50 pixels para a direita

var bg_w = cam_w * scale_factor;
var bg_h = cam_h * scale_factor;

var offset_x = (sw - bg_w) * parallax_x * 0.5;
var offset_y = (sh - bg_h) * parallax_y * 0.5;

var draw_x = cam_x * parallax_x - offset_x + extra_offset_x;
var draw_y = cam_y * parallax_y - offset_y;

draw_sprite_stretched(fundo, 0, draw_x, draw_y, bg_w, bg_h);
