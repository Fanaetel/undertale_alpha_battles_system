enum encouter_menu {
	no = -1,
	fight = 0,
	act = 1,
	act_actions = 4,
	item = 2,
	mercy = 3
}
enum encouter_state {
	selecting,
	fight,
	encouter_dialogue,
	enemy_dialogue,
	atacking,
	in_menu
}
enum encouter_depth{
    background = 0,	
    ui    = -100,	
    enemy = -200,
    arena = -300,
    text  = -400,
	attack = -450,
    soul  = -500,
}
