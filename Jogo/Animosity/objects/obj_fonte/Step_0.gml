var player = instance_place(x, y, Player);
var _int = keyboard_check_pressed(global.inputs.interact);

if(player && _int)
{
	player.vida = player.vida_max;
}