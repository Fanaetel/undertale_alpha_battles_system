var A=keyboard_check_pressed(ord("A"))|| keyboard_check_pressed(vk_left);
var D=keyboard_check_pressed(ord("D"))|| keyboard_check_pressed(vk_right);
var Z=keyboard_check_pressed(ord("Z")) ||keyboard_check_pressed(vk_enter);
var X=keyboard_check_pressed(ord("X")) || keyboard_check_pressed(vk_end);
if (A) num-=1;
if (D) num+=1;
if (Z) check+=1;
if (X) check-=1;