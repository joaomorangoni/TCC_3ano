// Velocidades

velh = 0;
velv = 0;
vel = 3;
grav = 0.4;
vel_jump = 10;

// Dano e tempo stun

dano = false;
tempo_dano = room_speed * 0.5;
timer_dano = 0;

//invencibilidade

inv_tempo = room_speed * 1.5;
inv_timer = 0;

// Inputs 

inputs = {
	left  : ord("A"),
	right : ord("D"),
	jump  : vk_space

}

estado = estado_player.livre;

// Atributos

ataque = false;



