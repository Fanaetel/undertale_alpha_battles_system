function encouter_start(obj) {
	if (obj == o_encouter) {
		logger.fatal("Trying create base encouter object. You can't use base object for creation.");
	}
	
	if (object_get_base_parent(obj) != o_encouter) {
		logger.fatal("Trying create encouter with object \"{0}\". The encouter must be inherited from \"o_encouter\", inherit or replace the object.", object_get_name(obj));
	}
	
	if (!variable_global_exists("__encouter_object")) {
		global.__encouter_object = [];
	}
	
	global.__encouter_object = obj;
	logger.info("Starting encouter \"{0}\"...", object_get_name(obj));
	room_goto(Room2)
}
