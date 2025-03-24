var _chao = place_meeting(x, y + 1, chao)

if (_chao) {

	if (velh != 0)
	{
		sprite_index = rato_andando ;
		image_xscale = sign(velh);
	}
	else
	{
		sprite_index = rato_parado;
	}
	
}
else
{
	// Gravidade
  if (velv > 0)
  {
	sprite_index = rato_caindo;
  }

	velv += grav;
}