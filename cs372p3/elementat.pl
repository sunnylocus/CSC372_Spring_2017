% Name: Yujia Lin

elementat(Index, List, Element) :-
    elementathelper(Index, List, Element, 0).

elementathelper(Index, [X|_], Element, I) :-
    Index == I,
    Element = X.

elementathelper(Index, [_|List], Element, I) :-
    B is I + 1,
    elementathelper(Index, List, Element, B).
