
switch(estado) {
case(estado_player.livre):
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
		if (!ataque) 
		{
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
	
	}
	else
	{
		// Gravidade
	if (!ataque)
	{
	  if (velv < 0)
	  {
		sprite_index = Salto_Lateral;
	  }
	  else
	  {
		sprite_index = Caindo_Lateral;
	  }
	}
	
		velv += grav;
	}

	//sistema de dano

	var _inimigo = instance_place(x, y, obj_inimigos);

	if (dano)
	{
		
	    if (sprite_index != Hit)
	    {
	        sprite_index = Hit;
	        image_index = 0;
	    }

	    if (timer_dano > 0)
	    {
	        timer_dano--;
	    }
	    else
	    {
	        dano = false;
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
		
	if (mouse_check_button(mb_left) && !ataque && !dano)
	{
		ataque = true;
		sprite_index = Sequencia_Ataque1;
		image_index = 0;
		
	}
	
	if(vida <= 0) 
	{
		estado = estado_player.morto;
	}
	break;
	
	case(estado_player.morto):
	// Caso ele morra.
	sprite_index = Morrendo;
}