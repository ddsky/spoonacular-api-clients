-module(spoonacular_get_recipe_information_200_response_extended_ingredients_inner_measures).

-export([encode/1]).

-export_type([spoonacular_get_recipe_information_200_response_extended_ingredients_inner_measures/0]).

-type spoonacular_get_recipe_information_200_response_extended_ingredients_inner_measures() ::
    #{ 'metric' := spoonacular_get_recipe_information_200_response_extended_ingredients_inner_measures_metric:spoonacular_get_recipe_information_200_response_extended_ingredients_inner_measures_metric(),
       'us' := spoonacular_get_recipe_information_200_response_extended_ingredients_inner_measures_metric:spoonacular_get_recipe_information_200_response_extended_ingredients_inner_measures_metric()
     }.

encode(#{ 'metric' := Metric,
          'us' := Us
        }) ->
    #{ 'metric' => Metric,
       'us' => Us
     }.
