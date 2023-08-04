function EncouterEnemyElement(x,y,object) constructor {
self.x = x;
self.y = y;
self.object = object;
static create = function (encouter){
	if (object_get_base_parent(object) != o_encouter_enemy){
		logger.fatal("In the list of enemies, you specified an invalid enemy \"{0}\". The enemy must be inherited from \"o_encouter_enemy\", inherit or replace the object", object_get_name(object));
	}
	return instance_create_depth(self.x, self.y, 0, object, {encouter : encouter} );
}
}