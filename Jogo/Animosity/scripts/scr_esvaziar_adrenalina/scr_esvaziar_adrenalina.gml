function scr_esvaziar_adrenalina(){
	
	if (adr > 0)
	{
	    // Diminui a adrenalina aos poucos
	    adr -= 0.25;

	    // Garante que nunca vai abaixo de 0
	    adr = max(adr, 0);
	}
}