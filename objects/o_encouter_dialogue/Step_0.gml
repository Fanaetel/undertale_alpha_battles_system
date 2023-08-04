if (input_pressed(WSAD.Z)){
  if (typist.get_state() == 1.0) {
    if (dialogue_index >= array_length(dialogue) -1){
		
	 instance_destroy();
	 keyboard_clear(keyboard_lastkey);
	}
	
	dialogue_index ++;
    exit ;
 }
 typist.skip();	
}