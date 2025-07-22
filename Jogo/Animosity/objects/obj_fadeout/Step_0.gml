if (fading_out) {
    fade_alpha += fade_speed;

    if (fade_alpha >= 1) {
        fade_alpha = 1;
        fading_out = false;

        // Aqui você pode colocar alguma ação, como mudar de room, reiniciar jogo, etc.
        // Por exemplo:
        room_goto(Sala_Porto_Seguro);
    }
}
