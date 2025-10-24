var player = instance_place(x, y, Player);
var _int = keyboard_check_pressed(global.inputs.interact);

if(player && _int)
{
	if (!global.is_transitioning) {
			start_transition(target_room, target_x, target_y);
		
	}
}

