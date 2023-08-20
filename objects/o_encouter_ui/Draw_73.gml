 switch (encouter.state) {	 
	case encouter_state.encouter_dialogue :
	draw_reset();
		exit;
	break;
	case encouter_state.in_menu : 
		draw_menu();
	 break;
	case encouter_state.selecting :
		_draw_text();
	break;
 }