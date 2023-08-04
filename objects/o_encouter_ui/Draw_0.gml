draw_reset();
draw_hud();
draw_buttons();
draw_text(50,50, "State :"		+ string(encouter.state));
draw_text(50, 70, "Menu:  "		+ string(encouter.selected_menu));
draw_text(50, 90, "Sub Menu:  " + string(_input.selected_sub_menu));
draw_text(50, 110, "Enemy:  "	+ string(_input.selected_enemy));
