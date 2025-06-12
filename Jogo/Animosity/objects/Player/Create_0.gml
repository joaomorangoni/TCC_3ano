event_inherited()

// Velocidades

velh = 0;
velv = 0;
vel = 3;
grav = 0.4;
vel_jump = 10;

// Dano e tempo stun

dano = false;
ataque = false;
tempo_dano = 30;
timer_dano = 0;
dano_recebido = 0.5;
_morreu = false;

//invencibilidade

inv_tempo = 45;
inv_timer = 0;

// Inputs 

global.inputs = {
	left  : ord("A"),
	right : ord("D"),
	jump  : vk_space,
	dashin  : vk_shift,
	atk_leve : mb_left,
	interact : ord("X")
}

estado = estado_player.livre;

// Atributos

vida = 5;
vida_max = 5;
adr = 0;
adr_max = 100;
adr_dano = 20;
tempo_adr = 0;

// Skills

hbx_leve = hitbox_atkleve1;
dashp = false;
dash_cd = 10;
reset_jump = true;

// Permissões

doublejump = true;





