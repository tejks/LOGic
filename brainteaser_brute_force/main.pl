perm([], []).
perm(L,[H|T]) :-
  append(V,[H|U],L),
  append(V,U,W),
  perm(W,T).

race(W, G, D, B, A) :-
    perm([W, G, D, B, A], [1, 2, 3, 4, 5]),
    W \= 1,
    G = 3,
    D < G,
    D \= 2,
    A \= 1,
    A \= 5,
    B =:= W+1.

% ?-race(W, G, D, B, A).