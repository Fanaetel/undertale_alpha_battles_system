var A=keyboard_check_pressed(ord("A"))|| keyboard_check_pressed(vk_left);
var D=keyboard_check_pressed(ord("D"))|| keyboard_check_pressed(vk_right);
var W=keyboard_check_pressed(ord("W"))|| keyboard_check_pressed(vk_up);
var S=keyboard_check_pressed(ord("S"))|| keyboard_check_pressed(vk_down);
var Z=keyboard_check_pressed(ord("Z")) ||keyboard_check_pressed(vk_enter);
if (A) num-=1;
if (D) num+=1;
if (Z) check=1;
if (check==1)
  if (Z)
  check=2;
  
	
