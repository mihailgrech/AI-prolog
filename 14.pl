/*  Определить предикат lensp(N,L) для нахождения длины списка L.
*/

len([], 0).
len([_|TAIL], LENGTH) :- len(TAIL, LTEMP),
                         LENGTH is LTEMP + 1.