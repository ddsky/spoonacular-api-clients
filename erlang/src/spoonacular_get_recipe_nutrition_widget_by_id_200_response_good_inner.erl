-module(spoonacular_get_recipe_nutrition_widget_by_id_200_response_good_inner).

-export([encode/1]).

-export_type([spoonacular_get_recipe_nutrition_widget_by_id_200_response_good_inner/0]).

-type spoonacular_get_recipe_nutrition_widget_by_id_200_response_good_inner() ::
    #{ 'amount' := binary(),
       'indented' := boolean(),
       'percentOfDailyNeeds' := integer(),
       'title' := binary()
     }.

encode(#{ 'amount' := Amount,
          'indented' := Indented,
          'percentOfDailyNeeds' := PercentOfDailyNeeds,
          'title' := Title
        }) ->
    #{ 'amount' => Amount,
       'indented' => Indented,
       'percentOfDailyNeeds' => PercentOfDailyNeeds,
       'title' => Title
     }.
