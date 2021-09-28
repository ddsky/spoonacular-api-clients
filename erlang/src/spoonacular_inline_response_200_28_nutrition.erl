-module(spoonacular_inline_response_200_28_nutrition).

-export([encode/1]).

-export_type([spoonacular_inline_response_200_28_nutrition/0]).

-type spoonacular_inline_response_200_28_nutrition() ::
    #{ 'nutrients' := list(),
       'caloricBreakdown' := spoonacular__recipes_parse_ingredients_nutrition_caloric_breakdown:spoonacular__recipes_parse_ingredients_nutrition_caloric_breakdown()
     }.

encode(#{ 'nutrients' := Nutrients,
          'caloricBreakdown' := CaloricBreakdown
        }) ->
    #{ 'nutrients' => Nutrients,
       'caloricBreakdown' => CaloricBreakdown
     }.
