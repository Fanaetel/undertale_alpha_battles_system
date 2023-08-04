if (encouter.state == encouter_state.selecting) {
	
 if (input_pressed(WSAD.left)  && selected_button > 0)
    selected_button --; 
   
 if (input_pressed(WSAD.right) && selected_button < 3)
	selected_button ++;
  
  if (input_pressed(WSAD.Z)){
	  
	if (selected_button == encouter_menu.item){
	 if (encouter.player.has_items())
        encouter.select_menu(selected_button);
	}
   else encouter.select_menu(selected_button);
 }  
 exit;     
}

if (encouter.state == encouter_state.in_menu){
	var menu = encouter.selected_menu;
	if (input_pressed(WSAD.X)) {
	encouter.select_menu(menu == encouter_menu.act_actions ? encouter_menu.act : encouter_menu.no);	
	selected_enemy = menu == encouter_menu.act_actions ? 0 : selected_enemy;	
	selected_sub_menu = 0;		
	};
	var _direction = input_pressed(WSAD.down) - input_pressed(WSAD.up);
	if (_direction !=0) {
	var length = 0;
	 switch (menu){
	 case encouter_menu.fight :	
	  case encouter_menu.act :	
		length = array_length(encouter.enemies) - 1;
		selected_sub_menu += _direction;
		selected_sub_menu = selected_sub_menu < 0 ? length : selected_sub_menu; 
		selected_sub_menu = selected_sub_menu > length ? 0   : selected_sub_menu;
		break;
	
	case encouter_menu.act_actions :
	length = array_length(encouter.enemies[selected_enemy].actions) - 1;
	var previous = selected_sub_menu;
	selected_sub_menu += _direction * 2;
	selected_sub_menu = selected_sub_menu < 0 ? previous : selected_sub_menu;
	selected_sub_menu = selected_sub_menu > length ? previous : selected_sub_menu;
	  break;
	  
	case encouter_menu.mercy :
	length = array_length(encouter.mercy_actions) - 1;
	selected_sub_menu += _direction;
	selected_sub_menu = selected_sub_menu < 0 ? length : selected_sub_menu;
	selected_sub_menu = selected_sub_menu > length ? 0 : selected_sub_menu;
	break;
	}	
	}
	_direction = input_pressed(WSAD.right) - input_pressed(WSAD.left);
	if (_direction !=0) {
	var length = 0; 	
		switch (menu) {
		case encouter_menu.item :	
			length = array_length(encouter.player.items) - 1;
			selected_sub_menu += _direction;
			selected_sub_menu = selected_sub_menu < 0 ? length : selected_sub_menu;
			selected_sub_menu = selected_sub_menu > length ? 0 : selected_sub_menu;
			break;	
		case encouter_menu.act_actions :
		length = array_length(encouter.enemies[selected_enemy].actions) -1 ;
		selected_sub_menu += _direction;
		selected_sub_menu = selected_sub_menu < 0 ? 0 : selected_sub_menu;
		selected_sub_menu = selected_sub_menu > length ? length : selected_sub_menu;
		break;
		}		
	}
	if (input_pressed(WSAD.Z)){
	 switch (menu) {	
	  case encouter_menu.fight :	
		encouter.select_menu(encouter_menu.no);
		encouter.set_state(encouter_state.atacking);
		
		instance_create_depth(0,0,0,o_encouter_attack,{
		encouter : encouter,
		selected_enemy : selected_sub_menu,
		});
		break;
		
	 case encouter_menu.act :
	   selected_enemy = selected_sub_menu;
	   encouter.select_menu(encouter_menu.act_actions);
	   break;
	   
	 case encouter_menu.act_actions :
	   encouter.enemies[selected_enemy].actions[selected_sub_menu].invoke(encouter);
	   break;
	   
	 case encouter_menu.item :
	   encouter.player.items[selected_sub_menu].use(encouter);
	   
	   if (!encouter.player.has_items())
	    encouter.select_menu(encouter_menu.no);
	   break;
	   
	   case encouter_menu.mercy :
	   encouter.mercy_actions[selected_sub_menu].invoke(encouter);
	   break;
	 }
		selected_sub_menu = 0;
	}
}