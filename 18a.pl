/*  Составить программу для определения, является ли первый список подсписком второго.
*/

belong(Element, [Element|_]) :- !.
belong(Element, [_|T]) :- belong(Element, T).

isSubset([], _).
isSubset([Element|T], List2) :- belong(Element, List2),
                                subset(T, List2).