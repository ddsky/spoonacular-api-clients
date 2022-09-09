-module(openapi_get_recipe_price_breakdown_by_id_200_response_ingredients_inner_amount).

-export([encode/1]).

-export_type([openapi_get_recipe_price_breakdown_by_id_200_response_ingredients_inner_amount/0]).

-type openapi_get_recipe_price_breakdown_by_id_200_response_ingredients_inner_amount() ::
    #{ 'metric' := openapi_get_recipe_price_breakdown_by_id_200_response_ingredients_inner_amount_metric:openapi_get_recipe_price_breakdown_by_id_200_response_ingredients_inner_amount_metric(),
       'us' := openapi_get_recipe_price_breakdown_by_id_200_response_ingredients_inner_amount_metric:openapi_get_recipe_price_breakdown_by_id_200_response_ingredients_inner_amount_metric()
     }.

encode(#{ 'metric' := Metric,
          'us' := Us
        }) ->
    #{ 'metric' => Metric,
       'us' => Us
     }.
