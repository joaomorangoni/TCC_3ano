if (global.menu) {
    // Teclado (navegação)
    if (keyboard_check_pressed(vk_up) || keyboard_check_pressed(ord("W"))) {
        option = (option - 1 + option_count) % option_count; // Aumenta o índice de opção para cima
    }

    if (keyboard_check_pressed(vk_down) || keyboard_check_pressed(ord("S"))) {
        option = (option + 1) % option_count; // Diminui o índice de opção para baixo
    }

    // Controle do volume de Música
    if (option == 0) {
        if (keyboard_check_pressed(vk_right) || keyboard_check_pressed(ord("D"))) {
            global.music_volume = clamp(global.music_volume + 0.05, 0, 1); // Aumenta o volume
        }
        if (keyboard_check_pressed(vk_left) || keyboard_check_pressed(ord("A"))) {
            global.music_volume = clamp(global.music_volume - 0.05, 0, 1); // Diminui o volume
        }
    }

    // Controle do volume de Efeitos Sonoros
    if (option == 1) {
        if (keyboard_check_pressed(vk_right) || keyboard_check_pressed(ord("D"))) {
            global.sfx_volume = clamp(global.sfx_volume + 0.05, 0, 1); // Aumenta o volume
        }
        if (keyboard_check_pressed(vk_left) || keyboard_check_pressed(ord("A"))) {
            global.sfx_volume = clamp(global.sfx_volume - 0.05, 0, 1); // Diminui o volume
        }
    }

    // Ação ao selecionar a opção com teclado
    if (keyboard_check_pressed(vk_enter)) {
        switch(option) {
            case 0: // Musica
                break;
            case 1: // Efeitos sonoros
                break;
            case 2: // Voltar
                instance_create_layer(x, y, "HUD", obj_Options_Menu);
                instance_destroy();
                break;
        }
    }
}
else {
    instance_destroy();
}
