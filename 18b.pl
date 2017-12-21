/*  Второй вариант предыдущей задачи: определить подсписок
    через предикат объединения списков append.
*/

isSubset([H|T], List2) :- append(L, [H|_], List2), !,
                      last(T, TLast), !,
                      append(_, [TLast|R], List2), !,
                      append(L, [H], LH),
                      append(LH, T, M),
                      append(M, R, List2).