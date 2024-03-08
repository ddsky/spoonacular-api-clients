-module(spoonacular_get_ingredient_information_200_response_nutrition).

-export([encode/1]).

-export_type([spoonacular_get_ingredient_information_200_response_nutrition/0]).

-type spoonacular_get_ingredient_information_200_response_nutrition() ::
    #{ 'nutrients' := spoonacular_set:spoonacular_set(),
       'properties' := spoonacular_set:spoonacular_set(),
       'caloricBreakdown' := spoonacular_parse_ingredients_200_response_inner_nutrition_caloric_breakdown:spoonacular_parse_ingredients_200_response_inner_nutrition_caloric_breakdown(),
       'weightPerServing' := spoonacular_parse_ingredients_200_response_inner_nutrition_weight_per_serving:spoonacular_parse_ingredients_200_response_inner_nutrition_weight_per_serving()
     }.

encode(#{ 'nutrients' := Nutrients,
          'properties' := Properties,
          'caloricBreakdown' := CaloricBreakdown,
          'weightPerServing' := WeightPerServing
        }) ->
    #{ 'nutrients' => Nutrients,
       'properties' => Properties,
       'caloricBreakdown' => CaloricBreakdown,
       'weightPerServing' => WeightPerServing
     }.
