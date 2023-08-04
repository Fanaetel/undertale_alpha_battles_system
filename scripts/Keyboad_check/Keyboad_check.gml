function input_pressed(target){
	return input_get(target).check_pressed();
}

function input_released(target){
	return input_get(target).check_released();	
}

function input_held(target) {
	return input_get(target).check_held();
}