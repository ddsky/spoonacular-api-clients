-module(spoonacular__recipes_parse_ingredients_nutrition_caloric_breakdown).

-export([encode/1]).

-export_type([spoonacular__recipes_parse_ingredients_nutrition_caloric_breakdown/0]).

-type spoonacular__recipes_parse_ingredients_nutrition_caloric_breakdown() ::
    #{ 'percentProtein' := integer(),
       'percentFat' := integer(),
       'percentCarbs' := integer()
     }.

encode(#{ 'percentProtein' := PercentProtein,
          'percentFat' := PercentFat,
          'percentCarbs' := PercentCarbs
        }) ->
    #{ 'percentProtein' => PercentProtein,
       'percentFat' => PercentFat,
       'percentCarbs' => PercentCarbs
     }.
