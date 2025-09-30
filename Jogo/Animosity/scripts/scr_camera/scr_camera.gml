function scr_camera(){
	// --- Base da câmera (player colado no rodapé)
	var base_x = x - w/2;
	var base_y = y - h;

	// --- Aplica no visor 0
	camera_set_view_pos(cam0, base_x, base_y);

	// --- Controle de olhar
	var targetOffset = 0;

	if (keyboard_check(vk_up)) {
	    targetOffset = -look_amount_up; // sobe 15%
	}
	else if (keyboard_check(vk_down)) {
	    targetOffset = look_amount_down;  // desce 45%
	}

	// --- Suavização
	offsetY = lerp(offsetY, targetOffset, smooth);

	// --- Aplica no visor 1
	var cam1_x = base_x;
	var cam1_y = base_y + offsetY;

	// --- Clamp para não sair da room
	cam1_x = clamp(cam1_x, 0, room_width  - w);
	cam1_y = clamp(cam1_y, 0, room_height - h);

	camera_set_view_pos(cam1, cam1_x, cam1_y);

	// --- Troca de visor visível
	if (keyboard_check(vk_up) || keyboard_check(vk_down)) {
	    view_visible[0] = false;
	    view_visible[1] = true;
	} else {
	    view_visible[0] = true;
	    view_visible[1] = false;
	}
}