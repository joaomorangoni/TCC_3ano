event_inherited()

// Triggers --------------------------------

control = true;
estado = estado_player.livre;
attack = false;
dano = false;
iframe = false;
agachado = false;

// Atributos -------------------------------

vida = 5;
vida_max = 5;
adr = 0;
adr_max = 100;
adr_dano = 20;
vel_jump = 9;
vel = 3.5;

// Cooldowns -------------------------------

cd_dash = 0;
cd_dano = 0;
cd_inv = 0;
cd_adr = 0;

// Position --------------------------------

if (global.spawn_x != 0 || global.spawn_y != 0) {
    x = global.spawn_x;
    y = global.spawn_y;

    // Resetar após usar, para evitar reposicionamentos em loops
    global.spawn_x = 0;
    global.spawn_y = 0;
}

