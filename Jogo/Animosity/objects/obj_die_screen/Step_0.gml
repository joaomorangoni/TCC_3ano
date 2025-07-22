
    if (keyboard_check_pressed(vk_up) || keyboard_check_pressed(ord("W"))) {
        option = (option - 1 + option_count) % option_count; // Aumenta o índice de opção para cima
    }

    if (keyboard_check_pressed(vk_down) || keyboard_check_pressed(ord("S"))) {
        option = (option + 1) % option_count; // Diminui o índice de opção para baixo
    }

    // Ação ao selecionar a opção com teclado
    if (keyboard_check_pressed(vk_enter)) {
        switch(option) {
            case 0: // Audio
                room_goto(Sala_Prol);
                break;
            case 1: 
				room_goto(Sala_Menu);
                break;
        }
    }
