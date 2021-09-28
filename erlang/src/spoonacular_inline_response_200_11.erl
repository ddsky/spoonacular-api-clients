-module(spoonacular_inline_response_200_11).

-export([encode/1]).

-export_type([spoonacular_inline_response_200_11/0]).

-type spoonacular_inline_response_200_11() ::
    #{ 'ingredients' := list()
     }.

encode(#{ 'ingredients' := Ingredients
        }) ->
    #{ 'ingredients' => Ingredients
     }.
