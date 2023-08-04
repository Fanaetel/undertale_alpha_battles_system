image_angle += 2;

// Радиус круга (в пикселях)
var radius = 100;

// Угол (в радианах)
var angle = 0;

// Шаг угла (это будет определять, насколько далеко друг от друга будут расположены объекты)
var angle_step = 130;


var new_x = x + radius * cos(degtorad(angle));
var new_y = y + radius * sin(degtorad(angle));

if (place_meeting(x, y, o_arean_collision)) {
	ScrSpaw(new_x , new_y, o_star, 7, 10) 
	if (instance_number(o_star) == 10)
	instance_destroy()
}


x -= 5;
y += 3;