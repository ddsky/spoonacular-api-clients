-module(openapi_get_recipe_nutrition_widget_by_id_200_response_good_inner).

-export([encode/1]).

-export_type([openapi_get_recipe_nutrition_widget_by_id_200_response_good_inner/0]).

-type openapi_get_recipe_nutrition_widget_by_id_200_response_good_inner() ::
    #{ 'amount' := binary(),
       'indented' := boolean(),
       'percentOfDailyNeeds' := integer(),
       'name' := binary()
     }.

encode(#{ 'amount' := Amount,
          'indented' := Indented,
          'percentOfDailyNeeds' := PercentOfDailyNeeds,
          'name' := Name
        }) ->
    #{ 'amount' => Amount,
       'indented' => Indented,
       'percentOfDailyNeeds' => PercentOfDailyNeeds,
       'name' => Name
     }.
