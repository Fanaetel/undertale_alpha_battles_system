if (!variable_instance_exists(id,"encouter"))
 encouter = noone;
 
 arena = encouter.arena;
 
 soul = instance_create_depth(arena.x, arena.y, encouter_depth.soul, o_soul,{encouter : encouter });
 
 pause = true;
 
 start = function () {
 pause = false;	 
 soul.moveable = true;	 
 }
 
 destroy = function () {
	with (o_encouter_element) {	 
		instance_destroy();	 
 }
 
 encouter.on_fight_end();
 instance_destroy();
 
 }
 
 encouter.on_fight();