event_inherited()

if (estado == estado_boss.livre)
{
	if (timer_decisao <= 0)
	{
		estado = choose(estado_boss.rugido, estado_boss.ataque_1);
		timer_decisao = 180;
	}
	else
	{
		timer_decisao -= 1;
	}
}

if (estado == estado_boss.rugido)
{
	scr_screen_shake_static(2 , 5)
	if (timer_decisao <= 0)
	{
		estado = estado_boss.livre;
		timer_decisao = 180;
	}
	else
	{
		timer_decisao -= 1;
	}
}