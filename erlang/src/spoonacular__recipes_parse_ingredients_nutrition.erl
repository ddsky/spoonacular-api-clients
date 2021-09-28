-module(spoonacular__recipes_parse_ingredients_nutrition).

-export([encode/1]).

-export_type([spoonacular__recipes_parse_ingredients_nutrition/0]).

-type spoonacular__recipes_parse_ingredients_nutrition() ::
    #{ 'nutrients' := list(),
       'properties' := list(),
       'flavonoids' := list(),
       'caloricBreakdown' := spoonacular__recipes_parse_ingredients_nutrition_caloric_breakdown:spoonacular__recipes_parse_ingredients_nutrition_caloric_breakdown(),
       'weightPerServing' := spoonacular__recipes_parse_ingredients_nutrition_weight_per_serving:spoonacular__recipes_parse_ingredients_nutrition_weight_per_serving()
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
