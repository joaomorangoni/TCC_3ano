function scr_screen_shake_static(){

	var cam = view_camera[0];
	var target_x = camera_get_view_x(cam);
	var target_y = camera_get_view_y(cam);
	global.shake_strength = argument0;
	global.shake_duration = argument1;
	global.shake_fade = 0.5; 
	
	if (global.shake_duration > 0) {
	    global.shake_duration--;

	    global.shake_strength *= global.shake_fade;

	    var shake_x = random_range(-global.shake_strength, global.shake_strength);
	    var shake_y = random_range(-global.shake_strength, global.shake_strength);

	    // Ajuste da posição da câmera
	    
	    camera_set_view_pos(cam, target_x + shake_x, target_y + shake_y);
	}
	
}