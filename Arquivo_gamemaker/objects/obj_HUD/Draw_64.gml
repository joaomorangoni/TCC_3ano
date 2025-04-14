var player = instance_find(Player, 0);

if (player != noone) {
    var vida = player.vida;
    var vida_max = player.vida_max;
    var coracoes = ceil(vida_max); // número total de corações

    var x_base = 32;
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
}