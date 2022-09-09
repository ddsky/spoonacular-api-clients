-module(openapi_get_recipe_nutrition_widget_by_id_200_response_bad_inner).

-export([encode/1]).

-export_type([openapi_get_recipe_nutrition_widget_by_id_200_response_bad_inner/0]).

-type openapi_get_recipe_nutrition_widget_by_id_200_response_bad_inner() ::
    #{ 'name' := binary(),
       'amount' := binary(),
       'indented' := boolean(),
       'percentOfDailyNeeds' := integer()
     }.

encode(#{ 'name' := Name,
          'amount' := Amount,
          'indented' := Indented,
          'percentOfDailyNeeds' := PercentOfDailyNeeds
        }) ->
    #{ 'name' => Name,
       'amount' => Amount,
       'indented' => Indented,
       'percentOfDailyNeeds' => PercentOfDailyNeeds
     }.
