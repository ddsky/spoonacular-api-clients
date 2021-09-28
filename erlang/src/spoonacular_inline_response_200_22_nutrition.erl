-module(spoonacular_inline_response_200_22_nutrition).

-export([encode/1]).

-export_type([spoonacular_inline_response_200_22_nutrition/0]).

-type spoonacular_inline_response_200_22_nutrition() ::
    #{ 'nutrients' := list(),
       'properties' := list(),
       'caloricBreakdown' := spoonacular__recipes_parse_ingredients_nutrition_caloric_breakdown:spoonacular__recipes_parse_ingredients_nutrition_caloric_breakdown(),
       'weightPerServing' := spoonacular__recipes_parse_ingredients_nutrition_weight_per_serving:spoonacular__recipes_parse_ingredients_nutrition_weight_per_serving()
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
