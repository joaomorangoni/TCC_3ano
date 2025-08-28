// Controle Portas ------------------------------------------
var porta = instance_find(obj_troca_sala, 0);
var player_p = instance_exists(Player);

if(player_p){
	if (porta != noone)
	{
		if(porta.target_room != Sala_Porto_Seguro)
		{
			porta.target_room = Sala_Porto_Seguro;
			porta.target_x = 13; 
			porta.target_y = 320.40;
		}
	}
}

// Transição ------------------------------------------------
scr_transicao();