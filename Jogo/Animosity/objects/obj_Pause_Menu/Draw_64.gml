// Fundo escurecido (simulação de blur)
draw_set_color(c_black);
draw_set_alpha(0.7);
draw_rectangle(0, 0, display_get_width(), display_get_height(), false);
draw_set_alpha(1);

// Desenhar menu
draw_set_font(menu_font);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

var center_x = display_get_width() * 0.5;
var start_y = display_get_height() * 0.5 - (array_length(menu_items) * menu_spacing) * 0.5;

for (var i = 0; i < array_length(menu_items); i++) {
    var text = menu_items[i].text;
    var item_y = start_y + i * menu_spacing;

    if (i == selected_index) {
        draw_set_color(menu_color_selected);
    } else {
        draw_set_color(menu_color_default);
    }

    draw_text(center_x, item_y, text);
}
