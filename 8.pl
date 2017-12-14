/*
    Имеются сведения о возрасте различных людей в форме: 
    возраст (фамилия, число_лет) и их поле: мужчина(фамилия), женщина(фамилия). 
    Используя внутрипрограммную цель получить список всех мужчин старше 18 лет.
*/

age(vasya, 23).
age(sonya, 20).
age(petya, 30).
age(elena, 16).
age(egor,  12).

man(vasya).
man(petya).
man(egor).

woman(sonya).
woman(elena).

:- initialization((findMenElder18(A, N))).

findMenElder18(Age, Name) :-
    age(Name, Age),
    man(Name),
    Age > 18,
    writeln(Name),
    fail.