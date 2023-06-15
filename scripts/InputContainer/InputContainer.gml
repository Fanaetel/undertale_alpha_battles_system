function InputContainer(keys)constructor {
self.keys=keys;
self.keys_length=array_length(keys);
static _check=function(callback){
var i=0;	
	repeat(keys_length){
	if (callback(keys[i]))	return true;	
	i++;
	}
return false;	
}
static check_pressed=function(){
	return _check(function(key){
	return key.check_pressed();
	});
};
static check_held=function(){
	return _check(function(key){
	 return key.check_held();			
	});
};
static check_released=function(){
	return _check(function(key){
	 return key.check_released();
	});
};
static get_key_index=function(key){
var i=0;	
	repeat(keys_length){
	if (key.equals(keys[i])) return i;			
	i++
	}
 return undefined;	
};
static has_key=function(key){
return get_key_index(key)!=undefined;	
}
static set_key=function(index,key){
keys[index]=key;	
}
static add_key=function(key){
var index=get_key_index(key);	
	if (index !=undefined){
		set_key(index,key);
		return;}
array_push(keys,key);	
keys_length++;
};
static add_keys=function(keys){
var i=0;	
	repeat(array_length(keys)){
	add_key(keys[i]);	
		i++;
	}
};
static remove_key=function(key){
var index=get_key_index(key);	
if(index==undefined) return;	
	array_delete(keys,index,1);
	keys_length--;
};
static remove_keys=function(keys){
var i=0;	
	repeat(array_length(keys)){
	remove_key(keys[i]);	
		i++;
	}
}
}