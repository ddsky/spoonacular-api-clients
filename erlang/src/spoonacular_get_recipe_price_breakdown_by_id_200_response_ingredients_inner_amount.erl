-module(spoonacular_get_recipe_price_breakdown_by_id_200_response_ingredients_inner_amount).

-export([encode/1]).

-export_type([spoonacular_get_recipe_price_breakdown_by_id_200_response_ingredients_inner_amount/0]).

-type spoonacular_get_recipe_price_breakdown_by_id_200_response_ingredients_inner_amount() ::
    #{ 'metric' := spoonacular_get_recipe_price_breakdown_by_id_200_response_ingredients_inner_amount_metric:spoonacular_get_recipe_price_breakdown_by_id_200_response_ingredients_inner_amount_metric(),
       'us' := spoonacular_get_recipe_price_breakdown_by_id_200_response_ingredients_inner_amount_metric:spoonacular_get_recipe_price_breakdown_by_id_200_response_ingredients_inner_amount_metric()
     }.

encode(#{ 'metric' := Metric,
          'us' := Us
        }) ->
    #{ 'metric' => Metric,
       'us' => Us
     }.
