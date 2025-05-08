var _chao = place_meeting(x, y + 1, chao)


var _left, _right, _jump, _dash, _atk_l;
	_left = keyboard_check(inputs.left);
	_right = keyboard_check(inputs.right);
	_jump = keyboard_check_pressed(inputs.jump);
	_dash = keyboard_check_pressed(inputs.dashin);
	_atk_l = keyboard_check_pressed(inputs.atk_leve);

if (global.pause) {
	image_speed = 0;
	exit;
}
else
{ 
	image_speed = 1;
}

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

	//Perder os comandos por um tempo ao sofrer dano

	if (timer_dano <= 0)
	{
		velh = (_right - _left) * vel;
	}
	
	if (_dash) {
		 if (ataque) 
		 {
		  ataque = false;
		  velv = 0;
		  image_index = 0;
		  estado = estado_player.dash;
		 }
		 else 
		 {
		  velv = 0;
		  image_index = 0;
		  estado = estado_player.dash;
		 }
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
	
    if (!_dash && _atk_l && velh == 0 && !ataque && !dano)
	{
		ataque = true;
		sprite_index = Sequencia_Ataque1;
		image_speed = 1;
		
	}
	
	if (!_dash && _atk_l && velh != 0 && !ataque && !dano)
	{
		ataque = true;
		sprite_index = Ataque_correndo;
		image_xscale = sign(velh);
		image_index = 0;
		image_speed = 1;
	}
	
	
	if (ataque) 
	{
		criar_hitbox(self , hbx_leve);
	}
	
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
				scr_knockback_stun(self, obj_inimigos);
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
	
	case(estado_player.dash):
		
		sprite_index = dash;
		grav = 0;
		velv = 0;
		scr_dash(self);
	
	break;
	
	case(estado_player.morto):
	// Caso ele morra.
	sprite_index = Morrendo;
	
}