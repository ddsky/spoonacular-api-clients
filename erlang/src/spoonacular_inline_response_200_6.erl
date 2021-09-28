-module(spoonacular_inline_response_200_6).

-export([encode/1]).

-export_type([spoonacular_inline_response_200_6/0]).

-type spoonacular_inline_response_200_6() ::
    #{ 'recipes' := list()
     }.

encode(#{ 'recipes' := Recipes
        }) ->
    #{ 'recipes' => Recipes
     }.
