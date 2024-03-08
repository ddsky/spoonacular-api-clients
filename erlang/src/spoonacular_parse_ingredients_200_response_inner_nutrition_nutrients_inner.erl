-module(spoonacular_parse_ingredients_200_response_inner_nutrition_nutrients_inner).

-export([encode/1]).

-export_type([spoonacular_parse_ingredients_200_response_inner_nutrition_nutrients_inner/0]).

-type spoonacular_parse_ingredients_200_response_inner_nutrition_nutrients_inner() ::
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
