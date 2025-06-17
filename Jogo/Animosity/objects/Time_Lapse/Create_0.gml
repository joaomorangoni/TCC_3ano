
image_alpha = 0.45;           
image_xscale = 0.1;
image_yscale = 0.1;

effect_duration = 90;        
timer = 0;

// Posição no centro da tela
x = camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0]) / 2;
y = camera_get_view_y(view_camera[0]) + camera_get_view_height(view_camera[0]) / 2;

// Slow motion
time_scale = 0.3;           
global.tempo = time_scale;  

