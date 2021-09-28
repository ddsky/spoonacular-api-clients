-module(spoonacular__recipes_parse_ingredients_nutrition_nutrients).

-export([encode/1]).

-export_type([spoonacular__recipes_parse_ingredients_nutrition_nutrients/0]).

-type spoonacular__recipes_parse_ingredients_nutrition_nutrients() ::
    #{ 'name' := binary(),
       'amount' := integer(),
       'unit' := binary(),
       'percentOfDailyNeeds' := integer()
     }.

encode(#{ 'name' := Name,
          'amount' := Amount,
          'unit' := Unit,
          'percentOfDailyNeeds' := PercentOfDailyNeeds
        }) ->
    #{ 'name' => Name,
       'amount' => Amount,
       'unit' => Unit,
       'percentOfDailyNeeds' => PercentOfDailyNeeds
     }.
