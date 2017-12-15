/*  Написать программу, позволяющую определить длину строки, введённой
    пользователем, не используя стандартного предиката str_len.
*/

calcStringLen(Str, Len) :- atom_chars(Str, Vars),
                           stringLen(Vars, Len).

stringLen([], 0).
stringLen([_|T], Len) :- stringLen(T, LenTemp),
                         Len is LenTemp + 1.