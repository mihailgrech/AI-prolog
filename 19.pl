/*  Написать программу, позволяющую найти список, являющийся пересечением двух списков.
*/

list([], _) :- !.
list([H|T], L) :- repea(H, L), list(T, L).

repea(_, []) :- !.
repea(K, [H|T]) :- K \= H, repea(K, T).
repea(K, [H|_]) :- K is H,
                  write(K),
                  write(", ").