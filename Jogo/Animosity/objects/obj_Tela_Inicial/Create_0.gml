// Dados do menu
menu_items = [
    { text: "Play", action: function() { room_goto(Sala_Prol); global.menu = false; } },
    { text: "Options", action: function() { instance_create_layer(0, 0, "HUD", obj_Options_Menu); } },
    { text: "Achievements", action: function() { room_goto(Sala_Conquistas); } },
    { text: "Leave", action: function() { game_end(); } }
];

selected = 0;
menu_width = 300;
menu_item_height = 70;
menu_spacing = 20;

start_x = 80;
start_y = (display_get_height() - ((menu_item_height + menu_spacing) * array_length(menu_items))) div 2;

logo_frame = 0;

global.menu = true;
global.music_volume = 0.5;
global.sfx_volume = 0.5;
