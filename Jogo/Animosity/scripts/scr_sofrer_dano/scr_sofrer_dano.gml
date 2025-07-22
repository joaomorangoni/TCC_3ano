function scr_sofrer_dano(){
	if (sprite_index != spr_hit)
	{
		 sprite_index = spr_hit;
		 image_index = 0;
		 cd_dano = 30;
		 velh = 0;
		 velv = 0;
	}

	if (cd_dano > 0)
	{
		cd_dano--;
	}
	else
	{
		cd_inv = 45;
		iframe = true;
		dano = false;
	}
		
	if (!dano)
	{
		estado = estado_player.livre;
	}
}