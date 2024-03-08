-module(spoonacular_get_shopping_list_200_response_aisles_inner_items_inner_measures).

-export([encode/1]).

-export_type([spoonacular_get_shopping_list_200_response_aisles_inner_items_inner_measures/0]).

-type spoonacular_get_shopping_list_200_response_aisles_inner_items_inner_measures() ::
    #{ 'original' := spoonacular_parse_ingredients_200_response_inner_nutrition_weight_per_serving:spoonacular_parse_ingredients_200_response_inner_nutrition_weight_per_serving(),
       'metric' := spoonacular_parse_ingredients_200_response_inner_nutrition_weight_per_serving:spoonacular_parse_ingredients_200_response_inner_nutrition_weight_per_serving(),
       'us' := spoonacular_parse_ingredients_200_response_inner_nutrition_weight_per_serving:spoonacular_parse_ingredients_200_response_inner_nutrition_weight_per_serving()
     }.

encode(#{ 'original' := Original,
          'metric' := Metric,
          'us' := Us
        }) ->
    #{ 'original' => Original,
       'metric' => Metric,
       'us' => Us
     }.
