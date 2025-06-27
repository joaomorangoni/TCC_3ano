menu_items = [
    { text: "Retomar", action: function() {
        global.pause = false;
    }},
    { text: "Inventário", action: function() {
        //instance_create_layer(0, 0, "HUD", obj_inventory_menu);
    }},
    { text: "Opções", action: function() {
        instance_create_layer(0, 0, "HUD", obj_Options_Menu);
		instance_destroy(obj_Pause_Menu);
    }},
    { text: "Sair", action: function() {
        room_goto(Sala_Menu);
    }}
];

selected_index = 0;
menu_spacing = 40;
menu_font = fnt_arial;
menu_color_default = c_white;
menu_color_selected = c_yellow;
