if (!variable_instance_exists(id,"encouter")){
 logger.fatal("Failed to get the encouter reference, check if the \"{0}\" component in encouter was created correctly.", object_get_name(object_index))
encouter = noone;	
}

selected_button = 0;
selected_sub_menu = 0;
selected_enemy = 0;