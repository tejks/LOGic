permutation([], []).
permutation([G | O], P) :-
    permutation(O, O1),
    insert(G, O1, P).

insert(X, L, [X | L]).
insert(X, [G | O], [G | O1]) :-
    insert(X, O, O1).

race(W, G, D, B, A) :-
    permutation([W, G, D, B, A], [1, 2, 3, 4, 5]),
    W \= 1,
    G = 3,
    D < G,
    D \= 2,
    A \= 1,
    A \= 5,
    B =:= W+1.

% ?-race(W, G, D, B, A).