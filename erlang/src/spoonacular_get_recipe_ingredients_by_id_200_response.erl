-module(spoonacular_get_recipe_ingredients_by_id_200_response).

-export([encode/1]).

-export_type([spoonacular_get_recipe_ingredients_by_id_200_response/0]).

-type spoonacular_get_recipe_ingredients_by_id_200_response() ::
    #{ 'ingredients' := spoonacular_set:spoonacular_set()
     }.

encode(#{ 'ingredients' := Ingredients
        }) ->
    #{ 'ingredients' => Ingredients
     }.
