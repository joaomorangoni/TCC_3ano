// Colisão - Horizontal
var _col = instance_place(x + velh, y, chao); //Verifica a colisão


if (_col) {
	
	// Checando se está indo para direita
	if (velh > 0)
	{ 
	 // Ajustando pixel
		 x = _col.bbox_left + (x - bbox_right);
		 
		 
	}
	
	// Checando esquerda
	if (velh < 0) 
	{
		x = _col.bbox_right + (x - bbox_left);
	}
	
	velh = 0;
}


// Colisão - Vertical
var _col = instance_place(x, y + velv, chao);
if (_col) {
	
	// Checando se está indo para baixo
	if (velv > 0)
	{ 
		y = _col.bbox_top + (y - bbox_bottom);
	}
	
	// Checando cima
	if (velv < 0) 
	{
		y = _col.bbox_bottom + (y - bbox_top);
	}
	
	velv = 0;
}

if (!global.pause) {
x += velh;
y += velv;
}