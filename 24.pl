/*  В файле tel.dat  разместить  данные об именах и номерах телефонов, используя предикат телефон(имя, номер):
    телефон(”Иван”,”1234337”)
    телефон(”Петр”,”1111567”)
    телефон(”Маша”,”3222232”)

    Составить программу, позволяющую проводить дополнение базы данных, с помощью  примерного  диалога:
    Введите имя: Толя   
    Введите телефон: 1234567
    Продолжить? да/нет  
    По окончании дополнения базы следует сохранить обновлённый файл tel.dat.
*/
    
addPhone() :- consult("C:/Users/Mihail/Documents/GitHub/AI-Prolog/phones.dat"),
              write("enter the name: "),
              read(Name),
              writeln("enter the phone number: "),
              read(Number),
              assertz(phone(Name, Number)),
              open("C:/Users/Mihail/Documents/GitHub/AI-Prolog/phones.dat", write, S), set_output(S), listing(phone), close(S).