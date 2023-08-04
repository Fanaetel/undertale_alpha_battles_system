function Key(type,index) constructor {
self.index	=	is_string(index) ? ord(index) : index;
self.device	=	device_get(type);

	static equals=function(key){
		return index==key.index && device==key.device;	
}

	static check_pressed=function(){
		return device.check_pressed(index);	
}

	static check_held=function(){
		return device.check_held(index);	
}

	static check_released=function(){
		return device.check_released(index);	
}

}