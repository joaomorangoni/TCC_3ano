if (global.menu) {
	var player = instance_find(Player, 0);
	
	if (keyboard_check_pressed(vk_up) || keyboard_check_pressed(ord("W"))) {
	    option = (option - 1 + option_count) % option_count; // Aumenta o índice de opção para cima
	}

	if (keyboard_check_pressed(vk_down) || keyboard_check_pressed(ord("S"))) {
	    option = (option + 1) % option_count; // Diminui o índice de opção para baixo
	}
	
	// Evento Key Pressed (Any Key)
	if (controle_editando != -1) {
    controle_chave[controle_editando] = keyboard_lastkey;
    controle_editando = -1;
	}

	// Ação ao selecionar a opção
	//if (keyboard_check_pressed(vk_enter)) {
	//    switch(option) {
	//        case 0:
	//            break;
	//        case 1: 
	//            break;
	//        case 2: 
	//            break;
	//		case 3:
	//		    break;
	//		case 4: 
	//            break;
	//		case 5: 
	//            break;
	//		case 6: 
	//            break;
	//		case 7: 
	//            break;
	//		case 8: 
	//            break;
	//		case 9: 
	//            break;
	//		case 10: 
	//            break;
	//		case 11: 
	//		instance_create_layer(x , y , "HUD", obj_Options_Menu);
	//		 instance_destroy()
	//            break;
	//    }
	//}
}
else 
{
	instance_destroy();
}