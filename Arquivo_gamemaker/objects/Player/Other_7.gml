if (sprite_index == Hit) {
	// Quando terminar a animação de dano, libera o personagem
	dano = false;
	ataque = false; // Garante que o ataque também é cancelado
	}
	
if (sprite_index == Sequencia_Ataque1) {
    ataque = false;
}

if (sprite_index == Ataque_correndo) {
    ataque = false;
}

if (sprite_index == Morrendo) {
	image_speed = 0;
	instance_destroy();
}

if (sprite_index == dash) {
	estado = estado_player.livre;
	grav = 0.4;
}