-module(spoonacular_get_recipe_nutrition_widget_by_id_200_response_bad_inner).

-export([encode/1]).

-export_type([spoonacular_get_recipe_nutrition_widget_by_id_200_response_bad_inner/0]).

-type spoonacular_get_recipe_nutrition_widget_by_id_200_response_bad_inner() ::
    #{ 'title' := binary(),
       'amount' := binary(),
       'indented' := boolean(),
       'percentOfDailyNeeds' := integer()
     }.

encode(#{ 'title' := Title,
          'amount' := Amount,
          'indented' := Indented,
          'percentOfDailyNeeds' := PercentOfDailyNeeds
        }) ->
    #{ 'title' => Title,
       'amount' => Amount,
       'indented' => Indented,
       'percentOfDailyNeeds' => PercentOfDailyNeeds
     }.
