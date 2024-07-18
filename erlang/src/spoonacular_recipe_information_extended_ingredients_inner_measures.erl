-module(spoonacular_recipe_information_extended_ingredients_inner_measures).

-export([encode/1]).

-export_type([spoonacular_recipe_information_extended_ingredients_inner_measures/0]).

-type spoonacular_recipe_information_extended_ingredients_inner_measures() ::
    #{ 'metric' := spoonacular_recipe_information_extended_ingredients_inner_measures_metric:spoonacular_recipe_information_extended_ingredients_inner_measures_metric(),
       'us' := spoonacular_recipe_information_extended_ingredients_inner_measures_metric:spoonacular_recipe_information_extended_ingredients_inner_measures_metric()
     }.

encode(#{ 'metric' := Metric,
          'us' := Us
        }) ->
    #{ 'metric' => Metric,
       'us' => Us
     }.
