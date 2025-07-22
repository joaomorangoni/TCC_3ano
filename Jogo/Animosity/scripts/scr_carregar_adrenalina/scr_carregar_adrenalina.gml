function scr_carregar_adrenalina(){
	
	if (adr > 0) {
    // Se não está atacando nem apanhando, aumenta tempo parado
    if (!attack && !dano) {
        cd_adr += 1;
    } 
	else 
	{
        cd_adr = 0; // reseta o tempo
    }

    // 60 frames = 1s
    if (cd_adr > 180) 
	{
        scr_esvaziar_adrenalina();
    }
}
}