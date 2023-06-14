var Z=keyboard_check_pressed(ord("Z")) ||keyboard_check_pressed(vk_enter);
if (Spd==false)  speed=2 else speed=0;
direction=0
if (Z){
Spd=true;	
Attackfake=1;
timeline_index=Timeline1;
timeline_running=1; 
};
