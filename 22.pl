/*  Подсчитать, сколько слов находится в файле, определенном пользователем
*/

main :- open("C:/Users/Mihail/Documents/GitHub/AI-Prolog/lab21.txt", read, Str),
        readFile(Str, Lines),
        fileWordsCounter(Lines, N),
        close(Str),
        writeln(N).
    
fileWordsCounter([], 0).
fileWordsCounter([H|T], N) :- fileWordsCounter(T, NTemp),
                              stringWords(H, StringNTemp),
                              N is NTemp + StringNTemp. 
stringWords([], 0).
stringWords([_|T], N) :- stringWords(T, NTemp),
                         N is NTemp + 1.

readFile(Stream, []) :- at_end_of_stream(Stream).
  
readFile(Stream,[X|L]) :- read_string(Stream, "\n", "\r\t", _, Y),
                          split_string(Y, " ", " ", X),
                          readFile(Stream, L). 
                          