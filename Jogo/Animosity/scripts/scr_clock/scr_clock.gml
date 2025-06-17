global.tempo = 1;

function scr_clock(){
	if (!instance_exists(Time_Lapse))
	{
		instance_create_layer(x, y, "HUD", Time_Lapse);
	}
}