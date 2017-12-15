/*  Подсчитать, сколько символов находится в файле, определенном пользователем
*/

main :- open("C:/Users/Mihail/Documents/GitHub/AI-Prolog/lab21.txt", read, Str),
        readFile(Str, Lines),
        calcFileLength(Lines, Len),
        close(Str),
        writeln(Len).
    
calcFileLength([], 0).
calcFileLength([H|T], Len) :- calcFileLength(T, LenTemp),
                              calcStringLen(H, StringLenTemp),
                              Len is LenTemp + StringLenTemp. 

calcStringLen(Str, Len) :- atom_chars(Str, Vars),
                           stringLen(Vars, Len).
                              
stringLen([], 0).
stringLen([_|T], Len) :- stringLen(T, LenTemp),
                         Len is LenTemp + 1.

readFile(Stream, []) :- at_end_of_stream(Stream).
    
readFile(Stream, [X|L]) :- \+ at_end_of_stream(Stream),
                           read_string(Stream, "\n", "\r\t", _, X),
                           readFile(Stream, L).
    
% https://stackoverflow.com/questions/4805601/read-a-file-line-by-line-in-prolog