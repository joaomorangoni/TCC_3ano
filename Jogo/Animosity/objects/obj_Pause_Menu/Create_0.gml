menu_items = [
    { text: "Resume", action: function() {
        global.pause = false;
    }},
    { text: "Inventory", action: function() {
        //instance_create_layer(0, 0, "HUD", obj_inventory_menu);
    }},
    { text: "Options", action: function() {
        instance_create_layer(0, 0, "HUD", obj_Options_Menu);
		instance_destroy(obj_Pause_Menu);
    }},
    { text: "Leave", action: function() {
        room_goto(Sala_Menu);
    }}
];

selected_index = 0;
menu_spacing = 40;
menu_color_default = c_white;
menu_color_selected = c_yellow;
