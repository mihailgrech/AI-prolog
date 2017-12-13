/*  Имеются данные о том, кто кого победил во время соревнований в виде:
    победил(фамилия, фамилия). Используя предикат победил, необходимо
    классифицировать соревновавшихся следующим образом:  
    
    если Х победил кого-либо и Х был кем-то побеждён, то Х – боец
    иначе если Х победил кого-либо, то Х – победитель 
    иначе если Х был кем-то побеждён, то Х – спортсмен
*/

% fightes: lozanov, gagarin, kalchenko
% winners: yakov, dubrovskiy, yanvarev, romazanov
% sportsmen: chiolkovskiy, algorin, kodenko

win(lozanov, gagarin).
win(yakov, lozanov).
win(gagarin, algorin).
win(dubrovskiy, kodenko).
win(romazanov, kalchenko).
win(yanvarev, chiolkovskiy).
win(kalchenko, gagarin).

classifyAthletes() :- win(X, _), win(_, X), write(X), writeln(" - fighter").
classifyAthletes() :- win(X, _), not(win(_, X)), write(X), writeln(" - winner").
classifyAthletes() :- not(win(X, _)), win(_, X), write(X), writeln(" - sportsman").