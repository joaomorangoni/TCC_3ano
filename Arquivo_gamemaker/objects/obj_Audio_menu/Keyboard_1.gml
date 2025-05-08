if (global.menu) {
	if (keyboard_check_pressed(vk_up) || keyboard_check_pressed(ord("W"))) {
	    option = (option - 1 + option_count) % option_count; // Aumenta o índice de opção para cima
	}

	if (keyboard_check_pressed(vk_down) || keyboard_check_pressed(ord("S"))) {
	    option = (option + 1) % option_count; // Diminui o índice de opção para baixo
	}
	
	if (option == 0 && (keyboard_check_pressed(vk_right) || keyboard_check_pressed(ord("D")))) {
    global.music_volume = clamp(global.music_volume + 0.05, 0, 1);
	}
	if (option == 0 && (keyboard_check_pressed(vk_left) || keyboard_check_pressed(ord("A")))) {
	    global.music_volume = clamp(global.music_volume - 0.05, 0, 1);
	}
	if (option == 1 && (keyboard_check_pressed(vk_right) || keyboard_check_pressed(ord("D")))) {
	    global.sfx_volume = clamp(global.sfx_volume + 0.05, 0, 1);
	}
	if (option == 1 && (keyboard_check_pressed(vk_left) || keyboard_check_pressed(ord("A")))) {
	    global.sfx_volume = clamp(global.sfx_volume - 0.05, 0, 1);
	}

	// Ação ao selecionar a opção
	if (keyboard_check_pressed(vk_enter)) {
	    switch(option) {
	        case 0: // Musica
	            break;
	        case 1: // Efeitos sonoros
	            break;
			case 2: //voltar
			 instance_create_layer(x , y , "HUD", obj_Options_Menu);
			 instance_destroy()	 
	    }
	}
}
else 
{
	instance_destroy();
}