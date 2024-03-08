-module(spoonacular_get_recipe_price_breakdown_by_id_200_response_ingredients_inner_amount_metric).

-export([encode/1]).

-export_type([spoonacular_get_recipe_price_breakdown_by_id_200_response_ingredients_inner_amount_metric/0]).

-type spoonacular_get_recipe_price_breakdown_by_id_200_response_ingredients_inner_amount_metric() ::
    #{ 'unit' := binary(),
       'value' := integer()
     }.

encode(#{ 'unit' := Unit,
          'value' := Value
        }) ->
    #{ 'unit' => Unit,
       'value' => Value
     }.
