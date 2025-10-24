draw_set_alpha(global.transition_alpha);
draw_set_color(c_black);
draw_rectangle(0, 0, room_width, room_height, false);
draw_set_alpha(1);

if (room == Sala_Prol)
{
if(!global.pause)
{
	// ==========================
	// Evento: Draw GUI
	// ==========================

	var instrucoes = [
	    "Andar: WASD",
	    "Pular: Space",
	    "Atacar: K",
	    "Interagir: X",
	    "Dash: Shift"
	];

	var margem = 20;
	var espacamento = 30;
	var cor_texto = c_white;

	draw_set_font(fnt_menu);
	draw_set_color(cor_texto);

	// Aqui usamos o tamanho definido no display_set_gui_size()
	var gui_w = display_get_gui_width();
	var gui_h = display_get_gui_height();

	var x_base = gui_w - margem;
	var y_base = gui_h - margem;

	// Desenha de baixo pra cima, alinhado à direita
	for (var i = array_length(instrucoes) - 1; i >= 0; i--) {
	    var texto = instrucoes[i];
	    var by = y_base - ((array_length(instrucoes) - 1 - i) * espacamento);
	    draw_text(x_base - string_width(texto), by, texto);
	}
}
}