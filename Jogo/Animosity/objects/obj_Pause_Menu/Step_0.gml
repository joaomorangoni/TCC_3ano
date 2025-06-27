if(global.pause)
{
	// Atualiza seleção por teclado
	if (keyboard_check_pressed(vk_down)) {
	    selected_index = (selected_index + 1) mod array_length(menu_items);
	}

	if (keyboard_check_pressed(vk_up)) {
	    selected_index = (selected_index - 1 + array_length(menu_items)) mod array_length(menu_items);
	}

	if (keyboard_check_pressed(vk_enter)) {
	    var opt = menu_items[selected_index];
	    opt.action();
	}

	// Verifica posição do mouse e clica
	var mx = device_mouse_x(0);
	var my = device_mouse_y(0);

	var center_x = display_get_width() * 0.5;
	var start_y = display_get_height() * 0.5 - (array_length(menu_items) * menu_spacing) * 0.5;

	for (var i = 0; i < array_length(menu_items); i++) {
	    var text = menu_items[i].text;
	    var text_w = string_width(text);
	    var text_h = string_height(text);

	    var item_x = center_x - text_w * 0.5;
	    var item_y = start_y + i * menu_spacing;

	    // Verifica se o mouse está sobre o item
	    if (mx >= item_x && mx <= item_x + text_w && my >= item_y - text_h * 0.5 && my <= item_y + text_h * 0.5) {
	        selected_index = i;

	        if (mouse_check_button_pressed(mb_left)) {
	            menu_items[i].action();
	        }
	    }
	}
}
else
{
	instance_destroy();
}