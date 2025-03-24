var _chao = place_meeting(x, y + 1, chao)

if (_chao) {
	
	//rodar o tempo de decisão
	timer_decisao_andar -= 1;
	
	// Decisão
	
	if (timer_decisao_andar <= 0)
	{
		andar = choose(true, false);
		
		// Escolher a direção
		
		vel = choose(1.8, -1.8);
		
		// Resetar o timer
		
		timer_decisao_andar = room_speed * 2;
		
		
		
	}
	// Checar se está andando
	if (andar) {
		
		velh = vel;
	
	}
	else
	{
		velh = 0;
	}
	
	// Animação
	
	if (velh != 0)
	{
		sprite_index = rato_andando;
		image_xscale = sign(velh);
	}
	else
	{
		sprite_index = rato_parado;
	}
	
}
else
{
	// Gravidade
  if (velv > 0)
  {
	sprite_index = rato_caindo;
  }

	velv += grav;
	
	velh = 0;
}