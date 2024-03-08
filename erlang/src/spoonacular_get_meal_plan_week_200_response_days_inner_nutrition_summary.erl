-module(spoonacular_get_meal_plan_week_200_response_days_inner_nutrition_summary).

-export([encode/1]).

-export_type([spoonacular_get_meal_plan_week_200_response_days_inner_nutrition_summary/0]).

-type spoonacular_get_meal_plan_week_200_response_days_inner_nutrition_summary() ::
    #{ 'nutrients' := spoonacular_set:spoonacular_set()
     }.

encode(#{ 'nutrients' := Nutrients
        }) ->
    #{ 'nutrients' => Nutrients
     }.
