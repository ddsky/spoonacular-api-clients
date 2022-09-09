-module(openapi_get_meal_plan_week_200_response_days_inner_nutrition_summary_nutrients_inner).

-export([encode/1]).

-export_type([openapi_get_meal_plan_week_200_response_days_inner_nutrition_summary_nutrients_inner/0]).

-type openapi_get_meal_plan_week_200_response_days_inner_nutrition_summary_nutrients_inner() ::
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
