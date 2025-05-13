if (global.menu) {
    // Teclado (navegação)
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
                instance_create_layer(x, y, "HUD", obj_Audio_menu);
                instance_destroy();
                break;
            case 1: // Controllers
                instance_create_layer(x, y, "HUD", obj_Controller_Menu);
                instance_destroy();
                break;
            case 2: // Language
                // Lógica de mudança de idioma
                break;
            case 3: // Back
                instance_create_layer(x, y, "HUD", obj_Pause_Menu);
                instance_destroy();
                break;
        }
    }
}
else {
    instance_destroy();
}
