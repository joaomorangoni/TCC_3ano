function start_transition() {
	if (!global.is_transitioning) {
    global.is_transitioning = true;
    global.transition_alpha = 0;
    global.next_room = argument0;
    global.next_x = argument1;
    global.next_y = argument2;
	}
}