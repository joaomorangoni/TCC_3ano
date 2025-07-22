if (sprite_index == spr_base_atk || sprite_index = spr_run_atk)
{
	attack = false;
}

if (sprite_index == spr_dash)
{
	estado = estado_player.livre;
}

if (sprite_index == spr_die)
{
	image_index = 5;
	image_speed = 0;
	image_alpha -= 0.2;
}