-module(spoonacular_get_random_recipes_200_response).

-export([encode/1]).

-export_type([spoonacular_get_random_recipes_200_response/0]).

-type spoonacular_get_random_recipes_200_response() ::
    #{ 'recipes' := spoonacular_set:spoonacular_set()
     }.

encode(#{ 'recipes' := Recipes
        }) ->
    #{ 'recipes' => Recipes
     }.
