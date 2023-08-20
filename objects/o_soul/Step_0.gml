if (!moveable)
	exit;
	
var ver	 =	(input_held(WSAD.down)	- input_held(WSAD.up));
var hor	 =	(input_held(WSAD.right)	- input_held(WSAD.left));

 var move_and_collision = function (vector2 ,_speed ) { 
	var _xx = vector2.x * _speed;
    var _yy = vector2.y * _speed;
	
    x += _xx;
    y += _yy;	
	
	if (place_meeting(x + _xx, y, o_wall)) {
		while (!place_meeting(x + sign(_xx), y, o_wall)) {
			x += _xx	
		}
	 x -= _xx
	}
	
	if (place_meeting(x, y + _yy, o_wall)) {
		while (!place_meeting(x, y + sign(_yy), o_wall)) {	
			y += _yy;	
		}
		y -= _yy;	
	}
}

position.x = hor
position.y = ver

move_and_collision (position, spd)

position.add(velocity)

velocity2_zero.set(0, 0)