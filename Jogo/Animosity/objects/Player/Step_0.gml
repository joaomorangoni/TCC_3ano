var _chao = place_meeting(x, y + 1, obj_chao);
var _inimigo = instance_place(x, y, obj_inimigos);

var _left, _right, _jump, _dash, _atk_l, _int;
	_left = keyboard_check(global.inputs.left);
	_right = keyboard_check(global.inputs.right);
	_jump = keyboard_check_pressed(global.inputs.jump);
	_dash = keyboard_check_pressed(global.inputs.dashin);
	_atk_l = mouse_check_button_pressed(global.inputs.atk_leve);
	_int = keyboard_check_pressed(global.inputs.interact);

if (global.pause) // Pausar
{
	image_speed = 0;
	exit;
}
else
{ 
	image_speed = 1;
}

// Função de adrenalina
scr_carregar_adrenalina(self)

switch(estado) {
case(estado_player.livre):

	if (dash_cd >= 0)
	{
		dash_cd--;
	}
	
	if (velh != 0) // Trocar sprite de direção
	{
		image_xscale = sign(velh);
	}
	
	if (timer_dano <= 0) //Perder os comandos por um tempo ao sofrer dano
	{
		velh = (_right - _left) * vel;
	}
	
	if (_dash && dash_cd <= 0) // Dash 
	{
		  dashp = true;
		  ataque = false;
		  velv = 0;
		  image_index = 0;
		  estado = estado_player.dash;
		  dash_cd = 10;
	}
	
	if (_chao) // Sistema de salto e corrida 
	{
		
		if (!reset_jump) 
		{
			reset_jump = true;
		}
		
		if (_jump)
		{
			velv = -vel_jump;
		}
	
		// se está no chão e se movendo
		if (!ataque) 
		{
			if (velh != 0)
			{
				sprite_index = Correndo_def;
			}
			else
			{
					sprite_index = Parado;
			}
		}
	
	}
	else
	{
	if (doublejump && reset_jump && _jump) 
	{
		reset_jump = false;
		velv = -vel_jump;
	}
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
	  // Gravidade
		velv += grav;
	}

	if (dano) // Troca pra estado de dano
	{
		estado = estado_player.dano;
	}

	if (inv_timer > 0) //I-frame após dano
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
	
    if (!_dash && _atk_l && velh == 0 && !ataque && !dano) // Ataque parado
	{
		ataque = true;
		sprite_index = Sequencia_Ataque1;
		image_speed = 1;
		
	}
	
	if (!_dash && _atk_l && velh != 0 && !ataque && !dano) // Ataque correndo
	{
		ataque = true;
		sprite_index = Ataque_correndo;
		image_xscale = sign(velh);
		image_index = 0;
		image_speed = 1;
	}
	
	
	if (ataque) // Chamar hitbox
	{
		criar_hitbox(self , hbx_leve);
	}
	
	if(vida <= 0) // Trocar para estado morto
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