/*
    Составить программу для решения
    квадратного уравнения  ax² + bx + c = 0
*/

disc(A, B, C, D) :- D is B^2 - 4*A*C.

findRoots(A, B, C, D, X1, X2) :- disc(A, B, C, D),
                                 X1 is (B + sqrt(D)) / 2*A,
                                 X2 is (B - sqrt(D)) / 2*A.