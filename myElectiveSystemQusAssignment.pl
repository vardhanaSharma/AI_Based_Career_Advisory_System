%Saving user inputs

:- dynamic(add/2).

choosen_career(Res) :- add(choosen_career , Res).
gpa(Res) :- add(gpa, Res).
choosen_subject(Res) :- add(choosen_subject, Res).
prereq_done(Res) :- add(prereq_done, Res).
projects_done(Res) :- add(projects_done, Res).
aptitude(Res) :- add(aptitude, Res).
choosen_career(Res) :- not(add(choosen_career , _)), systemquery(choosen_career , Res, [data_scientist,sde,security_engineer]).
choosen_subject(Res) :- not(add(choosen_subject, _)), systemquery(choosen_subject, Res, [dsa, core, network, maths]).
gpa(Res) :- not(add(gpa, _)), systemquery(gpa, Res,[above_9, above_8, above_7, above_6]).
prereq_done(Res) :- not(add(prereq_done, _)), systemquery(prereq_done, Res, [yes, no]).
projects_done(Res) :- not(add(projects_done, _)), systemquery(projects_done, Res, [yes, no]).
aptitude(Res) :- not(add(aptitude, _)), systemquery(aptitude, Res, [yes,no]).
