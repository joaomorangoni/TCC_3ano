var player = instance_find(Player, 0);

if (player != noone) {
    // ----------- VIDA -----------
    var vida = player.vida;
    var vida_max = player.vida_max;
    var coracoes = ceil(vida_max); // número total de corações

    var x_base = 20;
    var y_base = 32;
    var espacamento = 40; // espaço entre corações

    for (var i = 0; i < coracoes; i++) {
        var x_pos = x_base + i * espacamento;

        if (vida >= i + 1) {
            draw_sprite(cheio, 0, x_pos, y_base);
        }
        else if (vida > i) {
            draw_sprite(meio, 0, x_pos, y_base);
        }
        else {
            draw_sprite(vazio, 0, x_pos, y_base);
        }
    }

    // ----------- ADRENALINA -----------
    var adr = player.adr;
    var adr_max = player.adr_max;

    var barra_largura = 200;
    var barra_altura = 15;
    var barra_x = 32;
    var barra_y = y_base + 55; // fica abaixo dos corações

    var proporcao = adr / adr_max;
    var largura_preenchida = barra_largura * proporcao;

    // Fundo da barra
    draw_set_color(c_black);
    draw_rectangle(barra_x, barra_y, barra_x + barra_largura, barra_y + barra_altura, false);

    // Preenchimento da barra (cor da adrenalina)
    draw_set_color(make_color_rgb(255, 100, 0)); 
    draw_rectangle(barra_x, barra_y, barra_x + largura_preenchida, barra_y + barra_altura, false);

    // Contorno
    draw_set_color(c_white);
    draw_rectangle(barra_x, barra_y, barra_x + barra_largura, barra_y + barra_altura, true);
}