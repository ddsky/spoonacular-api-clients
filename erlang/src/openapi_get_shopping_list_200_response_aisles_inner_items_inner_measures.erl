-module(openapi_get_shopping_list_200_response_aisles_inner_items_inner_measures).

-export([encode/1]).

-export_type([openapi_get_shopping_list_200_response_aisles_inner_items_inner_measures/0]).

-type openapi_get_shopping_list_200_response_aisles_inner_items_inner_measures() ::
    #{ 'original' := openapi_parse_ingredients_200_response_inner_nutrition_weight_per_serving:openapi_parse_ingredients_200_response_inner_nutrition_weight_per_serving(),
       'metric' := openapi_parse_ingredients_200_response_inner_nutrition_weight_per_serving:openapi_parse_ingredients_200_response_inner_nutrition_weight_per_serving(),
       'us' := openapi_parse_ingredients_200_response_inner_nutrition_weight_per_serving:openapi_parse_ingredients_200_response_inner_nutrition_weight_per_serving()
     }.

encode(#{ 'original' := Original,
          'metric' := Metric,
          'us' := Us
        }) ->
    #{ 'original' => Original,
       'metric' => Metric,
       'us' => Us
     }.
