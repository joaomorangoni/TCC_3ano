// Sprite animado
logo_frame = 0;

// Botões
menu_items = [
    {text: "Play", action: function() { room_goto(Sala_Prol); global.menu = false;}},
    {text: "Options", action: function() { instance_create_layer(0, 0, "HUD", obj_Options_Menu); }},
    {text: "Achievements", action: function() { room_goto(Sala_Conquistas); }},
    {text: "Leave", action: function() { game_end(); }}
];

selected = 0;
spacing = 70;
start_y = 200;
start_x = 80;

global.menu = true;
global.music_volume = 0.5;
global.sfx_volume = 0.5;
