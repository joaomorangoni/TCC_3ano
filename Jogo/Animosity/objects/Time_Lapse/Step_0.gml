timer += 1;

// Aumenta gradualmente o tamanho
if (timer <= effect_duration / 2) {
    image_xscale += 0.02;
    image_yscale += 0.02;
} else {
    // Começa a desaparecer
    image_alpha -= 0.02;
}

// Encerra o efeito
if (timer >= effect_duration) {
    global.tempo = 1; // Restaura o tempo normal
    instance_destroy();      
}
