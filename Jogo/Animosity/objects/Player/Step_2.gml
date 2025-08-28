// Colisão - Horizontal
var _colx = instance_place(x + velh, y, obj_col); //Verifica a colisão
var prior = instance_place(x + velh, y, obj_chao);

if (_colx && _colx.tangivel || prior) {
	
	// Checando se está indo para direita
	if (velh > 0)
	{ 
	 // Ajustando pixel
		 x = _colx.bbox_left + (x - bbox_right);
		 
		 
	}
	
	// Checando esquerda
	if (velh < 0) 
	{
		x = _colx.bbox_right + (x - bbox_left);
	}
	
	velh = 0;
}


// Colisão - Vertical
var _colv = instance_place(x, y + velv, obj_col);
var priorv = instance_place(x, y + velv, obj_chao);
if (_colv && _colv.tangivel || priorv) {
	
	// Checando se está indo para baixo
	if (velv > 0)
	{ 
		y = _colv.bbox_top + (y - bbox_bottom);
	}
	
	// Checando cima
	if (velv < 0) 
	{
		y = _colv.bbox_bottom + (y - bbox_top);
	}
	
	velv = 0;
}

if (!global.pause) {
x += velh * global.tempo;
y += velv * global.tempo;
}