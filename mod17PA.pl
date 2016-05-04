%
% Hopscotch game: Imagine a version of hopscotch played on a linear course with markers in each square
% representing points. The goal is to hop through the course once, collecting a marker at each spot, to
% maximize the collected points. But there is a constraint: on each hop you must skip the next square or the
% next two squares. Hence from position i, the possible next position is either i+2 or i+3.
%
% Predicate hopscotch(X,R) is true if X is a list of integers representing score markers in the course and 
% R is a sequence of markers that leads to a maximum sequence of hops. Note that this predicate is expected
% to be used with a particular list for X and a variable or a list for R.
%
% This assignment is borrowed from Margaret Lamb, Queens University Computer Science Department, Ontario.
%
% Fahim NoorAhmad

% hopscotch(X,R) is true if X is a list of numbers and R is the list of values from X that win the hopscotch game.
hopscotch(X,R) :- fail.


hopscotch([],[]).
hopscotch([X], [X]).
hopscotch([Y,_], [Y]).
hopscotch([X,_,Y],[X,Y]).
hopscotch([X,_,_,X],[X,_]).


%%%%%%%%%%%%%%%%% Tests

test_hopscotch :-
  hopscotch([],[]),
  hopscotch([1],[1]),
  hopscotch([1,2],[1]),
  hopscotch([1,2,3],[1,3]),
  hopscotch([1,2,4,1],[1,4]),

test :- test_hopscotch, !.
