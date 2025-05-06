if (global.pause) {
		// Desenha o fundo do menu (tela preta semitransparente)
		draw_set_alpha(0.5);
		draw_set_color(c_black);
		draw_rectangle(0, 0, display_get_width(), display_get_height(), false);

		// Desenha o título centralizado
		draw_set_alpha(1);
		draw_set_color(c_white);
		var title = "Menu de Pausa";
		var title_width = string_width(title);
		var title_x = (display_get_width() - title_width) / 2.85; // Calcula a posição X para centralizar
		draw_text(title_x, display_get_height() / 2 - 250, title);

		// Desenha as opções do menu centralizadas
		for (var i = 0; i < option_count; i++) {
		    if (i == option) {
		        draw_set_color(c_yellow); // Cor para a opção selecionada
		    } else {
		        draw_set_color(c_white); // Cor para as outras opções
		    }
    
		    var option_text = "";
		    switch(i) {
		        case 0:
		            option_text = "Retomar";
		            break;
		        case 1:
		            option_text = "Conquistas";
		            break;
		        case 2:
		            option_text = "Opções";
		            break;
		        case 3:
		            option_text = "Sair";
		            break;
		    }

		    // Calcula a largura do texto da opção
		    var option_width = string_width(option_text);
		    // Calcula a posição X para centralizar cada opção
		    var option_x = (display_get_width() - option_width) / 2.85;
    
		    // Calcula a posição Y com base no número da opção
		    var option_y = display_get_height() / 2 - 200 + (i * 40);
    
		    // Desenha o texto centralizado
		    draw_text(option_x, option_y, option_text);
		}
}