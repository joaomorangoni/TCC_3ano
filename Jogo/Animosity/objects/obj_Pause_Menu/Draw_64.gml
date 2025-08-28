// === FUNDO ESCURO ===
draw_set_font(fnt_menu);
draw_set_color(c_black);
draw_set_alpha(0.7);
draw_rectangle(0, 0, display_get_width(), display_get_height(), false);
draw_set_alpha(1);

// === CONFIGURAÇÕES DE TEXTO ===
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

var center_x = display_get_width() * 0.5;
var start_y = display_get_height() * 0.5 - (array_length(menu_items) * menu_spacing) * 0.5;

for (var i = 0; i < array_length(menu_items); i++) {
    var text = menu_items[i].text;
    var item_y = start_y + i * menu_spacing;

    var text_w = string_width(text);
    var box_w = text_w;
    var box_h = menu_spacing;
    var item_x = center_x - box_w * 0.5;

    var box_left = item_x;
    var box_right = item_x + box_w;
    var box_top = item_y - box_h * 0.5;
    var box_bottom = item_y + box_h * 0.5;

    // Cor do texto (selecionado ou não)
    if (i == selected_index) {
        draw_set_color(menu_color_selected);
    } else {
        draw_set_color(menu_color_default);
    }

    draw_text(center_x, item_y, text);

    // === DEBUG: visualize a hitbox do botão ===
    /*draw_set_alpha(0.25);
    draw_set_color(c_red);
    draw_rectangle(box_left, box_top, box_right, box_bottom, false);
    draw_set_alpha(1);*/
}

