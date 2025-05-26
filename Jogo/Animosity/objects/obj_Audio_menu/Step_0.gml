if (global.menu) {
		// Navegação com teclado
	if (keyboard_check_pressed(vk_up) || keyboard_check_pressed(ord("W"))) {
	    option = (option - 1 + option_count) mod option_count;
	}
	if (keyboard_check_pressed(vk_down) || keyboard_check_pressed(ord("S"))) {
	    option = (option + 1) mod option_count;
	}

	// Ajustar volume com teclado
	var vol_step = 0.05;

	if (option == 0) {
	    if (keyboard_check_pressed(vk_left)) global.music_volume = clamp(global.music_volume - vol_step, 0, 1);
	    if (keyboard_check_pressed(vk_right)) global.music_volume = clamp(global.music_volume + vol_step, 0, 1);
	}
	if (option == 1) {
	    if (keyboard_check_pressed(vk_left)) global.sfx_volume = clamp(global.sfx_volume - vol_step, 0, 1);
	    if (keyboard_check_pressed(vk_right)) global.sfx_volume = clamp(global.sfx_volume + vol_step, 0, 1);
	}

	// Mouse interatividade
	var mx = device_mouse_x_to_gui(0);
	var my = device_mouse_y_to_gui(0);

	// Parâmetros dos sliders
	var gui_w = display_get_gui_width();
	var gui_h = display_get_gui_height();
	var base_y = gui_h / 2 - 100;
	var slider_x = gui_w / 2 + 50;
	var slider_width = 150;
	var slider_height = 16;
	
	for (var i = 0; i < option_count; i++) {
    var text_x = gui_w / 2 - 150;
    var text_y = base_y + i * 40;
    var option_text = "";
	if (i == 0) option_text = "Music Volume";
	else if (i == 1) option_text = "SFX Volume";
	else option_text = "Back";

	var text_w = string_width(option_text);
    var text_h = 32;

    if (mx > text_x && mx < text_x + text_w &&
        my > text_y && my < text_y + text_h) {
        option = i;
    }
}

	for (var i = 0; i < 2; i++) {
	    var slider_y = base_y + i * 40;

	    if (my > slider_y && my < slider_y + slider_height &&
	        mx > slider_x && mx < slider_x + slider_width &&
	        mouse_check_button(mb_left)) {
        
	        var percent = (mx - slider_x) / slider_width;
	        percent = clamp(percent, 0, 1);

	        if (i == 0) global.music_volume = percent;
	        else if (i == 1) global.sfx_volume = percent;
	    }
	}

	// Detectar clique no botão "Back"
	var back_x = gui_w / 2 - 150;
	var back_y = base_y + 2 * 40;
	var back_w = string_width("Back");
	var back_h = 32;

	if ((keyboard_check_pressed(vk_enter) && option == 2) ||
	    (mx > back_x && mx < back_x + back_w &&
	     my > back_y && my < back_y + back_h &&
	     mouse_check_button_pressed(mb_left))) {
    
	    instance_create_layer(0, 0, "HUD", obj_Options_Menu);
	    instance_destroy();
	}
}

else
{
	instance_destroy();
}
