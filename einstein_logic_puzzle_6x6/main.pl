left(L,R,[L, R|_]).
left(L,R,[_|O]) :- left(L,R,O).	

enter_data(X) :-
	member([_,andrzej,agnieszka,_,_,_,_],X),
    member([_,_,ola,_,czerwony,_,_],X),
	member([_,_,_,fiat,zielony,_,_],X),
	member([_,_,_,opel,_,restauracja,_],X),
	member([_,_,_,_,_,politechnika,czytanie],X),
	member([_,wojciech,_,_,_,_,plywanie],X),
	member([_,_,_,ford,granatowy,_,fotografowanie],X),
	member([_,tomasz,_,bmw,_,_,_],X),
	member([_,_,ewa,_,_,_,zeglarstwo],X),
	member([_,dariusz,_,_,bialy,_,_],X),
	member([_,_,roza,mercedes,_,_,_],X),
	member([_,_,_,_,szary,sad,_],X),
    
	left([_,_,_,fiat,_,_,_],[_,_,_,_,_,bank,_],X),
	left([_,_,_,_,_,bank,_],[_,_,_,_,_,_,rowery],X),
    left([_,_,_,_,granatowy,_,_],[_,_,_,_,_,hotel,_],X),
	left([_,_,_,_,_,hotel,_],[_,_,_,_,_,szpital,_],X),
    left([_,_,ania,_,_,_,_],[_,michal,_,_,_,_,_],X),
	left([_,mateusz,_,_,_,_,_],[_,_,ania,_,_,_,_],X),
    left([_,_,_,_,zolty,_,_],[_,_,alicja,_,_,_,_],X),
	left([_,_,_,_,_,_,majsterkowanie],[_,_,_,_,zolty,_,_],X).

get_solution_1(X, S) :-
    member([_,S,_,_,_,szpital,_],X).

get_solution_2(X, S) :-
    member([_,_,_,renault,S,_,_],X).

search(S1, S2) :-
    Data = [[1,_,_,_,_,_,_],[2,_,_,_,_,_,_],[3,_,_,_,_,_,_],[4,_,_,_,_,_,_],[5,_,_,_,_,_,_],[6,_,_,_,_,_,_]],
    enter_data(Data),
    get_solution_1(Data, S1),
    get_solution_2(Data, S2).
    
% ?- search(S1, S2).