-module(spoonacular_inline_response_200_41_measures).

-export([encode/1]).

-export_type([spoonacular_inline_response_200_41_measures/0]).

-type spoonacular_inline_response_200_41_measures() ::
    #{ 'original' := spoonacular__recipes_parse_ingredients_nutrition_weight_per_serving:spoonacular__recipes_parse_ingredients_nutrition_weight_per_serving(),
       'metric' := spoonacular__recipes_parse_ingredients_nutrition_weight_per_serving:spoonacular__recipes_parse_ingredients_nutrition_weight_per_serving(),
       'us' := spoonacular__recipes_parse_ingredients_nutrition_weight_per_serving:spoonacular__recipes_parse_ingredients_nutrition_weight_per_serving()
     }.

encode(#{ 'original' := Original,
          'metric' := Metric,
          'us' := Us
        }) ->
    #{ 'original' => Original,
       'metric' => Metric,
       'us' => Us
     }.
