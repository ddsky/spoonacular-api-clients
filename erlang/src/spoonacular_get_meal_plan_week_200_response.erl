-module(spoonacular_get_meal_plan_week_200_response).

-export([encode/1]).

-export_type([spoonacular_get_meal_plan_week_200_response/0]).

-type spoonacular_get_meal_plan_week_200_response() ::
    #{ 'days' := spoonacular_set:spoonacular_set()
     }.

encode(#{ 'days' := Days
        }) ->
    #{ 'days' => Days
     }.
