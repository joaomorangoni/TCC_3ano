usada = false;
ativa = false;

quantidade_inimigos = 4;
lista_inimigos = global.enemies_tutorial;
inimigos_spawnados = 0;
inimigos_totais = quantidade_inimigos;

// Timer
alarm[0] = -1;
spawn_interval = 150; // frames entre cada spawn (~0.5s)
inimigos_restantes = 0;