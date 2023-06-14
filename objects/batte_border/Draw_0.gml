draw_rectangle(29,211,607,383,true)
draw_set_color(c_white)
for (var i=0;i<array_length(menu_batte);i++){
	 if(check==0)
	   if (i==num)
		draw_sprite(Soul,0,35+i*150,420);  					   
draw_set_color(c_white);   
draw_sprite(menu_batte[i],0,19+i*150,400);	
draw_text(90,100,string($"Hp {Soul_Hp.SoHp} / {Soul_Hp.SoMaxHp}"))
}
for (var a=0;a<array_length(menu_batte);a++){
         if(check==0)	
	       if (a==num)
		   draw_sprite(menu_batte[a],1,19+a*150,400);	   		   
}
if (check==1)
switch(num){
case 0:	
 instance_activate_object(oChoseMon);
 break;
}	