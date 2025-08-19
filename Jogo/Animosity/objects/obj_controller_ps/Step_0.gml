// Nome da area ---------------------------------------------

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

// Controle Portas ------------------------------------------
var porta = instance_find(obj_troca_sala, 0);
var player_p = instance_exists(Player);

if (player_p)
{
	if (porta != noone)
	{
			porta.target_room = Sala_Prol;
			porta.target_x = 2024; 
			porta.target_y = 1120;
	}
}

// Transição ---------------------------
scr_transicao();