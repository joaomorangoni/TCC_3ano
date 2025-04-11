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
	show_debug_message(dano);
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
	else
	{
		dano = false;
	}
	sprite_index = Hit;
}


if (_inimigo && inv_timer <= 0)
{
	timer_dano = tempo_dano;
	inv_timer = inv_tempo;
	if (_inimigo.morto == false)
	{
	dano = true;
	velh = 0;
	velv = 0;
	}
}

if (inv_timer > 0)
	{
		inv_timer--;
		if (inv_timer = room_speed * 1)
		{
		   image_alpha = .5;
		}
	}
	else
	{
		image_alpha = 1;
	}