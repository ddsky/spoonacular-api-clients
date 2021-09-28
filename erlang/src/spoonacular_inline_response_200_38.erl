-module(spoonacular_inline_response_200_38).

-export([encode/1]).

-export_type([spoonacular_inline_response_200_38/0]).

-type spoonacular_inline_response_200_38() ::
    #{ 'days' := list()
     }.

encode(#{ 'days' := Days
        }) ->
    #{ 'days' => Days
     }.
