if (global.menu) {
    // Pega as dimensões da GUI atual
    var gui_w = display_get_gui_width();
    var gui_h = display_get_gui_height();

    // Desenha o fundo do menu (preto semitransparente)
    draw_set_alpha(0.5);
    draw_set_color(c_black);
    draw_rectangle(0, 0, gui_w, gui_h, false);

    // Desenha o título centralizado
    draw_set_alpha(1);
    draw_set_color(c_white);
    var title = "AUDIO";
    var title_width = string_width(title);
    var title_x = (gui_w - title_width) / 2;
    draw_text(title_x, gui_h / 2 - 150, title);

    // Desenha as opções do menu centralizadas
    for (var i = 0; i < option_count; i++) {
        if (i == option) {
            draw_set_color(c_yellow); // Cor para a opção selecionada
        } else {
            draw_set_color(c_white); // Cor para as outras opções
        }

        var option_text = "";
        var option_x = (gui_w - 200) / 2;  // Ajustando a posição das opções
        var option_y = gui_h / 2 - 100 + (i * 60);  // Distância aumentada para espaçamento

        switch(i) {
            case 0: option_text = "Music: " + string(round(global.music_volume * 100)) + "%"; break;
            case 1: option_text = "Sound Effects: " + string(round(global.sfx_volume * 100)) + "%"; break;
            case 2: option_text = "Back"; break;
        }

        // Desenha o texto da opção
        draw_text(option_x, option_y, option_text);

        // Posição das barras
        var bar_width = 200;
        var bar_height = 20;
        var bar_x = option_x + 220; // Ajustando a posição da barra (põe a barra após o texto)
        var bar_y = option_y + 10;

        // Desenha a barra de fundo (fica atrás)
        draw_set_color(c_white);
        draw_rectangle(bar_x, bar_y, bar_x + bar_width, bar_y + bar_height, false);

        // Agora, desenha a barra de volume (fica sobre a barra de fundo)
        if (i == 0) { // Música
            draw_set_color(c_yellow);
            draw_rectangle(bar_x, bar_y, bar_x + bar_width * global.music_volume, bar_y + bar_height, false);  // Barra de volume (musica)

            // Controle do volume com o mouse
            if (mouse_check_button(mb_left)) {
                if (device_mouse_x_to_gui(0) > bar_x && device_mouse_x_to_gui(0) < bar_x + bar_width &&
                    device_mouse_y_to_gui(0) > bar_y && device_mouse_y_to_gui(0) < bar_y + bar_height) {
                    global.music_volume = (device_mouse_x_to_gui(0) - bar_x) / bar_width;
                    global.music_volume = clamp(global.music_volume, 0, 1);
                }
            }
        }

        // Controla a barra de volume dos efeitos sonoros
        if (i == 1) { // Efeitos sonoros
            draw_set_color(c_yellow);
            draw_rectangle(bar_x, bar_y + 30, bar_x + bar_width * global.sfx_volume, bar_y + 30 + bar_height, false);  // Barra de volume (SFX)

            // Controle do volume com o mouse
            if (mouse_check_button(mb_left)) {
                if (device_mouse_x_to_gui(0) > bar_x && device_mouse_x_to_gui(0) < bar_x + bar_width &&
                    device_mouse_y_to_gui(0) > bar_y + 30 && device_mouse_y_to_gui(0) < bar_y + 30 + bar_height) {
                    global.sfx_volume = (device_mouse_x_to_gui(0) - bar_x) / bar_width;
                    global.sfx_volume = clamp(global.sfx_volume, 0, 1);
                }
            }
        }
    }
}
