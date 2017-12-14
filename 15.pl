/*  Составить программу для поиска суммы всех четных элементов списка
*/

getEvenNumbersSum(N) :- sumEvenNumbers(N, Sum), !,
                        writeln(Sum).

sumEvenNumbers([], Sum) :- Sum is 0.
sumEvenNumbers([H|T], Sum) :- sumEvenNumbers(T, SumTemp),
                              isOdd(H, R),
                              (R == 0, Sum is SumTemp + H;
                                       Sum is SumTemp
                              ).
                              
isOdd(X, R) :- R is X mod 2.