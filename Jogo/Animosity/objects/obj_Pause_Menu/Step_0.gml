if(global.pause)
{
	// === CONTROLE POR TECLADO ===
	var moved = false;

	if (keyboard_check_pressed(vk_down)) {
	    selected_index = (selected_index + 1) mod array_length(menu_items);
	    moved = true;
	}

	if (keyboard_check_pressed(vk_up)) {
	    selected_index = (selected_index - 1 + array_length(menu_items)) mod array_length(menu_items);
	    moved = true;
	}

	if (keyboard_check_pressed(vk_enter)) {
	    var opt = menu_items[selected_index];
	    opt.action();
	}

	// === CONTROLE POR MOUSE ===
	if (!moved) {
	    var mx = display_mouse_get_x();
	    var my = display_mouse_get_y();

	    var center_x = display_get_width() * 0.5;
	    var start_y = display_get_height() * 0.5 - (array_length(menu_items) * menu_spacing) * 0.5;

	    for (var i = 0; i < array_length(menu_items); i++) {
	        var text = menu_items[i].text;
	        var text_w = string_width(text);
	        var item_y = start_y + i * menu_spacing;

	        var box_w = text_w;
	        var box_h = menu_spacing;

	        var item_x = center_x - box_w * 0.5;

	        var box_left = item_x;
	        var box_right = item_x + box_w;
	        var box_top = item_y - box_h * 0.5;
	        var box_bottom = item_y + box_h * 0.5;

	        // Verifica se o mouse está sobre o botão
	        if (mx >= box_left && mx <= box_right && my >= box_top && my <= box_bottom) {
	            selected_index = i;

	            if (mouse_check_button_pressed(mb_left)) {
	                menu_items[i].action();
	            }
	        }
	    }
	}
}
else
{
	instance_destroy();
}