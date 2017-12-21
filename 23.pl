/*  Файл tree.dat содержит базу данных о плодовых деревьях:
    яблонях и грушах, включая сорт и тип плодоношения: 
    
    яблоня(”Папировка”,”летний”)
    яблоня(”Мельба”,”летний”)
    яблоня(”Антоновка”,”зимний”)
    яблоня(”Уэлси”,”зимний”)
    груша(”Лада”,”летний”)
    груша(”Московская”,”летний”)
    груша(”Чижовскаяа”,”осенний”)
    
    Необходимо запросить у пользователя дерево и тип плодоношения и выдать ему все подходящие сорта.
    В случае отсутствия подходящего сорта выдать ответ «Нет данных»
*/

main :- consult("C:/Users/Mihail/Documents/GitHub/AI-Prolog/tree.dat"),
        write("Tree name: "),
        read(Tree),
        writeln("Type name: "),
        read(Type),
        %checkSortes(Tree, Type),
        runFindSortes(Tree, Type).

runFindSortes(apple, Type) :- appleTree(X, Type), 
                              writeln(X),
                              fail.
                              
runFindSortes(pear, Type) :- pearTree(X, Type),
                             writeln(X),
                             fail.