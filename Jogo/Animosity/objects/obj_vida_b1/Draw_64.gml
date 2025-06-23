var boss = instance_find(Time_rat, 0);

if (boss != noone) {
    var vida = boss.vida;
    var vida_max = boss.vida_max;

    var barra_largura = 700;
    var barra_altura = 20;
    var barra_x = 300;
    var barra_y = 700; 

    var proporcao = vida / vida_max;
    var largura_preenchida = barra_largura * proporcao;

    // Fundo da barra
    draw_set_color(c_black);
    draw_rectangle(barra_x, barra_y, barra_x + barra_largura, barra_y + barra_altura, false);

    // Preenchimento da barra (cor da adrenalina)
    draw_set_color(make_color_rgb(255, 0, 0)); 
    draw_rectangle(barra_x, barra_y, barra_x + largura_preenchida, barra_y + barra_altura, false);

    // Contorno
    draw_set_color(c_white);
    draw_rectangle(barra_x, barra_y, barra_x + barra_largura, barra_y + barra_altura, true);
}