/*
    Составить программу для решения
    квадратного уравнения  ax² + bx + c = 0
*/

disc(A, B, C, D) :- D is B^2 - 4*A*C.

findRoots(A, B, C, D, X1, X2) :- disc(A, B, C, D),
                                (D < 0   -> write("there is no root") ;
                                 D =:= 0 -> X1 is (0 - B) / (2*A) ;
                                            X1 is (0 - B + sqrt(D)) / (2*A),
                                            X2 is (0 - B - sqrt(D)) / (2*A)
                                ).