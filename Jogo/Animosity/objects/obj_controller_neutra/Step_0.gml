if (show_level_name) {
    switch (level_state) {
        case 0: // Fade in
            alpha += fade_speed;
            if (alpha >= 1) {
                alpha = 1;
                level_state = 1;
                level_timer = visible_time;
            }
            break;

        case 1: // Visível
            level_timer -= 1;
            if (level_timer <= 0) {
                level_state = 2;
            }
            break;

        case 2: // Fade out
            alpha -= fade_speed;
            if (alpha <= 0) {
                alpha = 0;
                level_state = 3;
                show_level_name = false; // Desativa completamente
            }
            break;
    }
}

if (room == salav.v1) // ------------------------------------------
{
	var portal1 = instance_find(obj_portal, 1)
	var combat1 = instance_find(obj_sala_combate, 0)
	var combat2 = instance_find(obj_sala_combate, 1)
	var combat3 = instance_find(obj_sala_combate, 2)
// portal para a ansiedade
	if (instance_exists(portal1))
	{
		if (keyboard_check(ord("Q")))
		{
			portal1.visible = false;
		}
	}
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