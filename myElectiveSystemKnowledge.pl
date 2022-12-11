% Knowledge base

query(choosen_career) :- write("What is your career interest ?"), nl, nl.
query(choosen_subject) :- write("Choose subject according to your interest ?"), nl, nl.
query(gpa) :- write("What is your GPA ?"), nl, nl.
query(projects_done) :- write("Have you done any related projects ?"), nl, nl.
query(prereq_done) :- write("Have you done any prerequise for this ?"), nl, nl.
query(aptitude) :- write("Are you good at aptitude?"), nl, nl.

elective(data_science) :- choosen_career(data_scientist) , choosen_subject(maths), prereq_done(yes), gpa(above_7) , projects_done(no), aptitude(yes).
elective(data_science) :- choosen_career(data_scientist) , choosen_subject(dsa), prereq_done(yes), gpa(above_8) , projects_done(no), aptitude(yes).
elective(data_science) :- choosen_career(data_scientist) , choosen_subject(core), prereq_done(no), gpa(above_9) , projects_done(no), aptitude(yes).
elective(data_science) :- choosen_career(data_scientist) , choosen_subject(core), prereq_done(yes), gpa(above_7) , projects_done(yes), aptitude(yes).
elective(data_science) :- choosen_career(data_scientist) , choosen_subject(dsa), prereq_done(yes), gpa(above_8) , projects_done(yes), aptitude(yes).
elective(data_science) :- choosen_career(data_scientist) , choosen_subject(maths), prereq_done(no), gpa(above_9) , projects_done(no), aptitude(yes).
elective(sd) :- choosen_career(sde) , choosen_subject(dsa), prereq_done(yes), gpa(above_7) , projects_done(no), aptitude(yes).
elective(sd) :- choosen_career(sde) , choosen_subject(maths), prereq_done(yes), gpa(above_9) , projects_done(yes), aptitude(no).
elective(sd) :- choosen_career(sde) , choosen_subject(core), prereq_done(no), gpa(above_8) , projects_done(yes), aptitude(yes).
elective(sd) :- choosen_career(sde) , choosen_subject(dsa), prereq_done(yes), gpa(above_7) , projects_done(yes), aptitude(yes).
elective(sd) :- choosen_career(sde) , choosen_subject(maths), prereq_done(yes), gpa(above_9) , projects_done(no), aptitude(no).
elective(sd) :- choosen_career(sde) , choosen_subject(core), prereq_done(no), gpa(above_8) , projects_done(no), aptitude(yes).
elective(network_security) :- choosen_career(security_engineer) , choosen_subject(maths), prereq_done(yes), gpa(above_9) , projects_done(yes), aptitude(no).
elective(network_security) :- choosen_career(security_engineer) , choosen_subject(core), prereq_done(no), gpa(above_8) , projects_done(yes), aptitude(yes).
elective(network_security) :- choosen_career(security_engineer) , choosen_subject(network), prereq_done(yes), gpa(above_7) , projects_done(yes), aptitude(yes).
elective(network_security) :- choosen_career(security_engineer) , choosen_subject(maths), prereq_done(yes), gpa(above_9) , projects_done(no), aptitude(no).
elective(network_security) :- choosen_career(security_engineer) , choosen_subject(core), prereq_done(no), gpa(above_8) , projects_done(no), aptitude(no).
elective(network_security) :- choosen_career(security_engineer) , choosen_subject(network), prereq_done(yes), gpa(above_7) , projects_done(yes), aptitude(yes).

input(data_scientist) :- write("Data Science.").
input(sde) :- write("Software Development.").
input(security_engineer) :- write("Network Security.").
input(maths) :- write("Maths").
input(core) :- write("CSE Core Subjects").
input(network) :- write("Network").
input(dsa) :- write("DSA").
input(above_9) :- write("9 or above").
input(above_8) :- write("8 or above.").
input(above_7) :- write("7 or above.").
input(above_6) :- write("6 or above.").
input(donee) :- write("Donee.").
input(not_donee) :- write("Not Donee.").
input(yes) :- write("yes").
input(no) :- write("no").


