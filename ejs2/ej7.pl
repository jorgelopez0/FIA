bisiesto(X) :- multiplo(X,4),multiplo(X,100),multiplo(X,400).
bisiesto(X) :- multiplo(X,4),no_multiplo(X,100).
multiplo(X,Y) :- 0 is (X mod Y).
no_multiplo(X,Y) :- (X mod Y) =\= 0.