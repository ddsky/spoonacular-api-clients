-module(spoonacular_parse_ingredients_200_response_inner_nutrition).

-export([encode/1]).

-export_type([spoonacular_parse_ingredients_200_response_inner_nutrition/0]).

-type spoonacular_parse_ingredients_200_response_inner_nutrition() ::
    #{ 'nutrients' := spoonacular_set:spoonacular_set(),
       'properties' := spoonacular_set:spoonacular_set(),
       'flavonoids' := spoonacular_set:spoonacular_set(),
       'caloricBreakdown' := spoonacular_parse_ingredients_200_response_inner_nutrition_caloric_breakdown:spoonacular_parse_ingredients_200_response_inner_nutrition_caloric_breakdown(),
       'weightPerServing' := spoonacular_parse_ingredients_200_response_inner_nutrition_weight_per_serving:spoonacular_parse_ingredients_200_response_inner_nutrition_weight_per_serving()
     }.

encode(#{ 'nutrients' := Nutrients,
          'properties' := Properties,
          'flavonoids' := Flavonoids,
          'caloricBreakdown' := CaloricBreakdown,
          'weightPerServing' := WeightPerServing
        }) ->
    #{ 'nutrients' => Nutrients,
       'properties' => Properties,
       'flavonoids' => Flavonoids,
       'caloricBreakdown' => CaloricBreakdown,
       'weightPerServing' => WeightPerServing
     }.
