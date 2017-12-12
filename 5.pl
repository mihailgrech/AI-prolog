/*  Написать программу, осуществляющую сравнение двух чисел А и В
    и формирующую одно из сообщений: «А больше В», «А меньше В», «А равно В»
*/

lessEqual(A, B) :- (A < B -> write("A is less than B") ;
                    A > B -> write("A is greater than B") ;
                             write("A is equal B")
                   ).