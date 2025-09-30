if (global.pause) // Pausar
{
	image_speed = 0;
	exit;
}
else
{ 
	image_speed = 1;
}
if (velh != 0)
{
	image_xscale = sign(velh);
}
scr_carregar_adrenalina();
scr_cooldown();

if (keyboard_check(vk_up) || keyboard_check(vk_down)) {
    view_visible[0] = false; // esconde padrão
    view_visible[1] = true;  // mostra a que mexe
} else {
    view_visible[0] = true;  // volta pro padrão
    view_visible[1] = false;
}

// Controles ----------------------------------
if (control && estado == estado_player.livre)
{
	scr_control();
    velv += grav;
	
	if (dano)
	{
		estado = estado_player.dano;
	}
}

// Dash ----------------------------------------
if (estado == estado_player.dash)
{
	scr_dash(self);
	sprite_index = spr_dash;
}

if (estado == estado_player.dano)
{
	scr_sofrer_dano();
}

if (vida <= 0)
{
	estado = estado_player.morto
}

if (estado == estado_player.morto)
{
	sprite_index = spr_die;
	if (image_alpha <= 0)
	{
		instance_create_layer(x, y, "HUD", obj_die_screen);
	}
}

