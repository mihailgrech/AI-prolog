/*  Написать программу для определения максимального значения в списке.
*/

runFindMax([H|T]) :- findMax(T, H).

findMax([], Max) :- write(Max).
findMax([H|T], Max) :- Max > H, findMax(T, Max) ;
                                findMax(T, H).