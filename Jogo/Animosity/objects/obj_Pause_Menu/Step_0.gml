if (global.menu) {
    // Recalcular tamanho da GUI no Step
    var gui_w = display_get_gui_width();
    var gui_h = display_get_gui_height();

    // Teclado
    if (keyboard_check_pressed(vk_up) || keyboard_check_pressed(ord("W"))) {
        option = (option - 1 + option_count) mod option_count;
    }

    if (keyboard_check_pressed(vk_down) || keyboard_check_pressed(ord("S"))) {
        option = (option + 1) mod option_count;
    }

    if (keyboard_check_pressed(vk_enter)) {
        switch(option) {
            case 0:
                global.pause = false;
                global.menu = false;
                instance_destroy();
                break;
            case 1:
                // Conquistas
                break;
            case 2:
                instance_create_layer(x, y, "HUD", obj_Options_Menu);
                instance_destroy();
                break;
            case 3:
                game_end();
                break;
        }
    }

    // Mouse (com conversão de coordenadas e GUI corrigido)
    var mx = device_mouse_x_to_gui(0);
    var my = device_mouse_y_to_gui(0);

    for (var i = 0; i < option_count; i++) {
        var option_text = "";
        switch(i) {
            case 0: option_text = "Resume"; break;
            case 1: option_text = "Achievements"; break;
            case 2: option_text = "Options"; break;
            case 3: option_text = "Leave"; break;
        }

        var option_width = string_width(option_text);
        var option_x = (gui_w - option_width) / 2;
        var option_y = gui_h / 2 - 100 + (i * 40);
        var option_height = 32;

        // Atualiza a seleção ao passar o mouse (sempre, não só no primeiro frame)
        if (mx > option_x && mx < option_x + option_width &&
            my > option_y && my < option_y + option_height) {

            option = i;

            if (mouse_check_button_pressed(mb_left)) {
                switch(option) {
                    case 0:
                        global.pause = false;
                        global.menu = false;
                        instance_destroy();
                        break;
                    case 1:
                        // Conquistas
                        break;
                    case 2:
                        instance_create_layer(x, y, "HUD", obj_Options_Menu);
                        instance_destroy();
                        break;
                    case 3:
                        game_end();
                        break;
                }
            }
        }
    }
}
else {
    instance_destroy();
}
