event_inherited()
var _chao = place_meeting(x, y + 1, obj_col)

if (global.pause) {
	image_speed = 0;
	exit;
}
else
{ 
	image_speed = 1;
}


if (estado == estado_inimigos.livre)
{
	timer_decisao_andar--
	
	if (_chao)
	{
		if (timer_decisao_andar <= 0)
		{
			velh = choose(vel, -vel)
			timer_decisao_andar = 90;
			image_xscale = sign(velh);
		}
		if (place_meeting(x + velh, y, obj_chao) || !place_meeting(x + velh * 5, y + 1, obj_chao))
		{
			velh *= -1;
			image_xscale = sign(velh);
		}
		if (sprite_index != rato_andando)
		{
			sprite_index = rato_andando
		}
	}
	else
	{
		if (velv > 0)
		{
			sprite_index = rato_caindo;
		}
		
		velv += grav;
		
		velh = 0;
	}
}
if (estado == estado_inimigos.dano)
{
	if (sprite_index != rato_sofrendodano)
		    {
		        sprite_index = rato_sofrendodano;
		        image_index = 0;
		    }
		velh = vel/2;
		velv = 0;
}

if (estado == estado_inimigos.morto)
{
	sprite_index = rato_morto;
}