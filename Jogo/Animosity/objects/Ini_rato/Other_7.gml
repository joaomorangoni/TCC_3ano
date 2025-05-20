if (sprite_index == rato_sofrendodano) 
{ 
	dano = false;
	estado = estado_inimigos.livre;
}

if (sprite_index == rato_morto)
{
	instance_destroy();
}