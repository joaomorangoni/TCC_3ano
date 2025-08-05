// Controle Portas ------------------------------------------
var porta = instance_find(obj_troca_sala, 0);
var player_p = instance_exists(Player);

if (player_p)
{
	if (porta != noone)
	{
			porta.target_room = Sala_Prol;
			porta.target_x = 2024; 
			porta.target_y = 1120;
	}
}

// Transição ---------------------------
scr_transicao();