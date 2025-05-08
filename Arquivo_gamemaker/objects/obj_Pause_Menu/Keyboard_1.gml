if (global.menu) {
	if (keyboard_check_pressed(vk_up) || keyboard_check_pressed(ord("W"))) {
	    option = (option - 1 + option_count) % option_count; // Aumenta o índice de opção para cima
	}

	if (keyboard_check_pressed(vk_down) || keyboard_check_pressed(ord("S"))) {
	    option = (option + 1) % option_count; // Diminui o índice de opção para baixo
	}

	// Ação ao selecionar a opção
	if (keyboard_check_pressed(vk_enter)) {
	    switch(option) {
	        case 0: // Retomar
				global.pause = false;
				global.menu = false;
				instance_destroy()
	            break; // Fecha o menu de pausa
	        case 1: // Conquistas
	            // Chame a tela de conquistas aqui
	            break;
	        case 2: // Opções
				instance_create_layer(x , y , "HUD", obj_Options_Menu);
				instance_destroy();
	            break;
	        case 3: // Sair
	            // Ação de sair, como voltar ao menu principal ou fechar o jogo
	            game_end(); // Finaliza o jogo
	            break;
	    }
    }
}
else 
{
	instance_destroy();
}