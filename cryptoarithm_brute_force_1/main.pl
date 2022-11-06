permutation([], []).
permutation(Xs, [Z|Zs]) :-
    remove(Z, Xs, Ys),
    permutation(Ys, Zs).
               
remove(X, [X|Xs], Xs).
remove(X, [Y|Ys], [Y|Zs]) :-
    remove(X, Ys, Zs).


cryptoarithm(E, F, H, I, N, O, R, S, T, U) :-
    permutation([1, 2, 3, 4, 5, 6, 7, 8, 9, 0], [E, F, H, I, N, O, R, S, T, U]),
    (N * 1000 + I * 100 + N * 10 + E * 1) * (T * 10000 + H * 1000 + R * 100 + E * 10 + E * 1)
    =:=
    (N * 1000 + E * 100 + U * 10 + F * 1) * (T * 10000 + R * 1000 + O * 100 + I * 10 + S).

% ?-cryptoarithm(E, F, H, I, N, O, R, S, T, U).