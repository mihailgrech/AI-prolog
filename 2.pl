/*  Имеется информационная база о служащих предприятия в виде: 
    идентификационный номер служащего, фамилия, должность, зарплата, номер отдела.
    Дополнительно отдельно хранятся данные о семейном положении служащего в виде:
    идентификационный номер служащего, фамилия жены или мужа, число детей. 
    
    Написать программу, содержащую пример такой базы и дополнить её правилами:
        1)	А знаком с В , если они работают в одном отделе
        2)	Жена/муж А знаком с женой/мужем В , если  А и В работают в одном отделе.
        3)	Составить целевые запросы к программе:
            - Выдать всех служащих первого отдела
            - Определить работников, получающих зарплату более заданной
            - Определить работников, имеющих более одного ребёнка.
*/

employee(0, pupkin, slesar, 16000, 666).
employee(1, svechkina, boss, 35000, 1).
employee(2, shkiryak, dvornik, 9000, 1).
employee(3, bubenov, sysadmin, 25000, 2).
employee(4, zyamyatina, buhgalter, 40000, 3).
employee(5, arzamaschev, analitic, 30000, 4).
employee(6, kashtanova, consultant, 15000, 3).

family(0, svechkina, 1).
family(1, pupkin, 1).
family(2, zyamyatina, 0).
family(4, shkiryak, 0).
family(5, kashtanova, 2).
family(6, arzamaschev, 2).

aFamiliarToB(A, B) :- employee(_, A, _, _, DEPN1),
                      employee(_, B, _, _, DEPN2),
                      DEPN1 = DEPN2,
                      A \= B.

spousesFamiliar(A_SP, B_SP) :- employee(ID1, A, _, _, D),
                               employee(ID2, B, _, _, D),
                               family(ID1, A_SP, _),
                               family(ID2, B_SP, _),
                                A \= B.
    
firstDepartment(ID, F) :- employee(ID, F, _, _, 1). 


salaryMoreThan(F, SALARY_MIN) :- employee(_, F, _, S, _),
                                 S > SALARY_MIN.
                              
twoMoreChildren(F, N) :- employee(ID, F, _, _, _),
                         family(ID, _, N),
                         N > 1.