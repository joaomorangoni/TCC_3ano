draw_set_font(fnt_menu);
draw_set_halign(fa_left);
draw_set_valign(fa_middle);
draw_set_color(c_white);

// Desenhar logo (mais à esquerda agora)
var logo_x = 50; // margem esquerda
draw_sprite_ext(spr_nome, floor(logo_frame), logo_x, 30, 2, 2, 0, c_white, 1);

// Desenhar fogueira animada no canto inferior direito
var fog_margin = 30;
var fog_x = display_get_width() - sprite_get_width(spr_fogueira) - fog_margin;
var fog_y = display_get_height() - sprite_get_height(spr_fogueira) - fog_margin;
draw_sprite(spr_fogueira, floor(current_time div 100) mod sprite_get_number(spr_fogueira), fog_x, fog_y);

// Desenhar os botões
if (!instance_exists(obj_Options_Menu)) {
    for (var i = 0; i < array_length(menu_items); i++) {
        var item = menu_items[i];
        var bx = start_x;
        var by = start_y + i * (menu_item_height + menu_spacing);
        var bw = menu_width;
        var bh = menu_item_height;

        var is_hovered = point_in_rectangle(mouse_x, mouse_y, bx, by, bx + bw, by + bh);
        var is_selected = (i == selected);

        if (is_hovered || is_selected) {
            draw_set_color(c_white);
            draw_rectangle(bx, by, bx + bw, by + bh, true); // quadrado oco
        }

        draw_set_color(c_white);
        draw_text(bx + 20, by + bh/2, item.text);
    }
}

// Info de desenvolvedor
draw_set_color(c_white);
draw_text(8, display_get_height() - 80, "Nota de desenvolvedor: [G] [H]");
draw_text(8, display_get_height() - 35, "v0.1.0");
