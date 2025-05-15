if (global.menu) { 
    var gui_w = display_get_gui_width();
    var gui_h = display_get_gui_height();

    // Fundo escuro
    draw_set_alpha(0.5);
    draw_set_color(c_black);
    draw_rectangle(0, 0, gui_w, gui_h, false);

    // Título
    draw_set_alpha(1);
    draw_set_color(c_white);
    var title = "AUDIO SETTINGS";
    var title_x = (gui_w - string_width(title)) / 2;
    draw_text(title_x, gui_h / 2 - 150, title);

    // Parâmetros dos elementos
    var base_y = gui_h / 2 - 100;
    var slider_x = gui_w / 2 + 50;
    var slider_width = 150;
    var slider_height = 16;

    // Loop das opções
    for (var i = 0; i < option_count; i++) {
        var label = "";
        if (i == 0) label = "Music Volume";
        else if (i == 1) label = "SFX Volume";
        else if (i == 2) label = "Back";

        var label_x = gui_w / 2 - 150;
        var label_y = base_y + i * 40;

        // Cor da opção selecionada
        if (i == option) draw_set_color(c_yellow);
        else draw_set_color(c_white);

        // Texto da opção
        draw_text(label_x, label_y, label);

        // Desenhar sliders para Music e SFX
        if (i < 2) {
            var value = (i == 0) ? global.music_volume : global.sfx_volume;
            var fill_width = slider_width * value;

            // Fundo do slider
            draw_set_color(c_dkgray);
            draw_rectangle(slider_x, label_y, slider_x + slider_width, label_y + slider_height, false);

            // Preenchimento do volume
            draw_set_color(c_lime);
            draw_rectangle(slider_x, label_y, slider_x + fill_width, label_y + slider_height, false);

            // Texto da porcentagem (%)
            draw_set_color(c_white);
            var percent_str = string_format(value * 100, 0, 0) + "%";
            draw_text(slider_x + slider_width + 10, label_y, percent_str);
        }
    }
}


