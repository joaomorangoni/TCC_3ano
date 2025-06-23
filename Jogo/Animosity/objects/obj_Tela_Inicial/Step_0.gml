// Atualizar animação (caso necessário)
logo_frame = (logo_frame + 0.2) mod sprite_get_number(spr_nome);

if (!instance_exists(obj_Options_Menu))
{
	// Navegação teclado
	if (keyboard_check_pressed(vk_down)) {
	    selected = (selected + 1) mod array_length(menu_items);
	}

	if (keyboard_check_pressed(vk_up)) {
	    selected = (selected - 1 + array_length(menu_items)) mod array_length(menu_items);
	}

	if (keyboard_check_pressed(vk_enter)) {
	    menu_items[selected].action();
	}


	// Clique com mouse
	for (var i = 0; i < array_length(menu_items); i++) {
	    var my = start_y + i * spacing;
	    if (point_in_rectangle(mouse_x, mouse_y, start_x, my, start_x + 200, my + 40)) {
	        selected = i;
	        if (mouse_check_button_pressed(mb_left)) {
	            menu_items[i].action();
	        }
	    }
	}
}

if (keyboard_check_pressed(ord("G")))
{
	room_goto(Sala_Teste_Boss);
}
