if (keyboard_check_pressed(vk_escape)) {
	if (!global.pause) {
		global.pause = true;
	}
	else {
		global.pause = false;
	}
}

