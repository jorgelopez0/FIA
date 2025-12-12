f(1,one).
f(s(1),two).
f(s(s(1)),three).
f(s(s(s(X))),N):-f(X,N).

% (a) A = two
% (b) false
% (c) C = one
% (d) D = s(s(1))