-module(spoonacular_get_recipe_ingredients_by_id_200_response_ingredients_inner).

-export([encode/1]).

-export_type([spoonacular_get_recipe_ingredients_by_id_200_response_ingredients_inner/0]).

-type spoonacular_get_recipe_ingredients_by_id_200_response_ingredients_inner() ::
    #{ 'amount' => spoonacular_get_recipe_price_breakdown_by_id_200_response_ingredients_inner_amount:spoonacular_get_recipe_price_breakdown_by_id_200_response_ingredients_inner_amount(),
       'image' := binary(),
       'name' := binary()
     }.

encode(#{ 'amount' := Amount,
          'image' := Image,
          'name' := Name
        }) ->
    #{ 'amount' => Amount,
       'image' => Image,
       'name' => Name
     }.
