/*  Написать программу, вычисляющую значение функции вида:
    f(x, y)=	
            2*x,       если  x+y < -1
            cos(x*y),  если  -1 ≤ x+y ≤ 1
            sqrt(x+y), если  x+y > 1
*/

func(X, Y, R) :- (X+Y < -1 -> R is 2*X).
                 
func(X, Y, R) :- (X+Y > 1
                 -> R is sqrt(X+Y)).
                
func(X, Y, R) :- ((X+Y =< 1), (X+Y >= -1)
                 -> R is cos(X*Y)).