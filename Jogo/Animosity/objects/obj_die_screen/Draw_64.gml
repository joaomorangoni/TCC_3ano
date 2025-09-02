	draw_set_font(fnt_menu)
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
    var title = "GAME OVER";
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
        switch(i) {
            case 0: option_text = "Restart"; break;
            case 1: option_text = "Leave"; break;
        }

        var option_width = string_width(option_text);
        var option_x = (gui_w - option_width) / 2;
        var option_y = gui_h / 2 - 100 + (i * 40);
        var option_height = 32; // Define a altura da opção para facilitar a detecção do mouse

        draw_text(option_x, option_y, option_text);

        // Detecta se o mouse está sobre a opção
        if (device_mouse_x_to_gui(0) > option_x && device_mouse_x_to_gui(0) < option_x + option_width &&
            device_mouse_y_to_gui(0) > option_y && device_mouse_y_to_gui(0) < option_y + option_height) {
            
            option = i; // Atualiza a opção selecionada com o mouse

            // Se o botão esquerdo do mouse for pressionado, executa a ação
            if (mouse_check_button_pressed(mb_left)) {
                switch(option) {
                    case 0: 
                        game_restart();
                        break;
                    case 1: 
                       game_end();
                        break;
				}
			}
		 }
	   }