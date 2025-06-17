// Posições e tamanhos da barra
var barra_x = 50;  // Posição X (distância da borda esquerda da tela)
var barra_y = display_get_height() - 40;  // Posição Y (na parte inferior da tela)
var largura_barra = display_get_width() - 100;  // Largura da barra
var altura_barra = 20;  // Altura da barra

// Verifica se as variáveis de vida estão corretamente definidas
if (obj_boss.vida_max > 0) {
    var vida_percent = obj_boss.vida / obj_boss.vida_max;  // Porcentagem de vida restante
    var largura_vida = largura_barra * vida_percent;

    // Cor de fundo (parte vazia da barra)
    draw_set_color(c_black);  
    draw_rectangle(barra_x, barra_y, barra_x + largura_barra, barra_y + altura_barra, false);

    // Cor da vida (parte cheia da barra)
    draw_set_color(c_red);  // Cor da vida (vermelho)
    draw_rectangle(barra_x, barra_y, barra_x + largura_vida, barra_y + altura_barra, false);

    // Texto de vida (opcional, para mostrar números)
    draw_set_color(c_white);
    var texto_vida = string(obj_boss.vida) + " / " + string(obj_boss.vida_max);
    draw_text(barra_x + largura_barra / 2 - string_width(texto_vida) / 2, barra_y + altura_barra / 2 - string_height(texto_vida) / 2, texto_vida);
}
