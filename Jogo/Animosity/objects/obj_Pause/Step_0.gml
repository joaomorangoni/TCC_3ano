if (keyboard_check_pressed(vk_escape)) {
	if (!global.pause) {
		global.pause = true;
		global.menu = true;
		instance_create_layer(x , y, "HUD", obj_Pause_Menu);
	}
	else {
		global.pause = false;
		global.menu = false;
	}
}


