maschio(roberto).

maschio(tommaso).
maschio(raffaele).
maschio(riccardo).

maschio(francesco).

femmina(ana).

femmina(maria).
femmina(alberta).
femmina(francesca).

femmina(roberta).

padre(roberto, tommaso).
padre(roberto, francesco).
padre(roberto, roberta).

padre(tommaso, francesca).
padre(tommaso, alberta).
padre(tommaso, riccardo).
padre(tommaso, raffaele).

madre(maria, tommaso).
madre(maria, francesco).
madre(maria, roberta).

madre(ana, francesca).
madre(ana, alberta).
madre(ana, riccardo).
madre(ana, raffaele).


% % % Predicati

%%% genitore/2  Questo è un esempio di OR, esecuzione è alto verso basso e sx verso dx, in alternativa si può usare ; come OR al posto di , (AND) ma la seconda alternativa è da evitare!
genitore(X, Y) :- padre(X, Y).
genitore(X, Y) :- madre(X, Y).

%%% antenato/2 -> Genitore del genitore, chiusura transitiva del genitore -> antenato (secondo predicato) è effettivamente una chiamata ricorsiva
antenato(X, Y) :- genitore(X, Y).
antenato(X, Y) :- genitore(X, Z), antenato(Z, Y).

%%% discendente/2
discendente(X, Y) :- antenato(Y, X).

%%% fratello/2  Qua si richia di avere il fatto che un fratello è fratello di se stesso, mettiamo il diverso
fratello(X, Y) :- X \== Y, maschio(X), genitore(Z, X), genitore(Z, Y).

%%% sorella/2
sorella(X, Y) :- X \== Y, femmina(X), genitore(Z, X), genitore(Z, Y).

%%% zio/2
zio(X,Y) :- fratello(X, Z), genitore(Z, Y).

%%% zia/2
zia(X,Y) :- sorella(X, Z), genitore(Z, Y).

%%% nonno/2
nonno(X,Y) :- padre(X,Z), genitore(Z,Y).

%%% nonna/2
nonna(X,Y) :- madre(X,Z), genitore(Z,Y).

cls :- write('\33\[2J').