function scr_esvaziar_adrenalina(){
	
	var entidade = argument0;

if (entidade.adr > 0)
{
    // Diminui a adrenalina aos poucos
    entidade.adr -= 0.25;

    // Garante que nunca vai abaixo de 0
    entidade.adr = max(entidade.adr, 0);
}
}