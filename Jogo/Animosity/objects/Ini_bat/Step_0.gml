event_inherited()
var _col = instance_place(x + velh, y, obj_col);

if (global.pause) {
	image_speed = 0;
	exit;
}
else
{ 
	image_speed = 1;
}

scr_alerta(self, Player);

if (estado == estado_inimigos.livre)
{
	if (velh != 0)
	{
		image_xscale = sign(velh);
	}
	if(!alerta)
	{
		velv = 0;
		if (timer_decisao <= 0)
		{
			timer_decisao = 120;
			velh = choose(vel,-vel, 0);
		}
		else
		{
			timer_decisao--;
		}
		if (_col)
		{
			velh *= -1;
		}
	}
	else
	{
		scr_perseguidor(Player);
	}
}
if (estado == estado_inimigos.dano)
{
	if(iframe > 0)
	{
		sprite_index = spr_bat_hit;
		iframe--;
		velh = 0;
		velv = 0;
	}
	else
	{
		sprite_index = spr_bat_idle;
		dano = false;
		estado = estado_inimigos.livre;
	}
}
if (estado == estado_inimigos.morto)
{
	velh = 0;
	velv = 0;
	sprite_index = spr_bat_die;
}