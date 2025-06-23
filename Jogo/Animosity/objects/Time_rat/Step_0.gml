event_inherited()
var _col = instance_place(x + velh, y, obj_chao);

if (estado == estado_boss.livre)
{
	
	var camm = view_camera[0];
	var ini_x = camera_get_view_x(camm);
	var ini_y = camera_get_view_y(camm);
	
	camera_set_view_pos(camm, ini_x, ini_y);
	
	sprite_index = spr_idle_tr;
	
	if (timer_decisao <= 0)
	{
		estado = choose(estado_boss.rugido, estado_boss.ataque_1, estado_boss.ataque_2);
		//estado = estado_boss.ataque_3; //Teste de desenvolvedor
		timer_decisao = 120;
	}
	else
	{
		timer_decisao -= 1;
	}
}

if (estado == estado_boss.rugido)
{
	sprite_index = spr_scream_tr;
	scr_screen_shake_static(2 , 5)
	if (timer_decisao <= 0)
	{
		estado = choose(estado_boss.livre, estado_boss.ataque_1, estado_boss.ataque_2);
		timer_decisao = 180;
	}
	else
	{
		timer_decisao -= 1;
	}
}

if (estado == estado_boss.ataque_1)
{
	sprite_index = spr_run_tr;
	image_xscale = sign(-velh);
	if (velh == 0)
	{
		velh = choose(vel, -vel);
	}
	
	if (_col) 
	{
		velh *= -1;
	}
	
	if (timer_decisao <= 0)
	{
		estado =  estado_boss.livre;
		timer_decisao = 200;
	}
	else
	{
		timer_decisao -= 1;
	}
}

if (estado == estado_boss.ataque_2)
{
	if (velh != 0)
	{
		sprite_index = spr_run_tr;
		image_xscale = sign(-velh);
	}
	if (!ts && !atk)
	{
		atk = true;
		ts = true;
		scr_clock();
	}
	else if (instance_exists(Time_Lapse))
	{
		image_alpha -= 0.05;
	}
	
	if (image_alpha <= 0)
	{
		if (ts)
		{
			ts = false;
			x = choose(795, 1212);
		}
	}
	if (x == 795 || x == 1212)
	{
		image_alpha += 0.05;
		ts = true;
	}
	
	if (image_alpha >= 1 && x == 795 && atk)
	{
		velh = vel
	}
	if (image_alpha >= 1 && x == 1212 && atk)
	{
		velh = -vel
	}
	if (_col)
	{
	    if(ts == true)
		{
			image_xscale *= -1
		}
		estado = estado_boss.livre;
		timer_decisao = 120;
		ts = false;
		atk = false;
	}
}

if (estado == estado_boss.ataque_3)
{
	
}

if (estado == estado_boss.morto)
{
	sprite_index = spr_die_tr;
}