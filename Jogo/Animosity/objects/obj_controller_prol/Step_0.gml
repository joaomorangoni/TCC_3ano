// Controle Portas ------------------------------------------


// Transição ------------------------------------------------
if (global.is_transitioning) {
    // Fade out
    global.transition_alpha += global.transition_speed;
    
    if (global.transition_alpha >= 1) {
        // Quando o fade estiver completo, troca de sala
        room_goto(global.next_room);
        
        // Posiciona o player na próxima sala
        var player = instance_find(Player, 0);
        if (instance_exists(player)) {
            player.x = global.next_x;
            player.y = global.next_y;
        }
        
        // Começa o fade in
        global.transition_alpha = 1;
        global.is_fading_in = true;
        global.is_transitioning = false;
    }
}

// Faz o fade in
if (global.is_fading_in) {
    global.transition_alpha -= global.transition_speed;
    if (global.transition_alpha <= 0) {
        global.transition_alpha = 0;
        global.is_fading_in = false;
    }
}
