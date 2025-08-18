if (room == salav.v1) // ------------------------------------------
{
	var combat1 = instance_find(obj_sala_combate, 0)
	var combat2 = instance_find(obj_sala_combate, 1)
	var combat3 = instance_find(obj_sala_combate, 2)
// Area de combate de cima ---------------------------------------
	if (instance_exists(combat1))
	{
		combat1.lista_inimigos = global.enemies_neutral;
		combat1.y1 = 220;
		combat1.y2 = 180;
	}
// Meio ----------------------------------------------------------
	if (instance_exists(combat2))
	{
		combat2.lista_inimigos = global.enemies_neutral;
		combat2.y1 = 215;
		combat2.y2 = 200;
	}
// Baixo --------------------------------------------------------
	if (instance_exists(combat3))
	{
		combat3.lista_inimigos = global.enemies_neutral;
	}
}
/*
if (room == salav.v2) // ------------------------------------------
{
	
}
if (room == salav.v3) // ------------------------------------------
{
	
}*/