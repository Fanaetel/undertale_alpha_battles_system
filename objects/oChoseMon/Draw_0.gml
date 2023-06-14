for (var i=0;i<array_length(name);i++){
	draw_set_color(c_white);
	 if (i==num){
	 draw_set_color(c_yellow)	 
	 draw_sprite(Soul,0,5+i*10,200);	 
	 }	
draw_text(70,300,string(name[i].Name))	
}