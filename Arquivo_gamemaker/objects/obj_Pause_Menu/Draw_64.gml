if (global.menu) {
    var gui_w = display_get_gui_width();
    var gui_h = display_get_gui_height();

    // Fundo preto semitransparente
    draw_set_alpha(0.5);
    draw_set_color(c_black);
    draw_rectangle(0, 0, gui_w, gui_h, false);

    // Título centralizado
    draw_set_alpha(1);
    draw_set_color(c_white);
    var title = "PAUSED";
    var title_width = string_width(title);
    var title_x = (gui_w - title_width) / 2;
    draw_text(title_x, gui_h / 2 - 150, title);

    // Opções do menu
    for (var i = 0; i < option_count; i++) {
        if (i == option) {
            draw_set_color(c_yellow);
        } else {
            draw_set_color(c_white);
        }

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
        draw_text(option_x, option_y, option_text);
    }
}