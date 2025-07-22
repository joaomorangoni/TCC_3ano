if (inimigos_spawnados < inimigos_totais) {
    var tipo = lista_inimigos[irandom(array_length(lista_inimigos) - 1)];
    var offset_x = random_range(64, 384);
    var offset_y = random_range(270, 275);

    var inimigo = instance_create_layer(x + offset_x, y + offset_y, "Inimigos", tipo);

    // Marcar inimigo como parte dessa sala
    inimigo.from_room = id;

    inimigos_spawnados += 1;
    inimigos_restantes += 1;

    alarm[0] = spawn_interval; // chama o próximo spawn
}
