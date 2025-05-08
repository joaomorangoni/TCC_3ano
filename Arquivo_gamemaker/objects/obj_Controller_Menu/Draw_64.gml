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
    var title = "CONTROLLER";
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
            case 0: option_text = "Left: "; break;
            case 1: option_text = "Right: "; break;
			case 2: option_text = "Down: "; break;
            case 3: option_text = "Jump: "; break;
			case 4: option_text = "Interact: "; break;
			case 5: option_text = "Dash: "; break;
			case 6: option_text = "Basic Attack: "; break;
			case 7: option_text = "Heavy Attack: "; break;
			case 8: option_text = "Hab 1: "; break;
			case 9: option_text = "Hab 2: "; break;
			case 10: option_text = "Special: "; break;
			case 11: option_text = "Back"; break;
        }

        var option_width = string_width(option_text);
        var option_x = (gui_w - option_width) / 2;
        var option_y = gui_h / 2 - 100 + (i * 40);
        draw_text(option_x, option_y, option_text);
    }
}