function Vestor2 (_x = 0, _y = _x) {
	return new ClassVector2 (_x, _y)
}

function ClassVector2(x, y)	constructor {
	self.x = x;
	self.y = y;
	
	
	static vector2_zero = function () {
		x = 0;
		y = 0; 
		return self
	}
	
	static equals = function (vector) {
			var _x = vector.x;	
			var _y = vector.y;

			return (x == _x) && (y == _y) 
		}
	
	static set = function () {
		var vector = argument[0]	
		if (argument_count > 1) {
			var _x = argument[0]
			var _y = argument[1]
		 vector = new ClassVector2(_x, _y);
		}
		
		x = vector.x;
		y = vector.y;
		return self 
	}
	
	static add = function () {
		var vector = argument[0];	
		if (argument_count > 1){
			var _x = argument[0];	
			var _y = argument[1];
			vector = new ClassVector2(_x, _y);	
		}
		x += vector.x;
		y += vector.y;
		
	}
	
	static sud = function () {
		var vector = argument[0];	
		if (argument_count > 1){
			var _x = argument[0];
			var _y = argument[1];
		vector = new ClassVector2(_x, _y);	
		}
		x -= vector.x;
		y -= vector.y;
		return self;
	}

}

function position_add (_vector2, _object = id){
	_object.x += _vector2.x;
	_object.y += _vector2.y;	
}
