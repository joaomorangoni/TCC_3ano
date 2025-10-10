if (!instance_exists(obj_breath)) {
	if (dialogue_active) {
	    var node = dialogue_tree[current_node];

	    // Caixa do diálogo no topo
	    var box_x1 = 50;
	    var box_y1 = 20;
	    var box_x2 = display_get_gui_width() - 50;
	    var box_y2 = 180;
	    var margin = 40; // margem interna maior

	    // Fundo e borda
		draw_set_font(fnt_menu);
	    draw_set_color(c_white);
	    draw_rectangle(box_x1, box_y1, box_x2, box_y2, false); // borda
	    draw_set_color(c_black);
	    draw_rectangle(box_x1+2, box_y1+2, box_x2-2, box_y2-2, false);

	    // Texto principal (com quebra automática)
	    var text = node.speaker + " " + node.text;
	    var max_width = (box_x2 - box_x1) - (margin * 2);
	    draw_set_color(c_white);
	    draw_text_ext(box_x1 + margin + 600, box_y1 + margin, text, -1, max_width);

	    // Desenhar opções abaixo da caixa
	    var yy = box_y2 + margin;
	    option_hover = -1;

	    for (var i = 0; i < array_length(node.options); i++) {
	        var opt_text = string(i+1) + ") " + node.options[i].text;

	        var opt_x1 = box_x1 + margin + 500;
	        var opt_y1 = yy;
	        var opt_x2 = box_x2 - margin;
	        var opt_y2 = yy + 30;

	        // Hover do mouse
	        if (point_in_rectangle(mouse_x, mouse_y, opt_x1, opt_y1, opt_x2, opt_y2)) {
	            draw_set_color(c_lime);
	            option_hover = i;
	        } else {
	            draw_set_color(c_white);
	        }

	        // Opções também com quebra automática
	        var opt_max_width = (box_x2 - box_x1) - (margin * 2);
	        draw_text_ext(opt_x1, opt_y1 + 5, opt_text, -1, opt_max_width);

	        yy += 40;
	    }

	    // Dica para finalizar diálogo quando não há opções
	    if (array_length(node.options) == 0) {
	        draw_set_color(c_gray);
	        draw_text(box_x1 + margin + 500, box_y2 + margin, "(Pressione ESPAÇO para sair)");
	    }
	}
}
