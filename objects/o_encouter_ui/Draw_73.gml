if (encouter.state == encouter_state.encouter_dialogue)
 exit;
 
 draw_reset();
 if (encouter.state == encouter_state.in_menu)
 draw_menu();
 
 if (encouter.state == encouter_state.selecting)
 _draw_text();