// Desenhar logo no topo esquerdo
draw_sprite_ext(spr_nome, floor(logo_frame), 30, 50, 2, 2, 0, c_white, 1);

// Desenhar botões
for (var i = 0; i < array_length(menu_items); i++) {
    var item = menu_items[i];
    var bx = start_x;
    var by = start_y + i * spacing;
    var bw = 200;
    var bh = 40;
    if (!instance_exists(obj_Options_Menu))
	{
	    var is_hovered = point_in_rectangle(mouse_x, mouse_y, bx, by, bx + bw, by + bh);
	    var is_selected = (i == selected);
    
	    draw_set_color(is_hovered || is_selected ? c_red : c_black);
	    draw_rectangle(bx, by, bx + bw, by + bh, false);
	    draw_set_color(c_white);
	    draw_set_halign(fa_left);
	    draw_set_valign(fa_middle);
	    draw_text(bx + 10, by + bh / 2, item.text);
	}
}

draw_text(8, 730, "v0.1.0");
