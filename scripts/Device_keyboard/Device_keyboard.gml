function Device_keyboard () : Device () constructor {
static check_pressed=function(key){
  return keyboard_check_pressed(key);
}
static check_held=function(key){
return keyboard_check(key);	
}
static check_released=function(key){
return keyboard_check_released(key);	
}
static get_type=function(){
return devicse.keyboard;	
}
}