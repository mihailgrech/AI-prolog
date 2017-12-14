    /*  Составить программу для перевода списка, записанного в виде цифр,
    в список из соответствующих слов, например:
    [3, 5, 1, 3]  преобразовать в [“три”, “пять”, “один”, “три”]
*/

convert(0, "zero").
convert(1, "one").
convert(2, "two").
convert(3, "three").
convert(4, "four").
convert(5, "five").
convert(6, "six").
convert(7, "seven").
convert(8, "eight").
convert(9, "nine").

convert([],[]).
convert([H|T], [X|Y]) :- convert(H, X),
                         convert(T, Y),
                         write(Y).