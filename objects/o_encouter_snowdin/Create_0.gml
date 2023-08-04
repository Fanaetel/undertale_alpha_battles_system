event_inherited();

player = new Class_Player("???",30,30,1,20,40,[
 new EncouterItem("Пер",200),
 new EncouterItem("АЫВ",100)
]);

enemies_list = [
 new EncouterEnemyElement(200,175,o_enemy_snowdin_mot),
];

create_enemies();