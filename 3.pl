/*  Составить программу, вычисляющую значение функции
    f(x, y) = 3*y * a(x) + sin(x*y) * b(y),
    где a(x)=sqrt(| x|), b(y)=cos(y) +2.
       
    Вывести промежуточные значения a(x), b(y) и результат f(x, y)
    Использовать два способа – вычисление в одном предикате и выделение нахождения a(x) и b(y), в отдельные предикаты.
*/

a(X, R1) :- R1 is sqrt(abs(X)).
b(Y, R2) :- R2 is cos(Y) + 2.

funcFirstTask(X, Y, A, B, F) :- a(X, A),
                                b(Y, B),
                                F is 3*Y * A + sin(X*Y) * B.
 
funcSecondTask(X, Y, F) :- F is 3*Y * sqrt(abs(X)) + sin(X*Y) * (cos(Y) + 2).