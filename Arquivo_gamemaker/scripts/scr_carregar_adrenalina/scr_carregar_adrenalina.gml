function scr_carregar_adrenalina(){
	
	var entidade = argument0;
	
	if (entidade.adr > 0) {
    // Se não está atacando nem apanhando, aumenta tempo parado
    if (!entidade.ataque && !entidade.dano) {
        entidade.tempo_adr += 1;
    } 
	else 
	{
        entidade.tempo_adr = 0; // reseta o tempo
    }

    // 60 frames = 1s
    if (entidade.tempo_adr > 180) 
	{
        scr_esvaziar_adrenalina(entidade);
    }
}
}