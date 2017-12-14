/*  Имеются факты, описывающие родственные отношения между людьми,
    указывая, кто является чьим родителем: родитель(X,Y), т.е.  X – родитель Y. 
    Описать предикат, позволяющий определить, кто является чьим потомком:
    потомок(А, В), то есть А - потомок В.
*/

parent(marina, mikhail).
parent(vitaly, mikhail).

parent(sergey, marina).
parent(luydmila, marina).
parent(galina, vitaly).
parent(mikhail_g, vitaly).
parent(vasya, galina).
parent(vera, galina).

ancestor(A, B) :- parent(B, A).
ancestor(A, B) :- parent(Z, A), ancestor(Z, B).