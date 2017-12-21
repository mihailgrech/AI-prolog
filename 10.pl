/*  Пусть имеется информация о возрасте некоторых людей в виде:
    возраст(имя, число лет) и их поле: мужчина(имя), женщина(имя), цвет волос: цвет_волос(имя, цвет)
    а также о различных городах, когда-либо посещавшихся данными людьми.
    
    Необходимо составить программу, осуществляющую поиск и выбор одного рыжеволосого мужчины старше 18 лет 
    из списка и вывод всех городов, которые он посещал. Целевой запрос должен быть внутрипрограммным. 
*/

man(vasya).
man(petya).
man(sergey).
man(andrey).

woman(sveta).
woman(nastya).

age(vasya,  20).
age(petya,  18).
age(sergey, 31).
age(andrey, 23).
age(sveta,  22).
age(nastya, 35).

hairColor(vasya, blond).
hairColor(petya, gray).
hairColor(sergey, redhaired).
hairColor(andrey, redhaired).
hairColor(sveta, blond).
hairColor(nastya, brunette).

cityVisited(ufa, vasya).
cityVisited(samara, petya).
cityVisited(kransodar, sergey).
cityVisited(moscow, sergey).
cityVisited(petersburg, andrey).

findRedHairedMan(N) :- hairColor(N, redhaired),
                       man(N), 
                       age(N, A),
                       A > 18, write(N), writeln(": "), !, 
                       cityVisited(C, N),
                       writeln(C), fail.

:- initialization((findRedHairedMan(N), write(N))).