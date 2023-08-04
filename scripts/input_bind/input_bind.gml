function input_bind(target,keys){
	if (!is_array(keys)) 
	keys=[keys];

var container=input_get(target);
	if (container==undefined){
	input_register(target,new InputContainer(keys));
	return;
};
container.add_keys(keys);
};