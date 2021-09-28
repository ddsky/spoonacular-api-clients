-module(spoonacular_inline_response_200_38_nutrition_summary_nutrients).

-export([encode/1]).

-export_type([spoonacular_inline_response_200_38_nutrition_summary_nutrients/0]).

-type spoonacular_inline_response_200_38_nutrition_summary_nutrients() ::
    #{ 'name' := binary(),
       'amount' := integer(),
       'unit' := binary(),
       'percentDailyNeeds' := integer()
     }.

encode(#{ 'name' := Name,
          'amount' := Amount,
          'unit' := Unit,
          'percentDailyNeeds' := PercentDailyNeeds
        }) ->
    #{ 'name' => Name,
       'amount' => Amount,
       'unit' => Unit,
       'percentDailyNeeds' => PercentDailyNeeds
     }.
