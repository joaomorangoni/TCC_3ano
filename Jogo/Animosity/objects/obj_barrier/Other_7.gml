if (sprite_index == spr_barrier_m1 && !fechada && ativada)
{
	fechada = true;
	image_speed = 0;
	image_index = 9;
}
if (sprite_index == spr_barrier_m1 && fechada && !ativada)
{
	fechada = false;
	image_speed = 0;
	image_index = 0;
}