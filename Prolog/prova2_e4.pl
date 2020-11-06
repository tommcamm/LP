%%%     Esercizo 4, 11/11/19
%%%
%%%     Testo:
%%%     Definire le regole e i fatti affichè il predicato double(Xs, Ys) sia vero se ogni elemento della lista
%%%     Xs appare due volte consecutivamente nella lista Ys.
%%%
%%%     Info:
%%%     Per testare il programma, effettua il consult poi prova il comando:
%%%         ?- double([a, b, c, a, d, d], Ds).

double([],[]).
double([X | Xs], [X, X | Ys]) :- double(Xs, Ys).
