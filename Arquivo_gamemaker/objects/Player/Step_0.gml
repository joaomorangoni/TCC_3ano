// Controles

var _chao = place_meeting(x, y + 1, chao)


var _left, _right, _jump;
_left = keyboard_check(inputs.left);
_right = keyboard_check(inputs.right);
_jump = keyboard_check_pressed(inputs.jump);

//Perder os comandos por um tempo ao sofrer dano

if (timer_dano <= 0)
{
	velh = (_right - _left) * vel;
}

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

//sistema de dano

var _inimigo = instance_place(x, y, obj_inimigos);

if (dano) 
{
	if (timer_dano > 0)
	{
		timer_dano--;
	}
	sprite_index = Hit;
}

if (_inimigo)
{
	timer_dano = tempo_dano;
	if (_inimigo.morto == false)
	{
	dano = true;
	}
}
