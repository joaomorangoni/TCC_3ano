
if (adr > 0) {
    // Se não está atacando nem apanhando, aumenta tempo parado
    if (!ataque && !dano) {
        tempo_adr += 1;
    } 
	else 
	{
        tempo_adr = 0; // reseta o tempo
    }

    // 60 frames = 1s
    if (tempo_adr > 180) 
	{
        scr_esvaziar_adrenalina(self);
    }
}

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
		estado = estado_player.dano;
	}

	if (inv_timer > 0)
	{
			inv_timer--;
			if (inv_timer mod 8 < 4) {
				  image_alpha = 1; 
			} 
			else {
				  image_alpha = 0.4;
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
		image_speed = 1;
		show_debug_message("image_index: " + string(image_index));
	}
	
	if (ataque) 
	{
			if (!instance_exists(hitbox_atkleve1) && image_index >= 3 && image_index < 5 ) 
		{
			instance_create_layer(x + 25 * image_xscale, y - 5, "Colisores", hitbox_atkleve1);
			show_debug_message("Criando hitbox");
		}
	}
		
	
	//if (mouse_check_button(mb_left) && velh != 0 && !ataque && !dano)
	//{
	//	ataque = true;
	//	sprite_index = Ataque_correndo;
	//	image_xscale = sign(velh);
	//	image_index = 0;
		
	//}
	
	if(vida <= 0) 
	{
		estado = estado_player.morto;
	}
	break;
	
	case(estado_player.dano):
	
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
		
		if (!dano)
		{
			estado = estado_player.livre;
		}
	
	break;
	
	case(estado_player.morto):
	// Caso ele morra.
	sprite_index = Morrendo;
}