-module(openapi_get_recipe_information_200_response_extended_ingredients_inner_measures).

-export([encode/1]).

-export_type([openapi_get_recipe_information_200_response_extended_ingredients_inner_measures/0]).

-type openapi_get_recipe_information_200_response_extended_ingredients_inner_measures() ::
    #{ 'metric' := openapi_get_recipe_information_200_response_extended_ingredients_inner_measures_metric:openapi_get_recipe_information_200_response_extended_ingredients_inner_measures_metric(),
       'us' := openapi_get_recipe_information_200_response_extended_ingredients_inner_measures_metric:openapi_get_recipe_information_200_response_extended_ingredients_inner_measures_metric()
     }.

encode(#{ 'metric' := Metric,
          'us' := Us
        }) ->
    #{ 'metric' => Metric,
       'us' => Us
     }.
