var _player = instance_place(x, y, Player);
var _int = keyboard_check_pressed(global.inputs.interact);

if (_player && _int)
{
	Player.x = posx;
	Player.y = posy;
	room_goto(sala);
}

if (room == Sala_Neutra_v1)
{
	posx = 69;
	posy = 120;
	sala = Sala_ans_v1;
}
else if (room == Sala_ans_v1)
{
	posx = 69;
	posy = 1088;
	sala = Sala_ans_v2;
}
else if (room == Sala_ans_v2)
{
	posx = 69;
	posy = 480;
	sala = Sala_ans_v3;
}
else if (room == Sala_ans_v3)
{
	posx = 90;
	posy = 171;
	sala = Sala_ans_boss;
}
	

