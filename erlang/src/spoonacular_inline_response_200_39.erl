-module(spoonacular_inline_response_200_39).

-export([encode/1]).

-export_type([spoonacular_inline_response_200_39/0]).

-type spoonacular_inline_response_200_39() ::
    #{ 'templates' := list()
     }.

encode(#{ 'templates' := Templates
        }) ->
    #{ 'templates' => Templates
     }.
