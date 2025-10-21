function scr_control(){
// Variaveis -------------------------------------------------
	var _chao = place_meeting(x, y + 1, obj_col);
	var	_left = keyboard_check(global.inputs.left);
	var	_right = keyboard_check(global.inputs.right);
	var	_jump = keyboard_check_pressed(global.inputs.jump);
	var	_dash = keyboard_check_pressed(global.inputs.dashin);
	var	_atk_1 = keyboard_check_pressed(global.inputs.atk_leve);
	var _crouch = keyboard_check(global.inputs.crouch);
	
// Controles -------------------------------------------------
	if (_chao) {
		
		if (!agachado)
		{
			if (_jump)
			{
				velv = -vel_jump;
			}
		}
		if (_crouch)
		{
			agachado = true;
			velh = 0;
		}
		else
		{
			agachado = false;
		}
	}
	else
	{
		agachado = false;
	}
	
	if (!agachado)
	{
		velh = (_right - _left) * vel;
	}
	
	if (attack) // Chamar hitbox
	{
		scr_attack(sword_1);
	}
	
	if (_dash && cd_dash == 0)
	{
		cd_dash = 45;
		attack = false;
		estado = estado_player.dash;
		image_index = 1;
	}
	
// Mudanças de sprite --------------------------------------
	if (!attack)
	{
		if (_chao)
		{
			if (velh != 0)
			{
				sprite_index = spr_run;
			}
			else
			{
				sprite_index = spr_idle
			}
		}
		else
		{
			if (velv > 0)
			{
				agachado = false;
				sprite_index = spr_fall;
			}
			else if (velv < 0)
			{
				sprite_index = spr_jump;
			}
		}
		if (!agachado)
		{
			if ( _atk_1 && velh == 0) // Ataque parado
			{
				attack = true;
				sprite_index = spr_base_atk;
				image_speed = 1;
		
			}
	
			if (_atk_1 && velh != 0) // Ataque correndo
			{
				attack = true;
				sprite_index = spr_run_atk;
				image_xscale = sign(velh);
				image_index = 0;
				image_speed = 1;
			}
		}
		if (agachado)
		{
			sprite_index = spr_crouch;
		}
	}
}