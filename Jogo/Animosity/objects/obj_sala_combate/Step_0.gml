var _player = instance_place(x, y, Player);

// Ativação da sala ao entrar
if (_player && !usada) {
    usada = true;
    ativa = true;

    with (obj_barrier) {
        visible = true;
        tangivel = true;
    }

    // Começa o spawn via alarm
    alarm[0] = spawn_interval;
}

// Desativa barreiras se todos inimigos forem mortos
if (ativa && inimigos_restantes <= 0 && inimigos_spawnados == inimigos_totais) {
    ativa = false;

    with (obj_barrier) {
        visible = false;
        tangivel = false;
    }
}
