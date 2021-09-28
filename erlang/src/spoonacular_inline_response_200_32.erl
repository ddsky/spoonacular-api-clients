-module(spoonacular_inline_response_200_32).

-export([encode/1]).

-export_type([spoonacular_inline_response_200_32/0]).

-type spoonacular_inline_response_200_32() ::
    #{ 'results' := list()
     }.

encode(#{ 'results' := Results
        }) ->
    #{ 'results' => Results
     }.
