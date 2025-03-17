// Controles

var _chao = place_meeting(x, y + 2, chao_1)


var _left, _right, _jump;
_left = keyboard_check(inputs.left);
_right = keyboard_check(inputs.right);
_jump = keyboard_check_pressed(inputs.jump);

velh = (_right - _left) * vel;

// Salto
if (_chao) {
	if (_jump)
	{
		velv = -vel_jump;
	}
	
	// se está no chão e se movendo
	if (velh != 0)
	{
		sprite_index = Correndo;
		image_xscale = sign(velh);
	}
	else
	{
		sprite_index = Parado;
	}
	
}
else
{
	// Gravidade
  if (velv < 0)
  {
	 sprite_index = Salto_Lateral;
  }
  else
  {
	sprite_index = Caindo_Lateral;
  }
	
	velv += grav;
}