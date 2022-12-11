start:-
    reconsult('C:/Users/user/documents/prolog/myElectiveSystemKnowledge.pl'),nl,
    reconsult('C:/Users/user/documents/prolog/myElectiveSystemQusAssignment.pl'),nl,
    mainprogram.

mainprogram:-
    nl,write("-----------------------------------Welcome-------------------------------------------"),nl,
    nl,write("ELECTIVES Advisory SYSTEM"),nl,
    nl,write("------------------------------------------------------------------------------------------"),nl,
    write("Enter your name :- "),nl,nl,read(Name),format('Hello, ~w. Get your electives here.',[Name]),nl,clean, output(_).

output(Elective) :- elective(Elective), !, results(Elective).

systemquery(A, B, C) :- query(A), option(C, 0), read(I), list_recurssion(I, C, Z), asserta(add(A, Z)),  Z = B.

clean :- retract(add(_,_)), fail.
clean.

results(data_science):-
    write("You can choose to go in data science field."), nl, nl, write("Appropriate electives to sharpen your career intreste :- "), nl, nl,dic(X).
results(sd):-
    write("You can choose to go in software development field."), nl, nl, write("Appropriate electives to sharpen your career intreste:- "), nl, nl,dic1(Y).
results(network_security):-
    write("You can choose to go in network security field."), nl, nl, write("Appropriate electives to sharpen your career intreste:- "), nl, nl,dic2(Z).

dic(X):-
    X =point{ml:cse543,ai:cse623, dl:cse641, dmg:cse506, cv:cse544},
    forall(get_dict(Key,X,Value),format('Elective ~w Of Course code: ~w, ~n~n', [Key,Value])).

dic1(Y):-
    Y =point{ga:cse525,compiler:cse601, mda:cse519, ca:cse511, pa:cse503},
    forall(get_dict(Key,Y,Value),format('Elective ~w Of Credits: ~w, ~n~n', [Key,Value])).
dic2(Z):-
    Z =point{tmc:cse524,dss:cse530, se:cse552, fcs:cse545, mcns:cse647},
    forall(get_dict(Key,Z,Value),format('Elective ~w Of Credits: ~w, ~n~n', [Key,Value])).

list_recurssion(0, [H|_], H).
list_recurssion(I, [_|T], X) :- I > 0, K is I - 1, list_recurssion(K, T, Z).

listing([], _).
listing([H|T], I) :- J is I+1 , write(J), write(": "), write(H), nl, K is I + 1, listing(T, K).

option([], _).
option([H|T], I) :- write(I), write(": "), input(H), nl, K is I + 1, option(T, K).

output(Elective) :- notmatched(Elective).
notmatched(elective) :- write("Sorry you are not eligible for this field. Kindly look for other options...").






