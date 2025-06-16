event_inherited()
var _col = instance_place(x + velh, y, obj_chao);

if (estado == estado_boss.livre)
{
	if (timer_decisao <= 0)
	{
		estado =  estado_boss.ataque_1;
		timer_decisao = 180;
	}
	else
	{
		timer_decisao -= 1;
	}
}

if (estado == estado_boss.rugido)
{
	//scr_screen_shake_static(2 , 5)
	if (timer_decisao <= 0)
	{
		timer_decisao = 180;
	}
	else
	{
		timer_decisao -= 1;
	}
}

if (estado == estado_boss.ataque_1)
{
	if (velh == 0)
	{
		velh = choose(vel, -vel);
	}
	
	if (_col) 
	{
		velh *= -1;
	}
	
}