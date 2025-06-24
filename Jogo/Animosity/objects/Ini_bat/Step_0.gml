if (estado == estado_inimigos.livre)
{
	if (timer_decisao <= 0)
	{
		timer_decisao = 120;
		velh = choose(vel,-vel);
	}
	else
	{
		timer_decisao--
	}
}
