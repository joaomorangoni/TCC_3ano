var _player = instance_place(x, y - 1, Player);
var play = instance_find(Player, 0);
var _jump = keyboard_check_pressed(global.inputs.jump);

if (_player)
{
	if(_player.agachado && _jump)
	{
		tangivel = false;
	}
}
else
{
	if (play.y-1 <= y)
	{
		tangivel = true;
	}
	else
	{
		tangivel = false;
	}
}
