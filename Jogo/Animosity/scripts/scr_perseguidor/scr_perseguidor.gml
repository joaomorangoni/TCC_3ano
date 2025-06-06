function scr_perseguidor(){

	var _player = argument0;
	
	if (alerta) 
	{
		if (_player.x > x)
		{
			velh += vel;
			velh = max(velh, 1)
		}
		else if (_player.x < x)
		{
			velh -= vel;
		}
		if (_player.y > y)
		{
			velv += vel;
		}
		else if (_player.x < x)
		{
			velv -= vel;
		}
		velh = clamp(velh, -1.5, 1.5);
		velv = clamp(velv, -1.5, 1.5);
	}
}