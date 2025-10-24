event_inherited()

// Define o tamanho fixo da camada GUI (ajuste conforme a resolução base do seu jogo)


// Triggers --------------------------------

control = true;
HUD = true;
estado = estado_player.livre;
attack = false;
dano = false;
iframe = false;
agachado = false;

// Atributos -------------------------------

vida = 8;
vida_max = 8;
adr = 0;
adr_max = 100;
adr_dano = 20;
vel_jump = 9.8;
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

// --- Inicializa as câmeras
cam0 = view_camera[0];
cam1 = view_camera[1];

// --- Dimensões da câmera
w = camera_get_view_width(cam0);
h = camera_get_view_height(cam0);

// --- Offsets de olhar
look_amount_up   = h * 0.01;
look_amount_down = h * 0.65;
smooth = 0.12;

var base_y = y - h;
offsetY = camera_get_view_y(cam0) - base_y - 4;





