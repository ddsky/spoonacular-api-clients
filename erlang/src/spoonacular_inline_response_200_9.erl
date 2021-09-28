-module(spoonacular_inline_response_200_9).

-export([encode/1]).

-export_type([spoonacular_inline_response_200_9/0]).

-type spoonacular_inline_response_200_9() ::
    #{ 'equipment' := list()
     }.

encode(#{ 'equipment' := Equipment
        }) ->
    #{ 'equipment' => Equipment
     }.
