/*  на базе имеющихся предикатов, описывающих родственные отношения,
    определить предикаты брат, сестра, дядя, бабушка
*/

man(mikhail).
man(vitaly).
man(lesha).

woman(marina).
woman(elena).
woman(luydmila).
woman(galina).

parent(marina, mikhail).
parent(vitaly, mikhail).
parent(luydmila, marina).
parent(luydmila, elena).
parent(galina, vitaly).

% Is X C's sister (and so on)
sister(X, C)  :- parent(P, X), parent(P, C), woman(X), X \= C.
brother(X, C) :- parent(P, X), parent(P, C), man(X), X \= C.
grandma(X, C) :- parent(P, C), parent(X, P), woman(X).
uncle(X, C)   :- parent(P, C), brother(X, P). % uncle is the brother of one's parent